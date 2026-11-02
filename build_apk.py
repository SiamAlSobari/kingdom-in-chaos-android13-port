import hashlib
import os
import re
import shutil
import subprocess
import zipfile

REPO_ROOT = r"C:\Koding\rea\kingdom"
ORIGINAL_APK = os.path.join(REPO_ROOT, "kingdom-in-chaos-1-0-5.apk")
DECOMPILED_DIR = os.path.join(REPO_ROOT, "kingdom-in-chaos-decompiled")
TOOLS_DIR = os.path.join(REPO_ROOT, "tools")
APKTOOL_JAR = os.path.join(TOOLS_DIR, "apktool.jar")
JAVA_EXE = r"C:\Program Files\Android\Android Studio\jbr\bin\java.exe"
KEYTOOL_EXE = r"C:\Program Files\Android\Android Studio\jbr\bin\keytool.exe"
SDK_BUILD_TOOLS = r"C:\Users\Colorful\AppData\Local\Android\Sdk\build-tools\36.1.0"
ZIPALIGN_EXE = os.path.join(SDK_BUILD_TOOLS, "zipalign.exe")
APKSIGNER_BAT = os.path.join(SDK_BUILD_TOOLS, "apksigner.bat")

UNSIGNED_APK = os.path.join(TOOLS_DIR, "unsigned.apk")
ALIGNED_APK = os.path.join(TOOLS_DIR, "aligned.apk")
KEYSTORE_PATH = os.path.join(TOOLS_DIR, "release.keystore")
OUTPUT_APK = os.path.join(REPO_ROOT, "kingdom-in-chaos-1-0-5-r3.apk")


def ensure_keystore():
    os.makedirs(TOOLS_DIR, exist_ok=True)
    if not os.path.exists(KEYSTORE_PATH):
        print("Generating signing keystore...")
        subprocess.run(
            [
                KEYTOOL_EXE,
                "-genkeypair",
                "-v",
                "-keystore",
                KEYSTORE_PATH,
                "-alias",
                "kingdomchaos",
                "-keyalg",
                "RSA",
                "-keysize",
                "2048",
                "-validity",
                "10000",
                "-storepass",
                "android123",
                "-keypass",
                "android123",
                "-dname",
                "CN=KingdomInChaosPort, OU=Android13Compat, O=Community, L=ID, S=ID, C=ID",
            ],
            check=True,
        )


def patch_apktool_yml():
    yml_path = os.path.join(DECOMPILED_DIR, "apktool.yml")
    with open(yml_path, "r", encoding="utf-8") as f:
        text = f.read()
    text = re.sub(r"targetSdkVersion:\s*\d+", "targetSdkVersion: 28", text)
    with open(yml_path, "w", encoding="utf-8", newline="\n") as f:
        f.write(text)
    print("Patched apktool.yml to targetSdkVersion 28")


def patch_manifest():
    manifest_path = os.path.join(DECOMPILED_DIR, "AndroidManifest.xml")
    with open(manifest_path, "r", encoding="utf-8") as f:
        xml = f.read().replace("\r\n", "\n")

    if 'platformBuildVersionCode=' not in xml:
        xml = xml.replace(
            '<manifest ',
            '<manifest platformBuildVersionCode="28" platformBuildVersionName="9" ',
        )
    else:
        xml = re.sub(r'platformBuildVersionCode="\d+"', 'platformBuildVersionCode="28"', xml)
        xml = re.sub(r'platformBuildVersionName="[^"]+"', 'platformBuildVersionName="9"', xml)

    # Remove dangerous READ_PHONE_STATE permission
    xml = re.sub(r'\s*<uses-permission android:name="android\.permission\.READ_PHONE_STATE"\s*/>', '', xml)

    # Add legacy external storage and cleartext traffic
    if 'android:requestLegacyExternalStorage="true"' not in xml:
        xml = xml.replace(
            '<application ',
            '<application android:requestLegacyExternalStorage="true" android:usesCleartextTraffic="true" ',
        )

    # Ensure GameActivity is explicitly exported
    if 'android:name="com.droidhang.ph.GameActivity" android:exported="true"' not in xml:
        xml = xml.replace(
            'android:name="com.droidhang.ph.GameActivity"',
            'android:name="com.droidhang.ph.GameActivity" android:exported="true"',
        )

    # Add org.apache.http.legacy library
    if 'org.apache.http.legacy' not in xml:
        xml = xml.replace(
            '</activity>\n        <meta-data',
            '</activity>\n        <uses-library android:name="org.apache.http.legacy" android:required="false"/>\n        <meta-data',
        )

    # Disable defunct receivers and services
    xml = xml.replace(
        '<service android:exported="false" android:name="com.vungle.publisher.VungleService"/>',
        '<service android:enabled="false" android:exported="false" android:name="com.vungle.publisher.VungleService"/>',
    )
    xml = xml.replace(
        '<receiver android:exported="true" android:name="com.sponsorpay.advertiser.InstallReferrerReceiver">',
        '<receiver android:enabled="false" android:exported="false" android:name="com.sponsorpay.advertiser.InstallReferrerReceiver">',
    )
    xml = xml.replace(
        '<receiver android:exported="true" android:name="com.hz.game.be.FyberReceiver">',
        '<receiver android:enabled="false" android:exported="false" android:name="com.hz.game.be.FyberReceiver">',
    )

    with open(manifest_path, "w", encoding="utf-8", newline="\n") as f:
        f.write(xml)
    print("Patched AndroidManifest.xml for Android 9-15 compatibility")


def replace_smali_method(smali_text: str, method_header: str, new_body: str) -> str:
    pattern = re.compile(
        r"(" + re.escape(method_header) + r"\n)(.*?)(\n\.end method)",
        re.DOTALL,
    )
    replaced, count = pattern.subn(r"\1" + new_body + r"\3", smali_text, count=1)
    assert count == 1, f"Failed to replace method: {method_header}"
    return replaced


def patch_native_libraries():
    """Removes obsolete libraries and applies all native C++ patches directly from clean binary baseline."""
    lib_dir = os.path.join(DECOMPILED_DIR, "lib")
    armeabi_dir = os.path.join(lib_dir, "armeabi")
    v7a_dir = os.path.join(lib_dir, "armeabi-v7a")
    os.makedirs(armeabi_dir, exist_ok=True)
    os.makedirs(v7a_dir, exist_ok=True)

    # Remove obsolete libraries with DT_TEXTREL or unwanted crash hooks
    for bad_lib in ["libbspatch.so", "libgetuiext.so", "libNativeCrash.so"]:
        for arch_dir in [armeabi_dir, v7a_dir]:
            target = os.path.join(arch_dir, bad_lib)
            if os.path.exists(target):
                os.remove(target)
                print(f"Removed obsolete library: {target}")

    # Extract pristine original libgame.so from original APK to prevent cumulative patch corruption
    with zipfile.ZipFile(ORIGINAL_APK, "r") as z:
        clean_so = z.read("lib/armeabi/libgame.so")

    assert (
        hashlib.sha256(clean_so).hexdigest()
        == "37c30684b147de8dfc840a0e71020ade7bd3cd236b6cba208a33fb42c9a67969"
    ), "Original libgame.so sha256 mismatch!"
    data = bytearray(clean_so)

    patch_map = {
        # 1. Native signature & telemetry bypass
        0x0025DDD4: bytes.fromhex("7047" + "c046" * 9),  # verify(void): bx lr + 9 nops (clean return)
        0x003DEB18: b"\x70\x47",  # DHHttpHelper::login (Thumb): bx lr
        0x0062E40C: b"\x1e\xff\x2f\xe1",  # MobClickCpp::startWithAppkey (ARM): bx lr
        0x0062F1D0: b"\x1e\xff\x2f\xe1",  # MobClickCpp::updateOnlineConfig (ARM): bx lr
        0x0062F028: b"\x1e\xff\x2f\xe1",  # MobClickCpp::checkUpdate (ARM): bx lr
        0x0062E5C8: b"\x1e\xff\x2f\xe1",  # MobClickCpp::applicationDidEnterBackground (ARM): bx lr
        0x0062E57C: b"\x1e\xff\x2f\xe1",  # MobClickCpp::applicationWillEnterForeground (ARM): bx lr
        # 2. TestinAgentHelper native crash & telemetry stubs (bx lr)
        0x00441CC0: b"\x70\x47",  # TestinAgentHelper::initTestinAgent(char const*, char const*)
        0x00441824: b"\x70\x47",  # TestinAgentHelper::initTestinAgent(void)
        0x00441F04: b"\x70\x47",  # TestinAgentHelper::setUserInfo(char const*)
        0x00441CE0: b"\x70\x47",  # TestinAgentHelper::reportException(int, char const*, char const*)
        0x00441DB0: b"\x70\x47",  # TestinAgentHelper::setLocalDebug(bool)
        0x00441E34: b"\x70\x47",  # TestinAgentHelper::callTestinAgentMethod(char const*, char const*, char const*)
        0x00441EE8: b"\x70\x47",  # TestinAgentHelper::leaveBreadcrumb(char const*)
        0x00441F20: b"\x70\x47",  # TestinAgentHelper::callTestinAgentMethod(char const*, char const*, char const*, char const*)
        # 3. BEUtil::nOnWindowFocusChanged crash prevention (Thumb: bx lr)
        0x003DA62C: b"\x70\x47",  # BEUtil::nOnWindowFocusChanged(int)
        # 4. Unlimited stamina (5/5 clean UI) & zero food cost
        0x003053A0: bytes.fromhex("002802d005220260002902d000220a607047"),  # BalanceLifeStatus
        0x003055FC: b"\x01\x20\x70\x47",  # DecreaseLife
        # 5. Full hero roster unlocked
        0x002E17DC: b"\x01\x20\x70\x47",  # UserDataManager::isHeroUnlock -> true (1)
        0x0038C03C: b"\x70\x47",  # UITeamLayer::showLocks -> bx lr
        0x002B9AD4: b"\x01\x20\x70\x47",  # PriceManager::payUnlockHero -> true (1)
        # 6. PreloadLayer::init dhlogo null pointer crash prevention (Thumb)
        0x00271546: b"\xc7\xe0",  # b #0x2716d8: branch directly to scheduleUpdate/sound preload
        0x0027173E: bytes.fromhex("0028cad0"),  # cmp r0, #0; beq #0x2716d8: safeguard against null sprite
        # 7. DHEncrypt key initialization & AndroidUtil bypass
        0x0047B4FC: bytes.fromhex("048d2200"),  # _GLOBAL__sub_I_DHEncrypt: point key string to "e3642530816912682978ad8c491ccbe7"
        0x003D8F66: bytes.fromhex("0ce0"),  # AndroidUtil::init: b #0x3d8f82 to skip broken key generation and keep valid key
        # 8. CCTexture2D::hasPremultipliedAlpha null guard trampoline (Thumb)
        0x00484472: bytes.fromhex("5df6b5b900bf"),  # b.w #0x2e17e0; nop (trampoline branch)
        0x002E17E0: bytes.fromhex("002801d0383000787047"),  # cmp r0, #0; beq 0x2e17e8; adds r0, #0x38; ldrb r0, [r0]; bx lr
    }

    for off, patch in patch_map.items():
        data[off : off + len(patch)] = patch

    # Write patched libgame.so to both armeabi and armeabi-v7a
    for arch_dir in [armeabi_dir, v7a_dir]:
        target = os.path.join(arch_dir, "libgame.so")
        with open(target, "wb") as f:
            f.write(data)
        print(f"Wrote patched libgame.so to {target}")


def patch_floatmath():
    """Replaces obsolete Android FloatMath.ceil calls with Math.ceil to prevent NoSuchMethodError on Android 6.0+."""
    bitmap_smali = os.path.join(
        DECOMPILED_DIR, "smali", "org", "cocos2dx", "lib", "Cocos2dxBitmap.smali"
    )
    with open(bitmap_smali, "r", encoding="utf-8") as f:
        content = f.read()

    helper_method = """
.method private static ceilFloat(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
"""
    if "ceilFloat(F)F" not in content:
        content += helper_method

    content = content.replace(
        "invoke-static {v9}, Landroid/util/FloatMath;->ceil(F)F",
        "invoke-static {v9}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->ceilFloat(F)F",
    )
    content = content.replace(
        "invoke-static {v6}, Landroid/util/FloatMath;->ceil(F)F",
        "invoke-static {v6}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->ceilFloat(F)F",
    )
    content = content.replace(
        "invoke-static {v14}, Landroid/util/FloatMath;->ceil(F)F",
        "invoke-static {v14}, Lorg/cocos2dx/lib/Cocos2dxBitmap;->ceilFloat(F)F",
    )

    with open(bitmap_smali, "w", encoding="utf-8", newline="\n") as f:
        f.write(content)
    print("Patched FloatMath in Cocos2dxBitmap.smali")


def patch_renderer_lifecycle():
    """Guards Cocos2dxRenderer against premature pause/resume/draw/touch/key calls before nativeInit completes."""
    renderer_smali = os.path.join(
        DECOMPILED_DIR, "smali", "org", "cocos2dx", "lib", "Cocos2dxRenderer.smali"
    )
    with open(renderer_smali, "r", encoding="utf-8") as f:
        content = f.read()

    # Add sNativeInitDone field
    if ".field public static sNativeInitDone:Z" not in content:
        content = content.replace(
            "# static fields",
            "# static fields\n.field public static sNativeInitDone:Z",
        )

    # Set sNativeInitDone = true in nativeStart right after nativeInit
    if "sput-boolean v2, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z" not in content:
        target = "invoke-static {p1, p2, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInit(IILandroid/content/Context;Landroid/opengl/GLSurfaceView;)V\n\n    .line 97\n    return-void"
        replacement = (
            "invoke-static {p1, p2, v2, v3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInit(IILandroid/content/Context;Landroid/opengl/GLSurfaceView;)V\n\n"
            "    const/4 v2, 0x1\n\n"
            "    sput-boolean v2, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z\n\n"
            "    .line 97\n    return-void"
        )
        content = content.replace(target, replacement)

    # Guard handleOnPause
    pause_orig = """.method public handleOnPause()V
    .locals 0

    .prologue
    .line 181
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnPause()V

    .line 182
    return-void
.end method"""
    pause_patched = """.method public handleOnPause()V
    .locals 1

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_native_pause_ok

    return-void

    :cond_native_pause_ok
    .line 181
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnPause()V

    .line 182
    return-void
.end method"""
    if pause_orig in content:
        content = content.replace(pause_orig, pause_patched)

    # Guard handleOnResume
    resume_orig = """.method public handleOnResume()V
    .locals 0

    .prologue
    .line 185
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnResume()V

    .line 186
    return-void
.end method"""
    resume_patched = """.method public handleOnResume()V
    .locals 1

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_native_resume_ok

    return-void

    :cond_native_resume_ok
    .line 185
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnResume()V

    .line 186
    return-void
.end method"""
    if resume_orig in content:
        content = content.replace(resume_orig, resume_patched)

    # Guard onDrawFrame
    draw_orig = """.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 127"""
    draw_patched = """.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    sget-boolean v4, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v4, :cond_native_draw_ok

    return-void

    :cond_native_draw_ok
    .line 127"""
    if draw_orig in content:
        content = content.replace(draw_orig, draw_patched)

    # Guard touch and key events
    content = replace_smali_method(
        content,
        ".method public handleActionDown(IFF)V",
        """    .locals 1
    .param p1, "pID"    # I
    .param p2, "pX"    # F
    .param p3, "pY"    # F

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesBegin(IFF)V

    return-void""",
    )
    content = replace_smali_method(
        content,
        ".method public handleActionUp(IFF)V",
        """    .locals 1
    .param p1, "pID"    # I
    .param p2, "pX"    # F
    .param p3, "pY"    # F

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesEnd(IFF)V

    return-void""",
    )
    content = replace_smali_method(
        content,
        ".method public handleActionMove([I[F[F)V",
        """    .locals 1
    .param p1, "pIDs"    # [I
    .param p2, "pXs"    # [F
    .param p3, "pYs"    # [F

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesMove([I[F[F)V

    return-void""",
    )
    content = replace_smali_method(
        content,
        ".method public handleActionCancel([I[F[F)V",
        """    .locals 1
    .param p1, "pIDs"    # [I
    .param p2, "pXs"    # [F
    .param p3, "pYs"    # [F

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesCancel([I[F[F)V

    return-void""",
    )
    content = replace_smali_method(
        content,
        ".method public handleKeyDown(I)V",
        """    .locals 1
    .param p1, "pKeyCode"    # I

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeKeyDown(I)Z

    return-void""",
    )

    with open(renderer_smali, "w", encoding="utf-8", newline="\n") as f:
        f.write(content)
    print("Patched Cocos2dxRenderer lifecycle guards")


def patch_signature_spoof():
    """Spoofs signature check in AndroidUtil.smali to return original APK MD5."""
    android_util_smali = os.path.join(
        DECOMPILED_DIR, "smali", "com", "wwcd", "util", "AndroidUtil.smali"
    )
    with open(android_util_smali, "r", encoding="utf-8") as f:
        text = f.read()

    sig_method_pattern = re.compile(
        r"\.method public static getSignatureMd5\(Landroid/content/Context;\)Ljava/lang/String;.*?"
        r"\.end method",
        re.DOTALL,
    )
    spoofed_sig = """.method public static getSignatureMd5(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "e3642530816912682978ad8c491ccbe7"

    return-object v0
.end method"""
    text = sig_method_pattern.sub(spoofed_sig, text)
    with open(android_util_smali, "w", encoding="utf-8", newline="\n") as f:
        f.write(text)
    print("Patched AndroidUtil.getSignatureMd5 with original APK MD5")


def patch_be_util():
    """Guards window focus change race condition and stubs dead ad/rating functions in BEUtil."""
    be_util_path = os.path.join(
        DECOMPILED_DIR, "smali", "com", "hz", "game", "be", "util", "BEUtil.smali"
    )
    with open(be_util_path, "r", encoding="utf-8") as f:
        be_smali = f.read().replace("\r\n", "\n")

    # Correct package directory path for preferences
    be_smali = be_smali.replace("com.hz.game.be", "com.droidhang.zhanshen")

    # Stub dead SDK/Ad calls
    be_smali = replace_smali_method(
        be_smali,
        ".method public static onRated()V",
        "    .locals 0\n    return-void",
    )
    be_smali = replace_smali_method(
        be_smali,
        ".method public static isVideoAdAvailable()I",
        "    .locals 1\n    const/4 v0, 0x0\n    return v0",
    )
    be_smali = replace_smali_method(
        be_smali,
        ".method public static playVideoAd()V",
        "    .locals 0\n    return-void",
    )
    be_smali = replace_smali_method(
        be_smali,
        ".method public static openOfferWall()V",
        "    .locals 0\n    return-void",
    )
    be_smali = replace_smali_method(
        be_smali,
        ".method public static onWindowFocusChanged(ILandroid/opengl/GLSurfaceView;)V",
        """    .locals 2
    .param p0, "value"    # I
    .param p1, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/hz/game/be/util/BEUtil;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v0, :cond_1

    sput-object p1, Lcom/hz/game/be/util/BEUtil;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    :cond_1
    sget-object v0, Lcom/hz/game/be/util/BEUtil;->_glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/hz/game/be/util/BEUtil$8;

    invoke-direct {v1, p0}, Lcom/hz/game/be/util/BEUtil$8;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_2
    return-void""",
    )
    with open(be_util_path, "w", encoding="utf-8", newline="\n") as f:
        f.write(be_smali)

    # Guard BEUtil$8.smali (the focus changed runnable)
    be8_path = os.path.join(
        DECOMPILED_DIR, "smali", "com", "hz", "game", "be", "util", "BEUtil$8.smali"
    )
    with open(be8_path, "r", encoding="utf-8") as f:
        be8 = f.read().replace("\r\n", "\n")

    be8 = replace_smali_method(
        be8,
        ".method public run()V",
        """    .locals 1

    .prologue
    sget-boolean v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sNativeInitDone:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/hz/game/be/util/BEUtil$8;->val$value:I

    invoke-static {v0}, Lcom/hz/game/be/util/BEUtil;->nOnWindowFocusChanged(I)V

    return-void""",
    )
    with open(be8_path, "w", encoding="utf-8", newline="\n") as f:
        f.write(be8)
    print("Patched BEUtil.smali and BEUtil$8.smali lifecycle focus guards")


def patch_game_activity():
    """Neutralizes obsolete and crash-inducing 2013-era SDK calls in GameActivity."""
    game_act_path = os.path.join(
        DECOMPILED_DIR, "smali", "com", "droidhang", "ph", "GameActivity.smali"
    )
    with open(game_act_path, "r", encoding="utf-8") as f:
        ga = f.read().replace("\r\n", "\n")

    lines_to_neutralize = [
        "invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->updateOnlineConfig(Landroid/content/Context;)V",
        "invoke-static {p0, v0, v1}, Lcom/tapjoy/TapjoyConnect;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z",
        "invoke-static {p0, p0, p0}, Lcom/droidhang/game/DHGames;->init(Landroid/app/Activity;Lcom/droidhang/game/ad/IAdId;Lcom/droidhang/game/ad/video/VideoAdCallback;)V",
        "invoke-static {p0, v0}, Lcom/droidhang/crosspromotion/CrossPromotionUtil;->init(Landroid/app/Activity;Landroid/widget/FrameLayout;)V",
        "invoke-virtual {v0, v1, v2, p0, v3}, Lcom/droidhang/pay/DHGooglePaymentManager;->init(Ljava/lang/String;ILandroid/app/Activity;Landroid/opengl/GLSurfaceView;)V",
        "invoke-static {p0, v0}, Lcom/hz/game/be/util/AdMgr;->init(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V",
        "invoke-static {p0, v4, v4}, Lcom/hz/game/be/util/AdMgr;->enable(Landroid/app/Activity;II)V",
        "invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnect;->appPause()V",
        "invoke-virtual {v1, p0}, Lcom/tapjoy/TapjoyConnect;->getTapPoints(Lcom/tapjoy/TapjoyNotifier;)V",
        "invoke-virtual {v1}, Lcom/tapjoy/TapjoyConnect;->appResume()V",
        "invoke-static {v1, v2, v3, p0}, Lcom/sponsorpay/SponsorPay;->start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/String;",
        "invoke-static {}, Lcom/hz/game/be/util/BEUtil;->onRated()V",
        "invoke-virtual {v0, p2, p0}, Lcom/tapjoy/TapjoyConnect;->spendTapPoints(ILcom/tapjoy/TapjoySpendPointsNotifier;)V",
    ]
    for target in lines_to_neutralize:
        ga = ga.replace(target, "# " + target.replace("->", "->noop_"))

    with open(game_act_path, "w", encoding="utf-8", newline="\n") as f:
        f.write(ga)
    print("Patched GameActivity.smali to neutralize obsolete SDK calls")


def patch_testin_agent():
    """Completely neutralizes TestinAgent so it never initializes Breakpad or kills process on modern Android."""
    testin_path = os.path.join(
        DECOMPILED_DIR, "smali", "com", "testin", "agent", "TestinAgent.smali"
    )
    with open(testin_path, "r", encoding="utf-8") as f:
        testin = f.read().replace("\r\n", "\n")

    void_stub = "    .locals 0\n    return-void"
    bool_false_stub = "    .locals 1\n    const/4 v0, 0x0\n    return v0"

    testin = replace_smali_method(
        testin,
        ".method public static init(Landroid/content/Context;)V",
        void_stub,
    )
    testin = replace_smali_method(
        testin,
        ".method public static init(Landroid/content/Context;Ljava/lang/String;)V",
        void_stub,
    )
    testin = replace_smali_method(
        testin,
        ".method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V",
        void_stub,
    )
    testin = replace_smali_method(
        testin,
        ".method public static init(Lcom/testin/agent/TestinAgentConfig;)V",
        void_stub,
    )
    testin = replace_smali_method(
        testin,
        ".method private static start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/testin/agent/TestinAgentConfig;)V",
        void_stub,
    )
    testin = replace_smali_method(
        testin,
        ".method private static isOK()Z",
        bool_false_stub,
    )
    testin = replace_smali_method(
        testin,
        ".method public static declared-synchronized uploadException(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V",
        void_stub,
    )
    testin = replace_smali_method(
        testin,
        ".method private static notifyNativeCrashed(ILjava/lang/String;Ljava/lang/String;)V",
        void_stub,
    )
    testin = replace_smali_method(
        testin,
        ".method private static declared-synchronized reportCustomizedException(ILjava/lang/String;Ljava/lang/String;)V",
        void_stub,
    )
    with open(testin_path, "w", encoding="utf-8", newline="\n") as f:
        f.write(testin)

    # Also stub com/testin/agent/e/b.smali (dynamic library loader)
    b_path = os.path.join(
        DECOMPILED_DIR, "smali", "com", "testin", "agent", "e", "b.smali"
    )
    with open(b_path, "r", encoding="utf-8") as f:
        b_smali = f.read().replace("\r\n", "\n")

    b_smali = replace_smali_method(
        b_smali,
        ".method public static a(Landroid/content/Context;)Z",
        bool_false_stub,
    )
    b_smali = replace_smali_method(
        b_smali,
        ".method public static b(Landroid/content/Context;)Z",
        bool_false_stub,
    )
    with open(b_path, "w", encoding="utf-8", newline="\n") as f:
        f.write(b_smali)
    print("Patched TestinAgent.smali and com/testin/agent/e/b.smali")


def patch_google_billing():
    """Disables defunct Google In-App Billing v3 service to prevent startup SQLite & IPC crashes."""
    pay_path = os.path.join(
        DECOMPILED_DIR, "smali", "com", "droidhang", "pay", "DHGooglePaymentManager.smali"
    )
    with open(pay_path, "r", encoding="utf-8") as f:
        pay = f.read().replace("\r\n", "\n")

    pay = pay.replace(
        "invoke-direct {p0}, Lcom/droidhang/pay/DHGooglePaymentManager;->initPurchase()V",
        "const/4 v0, 0x0\n    iput-boolean v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->supportPurchase:Z",
    )

    bad_log_error = """    :cond_0
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mHelper:Lcom/droidhang/pay/util/IabHelper;

    const-string v1, "supportPurchase false"

    invoke-virtual {v0, v1}, Lcom/droidhang/pay/util/IabHelper;->logError(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Lcom/droidhang/pay/DHGooglePaymentManager;->alertBillingNotSupport()V"""

    good_log_error = """    :cond_0
    invoke-virtual {p0}, Lcom/droidhang/pay/DHGooglePaymentManager;->alertBillingNotSupport()V"""
    pay = pay.replace(bad_log_error, good_log_error)

    # Guard handleActivityResult
    pay = replace_smali_method(
        pay,
        ".method public handleActivityResult(IILandroid/content/Intent;)Z",
        """    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    iget-object v0, p0, Lcom/droidhang/pay/DHGooglePaymentManager;->mHelper:Lcom/droidhang/pay/util/IabHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/droidhang/pay/util/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0""",
    )
    with open(pay_path, "w", encoding="utf-8", newline="\n") as f:
        f.write(pay)
    print("Patched DHGooglePaymentManager.smali")


def patch_video_ad_manager():
    """Stubs VideoAdManager to prevent ad crashes or NPEs."""
    video_path = os.path.join(
        DECOMPILED_DIR, "smali", "com", "droidhang", "game", "ad", "VideoAdManager.smali"
    )
    with open(video_path, "r", encoding="utf-8") as f:
        video_smali = f.read().replace("\r\n", "\n")

    video_smali = replace_smali_method(
        video_smali,
        ".method public static isAdReady()Z",
        "    .locals 1\n    const/4 v0, 0x0\n    return v0",
    )
    video_smali = replace_smali_method(
        video_smali,
        ".method public static isAdReady(Ljava/lang/String;)Z",
        "    .locals 1\n    .param p0, \"key\"    # Ljava/lang/String;\n    const/4 v0, 0x0\n    return v0",
    )
    video_smali = replace_smali_method(
        video_smali,
        ".method public static onPause()V",
        "    .locals 0\n    return-void",
    )
    video_smali = replace_smali_method(
        video_smali,
        ".method public static onResume()V",
        "    .locals 0\n    return-void",
    )
    video_smali = replace_smali_method(
        video_smali,
        ".method public static playAd()V",
        "    .locals 0\n    return-void",
    )
    video_smali = replace_smali_method(
        video_smali,
        ".method public static playAd(Ljava/lang/String;)V",
        "    .locals 0\n    .param p0, \"key\"    # Ljava/lang/String;\n    return-void",
    )
    with open(video_path, "w", encoding="utf-8", newline="\n") as f:
        f.write(video_smali)
    print("Patched VideoAdManager.smali")


def patch_io_util():
    """Guards IOUtil.delete against NullPointerException when listFiles() returns null."""
    io_path = os.path.join(
        DECOMPILED_DIR, "smali", "com", "wwcd", "util", "IOUtil.smali"
    )
    with open(io_path, "r", encoding="utf-8") as f:
        io_smali = f.read().replace("\r\n", "\n")

    patched_delete = """    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 165
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_io_not_null

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :cond_io_not_null
    .line 167
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 168
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/wwcd/util/IOUtil;->delete(Ljava/io/File;)V

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 172
    return-void"""

    io_smali = replace_smali_method(
        io_smali,
        ".method public static delete(Ljava/io/File;)V",
        patched_delete,
    )
    with open(io_path, "w", encoding="utf-8", newline="\n") as f:
        f.write(io_smali)
    print("Patched IOUtil.delete with null check")


def patch_android_util():
    """Stubs getIMEI, getIMSI, and getWIFI to avoid permission crashes and NullPointerExceptions on modern Android."""
    au_path = os.path.join(
        DECOMPILED_DIR, "smali", "com", "wwcd", "util", "AndroidUtil.smali"
    )
    with open(au_path, "r", encoding="utf-8") as f:
        au_smali = f.read().replace("\r\n", "\n")

    au_smali = replace_smali_method(
        au_smali,
        ".method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;",
        '    .locals 1\n    .param p0, "ctx"    # Landroid/content/Context;\n    const-string v0, ""\n    return-object v0',
    )
    au_smali = replace_smali_method(
        au_smali,
        ".method public static final getIMSI(Landroid/content/Context;)Ljava/lang/String;",
        '    .locals 1\n    .param p0, "ctx"    # Landroid/content/Context;\n    const-string v0, ""\n    return-object v0',
    )
    au_smali = replace_smali_method(
        au_smali,
        ".method public static getWIFI(Landroid/content/Context;)Ljava/lang/String;",
        '    .locals 1\n    .param p0, "ctx"    # Landroid/content/Context;\n    const-string v0, "02:00:00:00:00:00"\n    return-object v0',
    )
    with open(au_path, "w", encoding="utf-8", newline="\n") as f:
        f.write(au_smali)
    print("Patched AndroidUtil getIMEI, getIMSI, and getWIFI stubs")


def patch_cocos2dx_activity():
    """Ensures Cocos2dxHelper.init is called before GLSurfaceView init to prevent race condition during early frame render."""
    activity_smali = os.path.join(
        DECOMPILED_DIR, "smali", "org", "cocos2dx", "lib", "Cocos2dxActivity.smali"
    )
    with open(activity_smali, "r", encoding="utf-8") as f:
        content = f.read()

    orig = """    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->init()V

    .line 84
    invoke-static {p0, p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->init(Landroid/content/Context;Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;)V"""

    reordered = """    invoke-static {p0, p0}, Lorg/cocos2dx/lib/Cocos2dxHelper;->init(Landroid/content/Context;Lorg/cocos2dx/lib/Cocos2dxHelper$Cocos2dxHelperListener;)V

    .line 82
    invoke-virtual {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->init()V"""

    if orig in content:
        content = content.replace(orig, reordered)
        with open(activity_smali, "w", encoding="utf-8", newline="\n") as f:
            f.write(content)
        print("Patched Cocos2dxActivity.smali: Cocos2dxHelper.init called before GLSurfaceView init")


def build_and_sign():
    ensure_keystore()
    for tmp in (UNSIGNED_APK, ALIGNED_APK, OUTPUT_APK):
        if os.path.exists(tmp):
            os.remove(tmp)

    print("1. Building APK with Apktool...")
    subprocess.run(
        [JAVA_EXE, "-jar", APKTOOL_JAR, "b", DECOMPILED_DIR, "-o", UNSIGNED_APK],
        check=True,
    )

    print("2. Aligning APK with zipalign...")
    subprocess.run(
        [ZIPALIGN_EXE, "-p", "-f", "4", UNSIGNED_APK, ALIGNED_APK],
        check=True,
    )

    print("3. Signing APK with apksigner (v1 + v2 + v3)...")
    subprocess.run(
        [
            APKSIGNER_BAT,
            "sign",
            "--ks",
            KEYSTORE_PATH,
            "--ks-pass",
            "pass:android123",
            "--key-pass",
            "pass:android123",
            "--ks-key-alias",
            "kingdomchaos",
            "--v1-signing-enabled",
            "true",
            "--v2-signing-enabled",
            "true",
            "--v3-signing-enabled",
            "true",
            "--out",
            OUTPUT_APK,
            ALIGNED_APK,
        ],
        shell=True,
        check=True,
    )

    print("4. Verifying APK signature...")
    subprocess.run([APKSIGNER_BAT, "verify", "--verbose", OUTPUT_APK], shell=True, check=True)
    print(f"Done! Output APK: {OUTPUT_APK} ({os.path.getsize(OUTPUT_APK):,} bytes)")


def main():
    print("Applying Fix 1: TargetSDK 28 and AndroidManifest modernize...")
    patch_apktool_yml()
    patch_manifest()

    print("Applying Fix 2: Remove TEXTREL & crash libraries, mirror armeabi-v7a, apply native patches...")
    patch_native_libraries()

    print("Applying Fix 3: Patch FloatMath.ceil in Cocos2dxBitmap...")
    patch_floatmath()

    print("Applying Fix 4: Guard Cocos2dxRenderer GL lifecycle...")
    patch_renderer_lifecycle()

    print("Applying Fix 5: Patch signature verification MD5 spoof...")
    patch_signature_spoof()

    print("Applying Fix 6: Guard BEUtil window focus change & stub obsolete ad calls...")
    patch_be_util()

    print("Applying Fix 7: Neutralize obsolete SDK calls in GameActivity...")
    patch_game_activity()

    print("Applying Fix 8: Completely neutralize TestinAgent & NDK crash hooks...")
    patch_testin_agent()

    print("Applying Fix 9: Patch Google In-App Billing v3 service...")
    patch_google_billing()

    print("Applying Fix 10: Patch VideoAdManager...")
    patch_video_ad_manager()

    print("Applying Fix 11: Patch IOUtil.delete null check...")
    patch_io_util()

    print("Applying Fix 12: Patch AndroidUtil IMEI, IMSI, and WIFI stubs...")
    patch_android_util()

    print("Applying Fix 13: Reorder Cocos2dxHelper.init before GLSurfaceView init...")
    patch_cocos2dx_activity()

    print("Building and signing compatible APK...")
    build_and_sign()


if __name__ == "__main__":
    main()
