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
OUTPUT_APK = os.path.join(REPO_ROOT, "kingdom-in-chaos-1-0-5-r2.apk")


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
    # targetSdkVersion 28 avoids Android 10+ scoped storage restrictions and Android 12+ immutable pending intent crashes
    text = re.sub(r"targetSdkVersion:\s*\d+", "targetSdkVersion: 28", text)
    with open(yml_path, "w", encoding="utf-8", newline="\n") as f:
        f.write(text)


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


def patch_native_libraries():
    """Removes libraries with DT_TEXTREL (which crash on Android 6.0+) and adds armeabi-v7a."""
    lib_dir = os.path.join(DECOMPILED_DIR, "lib")
    armeabi_dir = os.path.join(lib_dir, "armeabi")
    v7a_dir = os.path.join(lib_dir, "armeabi-v7a")

    # Remove obsolete libraries with DT_TEXTREL
    for bad_lib in ["libbspatch.so", "libgetuiext.so"]:
        for arch_dir in [armeabi_dir, v7a_dir]:
            target = os.path.join(arch_dir, bad_lib)
            if os.path.exists(target):
                os.remove(target)
                print(f"Removed TEXTREL library: {target}")

    # Mirror armeabi to armeabi-v7a for modern ARM architectures
    os.makedirs(v7a_dir, exist_ok=True)
    for lib_name in ["libgame.so", "libNativeCrash.so"]:
        src = os.path.join(armeabi_dir, lib_name)
        dst = os.path.join(v7a_dir, lib_name)
        if os.path.exists(src) and (not os.path.exists(dst) or os.path.getsize(src) != os.path.getsize(dst)):
            shutil.copy2(src, dst)
            print(f"Mirrored {lib_name} to armeabi-v7a")


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
    """Guards Cocos2dxRenderer against premature pause/draw calls on modern Android before nativeInit completes."""
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

    # Set sNativeInitDone = true in nativeStart
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

    with open(renderer_smali, "w", encoding="utf-8", newline="\n") as f:
        f.write(content)
    print("Patched Cocos2dxRenderer lifecycle guards")


def patch_signature_and_telemetry():
    """Spoofs signature check in AndroidUtil.smali and neutralizes signature/telemetry checks in libgame.so."""
    # 1. Smali patch: AndroidUtil.getSignatureMd5 returns the original hardcoded MD5
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

    # 2. Native patch: libgame.so (both armeabi and armeabi-v7a)
    patch_map = {
        0x0025DDD4: bytes.fromhex("7047" + "c046" * 9),  # verify: bx lr (clean immediate return, zero memory deref)
        0x003DEB18: b"\x70\x47",  # DHHttpHelper::login (Thumb): bx lr
        0x0062E40C: b"\x1e\xff\x2f\xe1",  # MobClickCpp::startWithAppkey (ARM): bx lr
        0x0062F1D0: b"\x1e\xff\x2f\xe1",  # MobClickCpp::updateOnlineConfig (ARM): bx lr
        0x0062F028: b"\x1e\xff\x2f\xe1",  # MobClickCpp::checkUpdate (ARM): bx lr
        0x0062E5C8: b"\x1e\xff\x2f\xe1",  # MobClickCpp::applicationDidEnterBackground (ARM): bx lr
        0x0062E57C: b"\x1e\xff\x2f\xe1",  # MobClickCpp::applicationWillEnterForeground (ARM): bx lr
    }
    lib_dir = os.path.join(DECOMPILED_DIR, "lib")
    for abi in ["armeabi", "armeabi-v7a"]:
        so_path = os.path.join(lib_dir, abi, "libgame.so")
        if os.path.exists(so_path):
            with open(so_path, "rb") as f:
                data = bytearray(f.read())
            for off, patch in patch_map.items():
                data[off : off + len(patch)] = patch
            with open(so_path, "wb") as f:
                f.write(data)
            print(f"Patched native signature and telemetry in {abi}/libgame.so")


def patch_unlimited_stamina_clean_ui():
    """Patches stamina to always be full (5/5) with 0 energy consumed, preventing icon overflow on screen."""
    # BalanceLifeStatus at 0x003053A0:
    # cmp r0, #0; beq +4; movs r2, #5; str r2, [r0]; cmp r1, #0; beq +4; movs r2, #0; str r2, [r1]; bx lr
    balance_life_patch = bytes.fromhex("002802d005220260002902d000220a607047")

    # DecreaseLife at 0x003055FC:
    # movs r0, #1; bx lr
    decrease_life_patch = b"\x01\x20\x70\x47"

    lib_dir = os.path.join(DECOMPILED_DIR, "lib")
    for abi in ["armeabi", "armeabi-v7a"]:
        so_path = os.path.join(lib_dir, abi, "libgame.so")
        if os.path.exists(so_path):
            with open(so_path, "rb") as f:
                data = bytearray(f.read())
            data[0x003053A0 : 0x003053A0 + len(balance_life_patch)] = balance_life_patch
            data[0x003055FC : 0x003055FC + len(decrease_life_patch)] = decrease_life_patch
            with open(so_path, "wb") as f:
                f.write(data)
            print(f"Patched stamina & energy system in {abi}/libgame.so")


def patch_unlock_all_heroes():
    """Unlocks full hero roster instantly (characters only, preserving natural level/item progression)."""
    hero_patches = {
        0x002E17DC: b"\x01\x20\x70\x47",  # UserDataManager::isHeroUnlock -> returns true (1)
        0x0038C03C: b"\x70\x47",  # UITeamLayer::showLocks -> bx lr (no locks displayed)
        0x002B9AD4: b"\x01\x20\x70\x47",  # PriceManager::payUnlockHero -> returns true (1)
    }

    lib_dir = os.path.join(DECOMPILED_DIR, "lib")
    for abi in ["armeabi", "armeabi-v7a"]:
        so_path = os.path.join(lib_dir, abi, "libgame.so")
        if os.path.exists(so_path):
            with open(so_path, "rb") as f:
                data = bytearray(f.read())
            for off, patch in hero_patches.items():
                data[off : off + len(patch)] = patch
            with open(so_path, "wb") as f:
                f.write(data)
            print(f"Patched instant hero roster unlock in {abi}/libgame.so")


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
    print("Applying Fix 2: Remove TEXTREL libraries and mirror armeabi-v7a...")
    patch_native_libraries()
    print("Applying Fix 3: Patch FloatMath.ceil in Cocos2dxBitmap...")
    patch_floatmath()
    print("Applying Fix 4: Guard Cocos2dxRenderer GL lifecycle...")
    patch_renderer_lifecycle()
    print("Applying Fix 5: Patch signature verification and telemetry bypass...")
    patch_signature_and_telemetry()
    print("Applying Fix 6: Unlimited stamina / 0 food cost with clean UI...")
    patch_unlimited_stamina_clean_ui()
    print("Applying Fix 7: Full hero roster unlocked (characters only)...")
    patch_unlock_all_heroes()
    print("Building and signing compatible APK...")
    build_and_sign()


if __name__ == "__main__":
    main()
