# Kingdom in Chaos (v1.0.5) - Android 13/14/15 Compatibility Port

Full modernized port and gameplay optimization for **Kingdom in Chaos** (`com.droidhang.zhanshen` / 战神传说), originally developed by Droidhang.

This release fixes all Android 6.0 through 15 modern system incompatibilities, startup force-close bugs, dead server crashes, telemetry overhead, energy overflow glitches, and unlocks the complete hero roster while preserving natural RPG progression.

---

## 🛠️ Summary of Applied Fixes (r3 Release)

Every fix is fully automated, tested, and tracked in git:

| Fix | Component | Description |
|---|---|---|
| **Fix 1** | Target SDK & Manifest | Modernized `targetSdkVersion` to 28, added `android:exported="true"` for `GameActivity`, added `org.apache.http.legacy`, enabled `usesCleartextTraffic`, removed deprecated `READ_PHONE_STATE`, and disabled dead third-party ad services (Vungle, SponsorPay, Fyber). |
| **Fix 2** | Native ABIs & Cleanup | Stripped obsolete `libbspatch.so` and `libgetuiext.so` which had `DT_TEXTREL` (fatal linker error on Android 6.0+). Stripped `libNativeCrash.so` (Breakpad crash handler). Added native `armeabi-v7a` support alongside `armeabi` with verified text-relocation-free ELF binaries. |
| **Fix 3** | Java FloatMath Fix | Replaced deprecated `Landroid/util/FloatMath;->ceil(F)F` calls in `Cocos2dxBitmap.smali` with standard `java.lang.Math.ceil`, preventing fatal `NoSuchMethodError` crashes on Android 6+. |
| **Fix 4** | GL Lifecycle Guard | Added `sNativeInitDone:Z` state guard to `Cocos2dxRenderer.smali` to protect `handleOnPause()`, `handleOnResume()`, `onDrawFrame()`, and touch/key handlers (`handleActionDown`, `handleActionUp`, `handleActionMove`, `handleActionCancel`, `handleKeyDown`) from calling native renderer methods before GL surface initialization completes. |
| **Fix 5** | Signature & Telemetry Bypass | Spoofed `AndroidUtil.getSignatureMd5()` in Smali with the original APK signature MD5 (`e3642530816912682978ad8c491ccbe7`). Replaced native `verify` (`0x0025DDD4`) with clean `bx lr` to bypass `exit(0)` without memory dereferencing, neutralized `DHHttpHelper::login` (`0x003DEB18`), and neutralized Umeng/MobClickCpp telemetry (`0x0062E40C` - `0x0062F1D0`) in `libgame.so`. |
| **Fix 6** | Clean Unlimited Stamina | Patched `BalanceLifeStatus` (`0x003053A0`) and `DecreaseLife` (`0x003055FC`) in `libgame.so`. Stamina stays permanently full (5/5) and entering stages consumes 0 energy. Prevents visual drumstick icon overflow across the screen while giving infinite play time. |
| **Fix 7** | Full Hero Roster Unlocked | Patched `UserDataManager::isHeroUnlock` (`0x002E17DC`) and `PriceManager::payUnlockHero` (`0x002B9AD4`). Unlocks the entire hero roster in Team & Tavern immediately without modifying levels, gear, or gold. |
| **Fix 8** | Window Focus Race Fix | Guarded `BEUtil.onWindowFocusChanged` and `BEUtil$8.run()` with `sNativeInitDone`, and stubbed native `BEUtil::nOnWindowFocusChanged` (`0x003DA62C`) with `bx lr` to prevent dereferencing uninitialized singletons (`SIGSEGV`). |
| **Fix 9** | Dead SDK Neutralization | Commented out obsolete 2013-era SDK initializations in `GameActivity.smali` (`MobclickAgent`, `TapjoyConnect`, `DHGames`, `CrossPromotionUtil`, `DHGooglePaymentManager`, `AdMgr`, `SponsorPay`). |
| **Fix 10** | TestinAgent Neutralization | Neutralized Testin Agent v2.0.7 (`TestinAgent.smali` and `com/testin/agent/e/b.smali`) and stubbed native `TestinAgentHelper` functions (`0x00441CC0`, `0x00441824`, `0x00441F04`, `0x00441CE0`, `0x00441DB0`, `0x00441E34`, `0x00441EE8`, `0x00441F20`), preventing `Process.killProcess()` abortion. |
| **Fix 11** | Defunct Billing Bypass | Neutralized Google In-App Billing v3 service initialization in `DHGooglePaymentManager.smali` and added null-checks to `handleActivityResult` to prevent startup crashes. |
| **Fix 12** | Scoped Storage Null Guard | Guarded `IOUtil.delete(File)` against unhandled `NullPointerException` when `File.listFiles()` returns `null` on restricted/missing storage paths. |
| **Fix 13** | Device Identifier Stubs | Stubbed `AndroidUtil.getWIFI`, `getIMEI`, and `getIMSI` to prevent `NullPointerException` (unhandled null `getConnectionInfo()`) and `SecurityException` on Android 10+. |
| **Fix 14** | Preload & Helper Init Ordering | Reordered `Cocos2dxHelper.init` before GLSurfaceView init in `Cocos2dxActivity.smali` to ensure APK paths are configured before rendering starts. Guarded `PreloadLayer::init` (`0x00271546` & `0x0027173E`) against null sprite dereferences. |
| **Fix 15** | Asset Decryption & Texture Guard | Initialized `DHEncrypt::_key` with the exact 32-character key (`e3642530816912682978ad8c491ccbe7`) at binary startup (`0x0047B4FC`), bypassed broken dynamic key generation in `AndroidUtil::init` (`0x003D8F66`), and installed a null-guard trampoline in `CCTexture2D::hasPremultipliedAlpha` (`0x00484472` -> `0x002E17E0`) to completely eliminate null texture crashes across all layers. |

---

## 🏗️ Repository Structure

```
├── build_apk.py                     # Automated build, patch, align, and signing pipeline
├── kingdom-in-chaos-1-0-5.apk       # Original APK baseline
├── kingdom-in-chaos-1-0-5-r3.apk    # Built and signed modern compatible APK (r3 release)
├── kingdom-in-chaos-decompiled/     # Decompiled source (Smali, assets, native libs, AndroidManifest.xml)
│   ├── lib/
│   │   ├── armeabi/                 # Cleaned native libraries (libgame.so)
│   │   └── armeabi-v7a/             # Mirrored ARMv7a native libraries
│   └── smali/                       # Patched Smali bytecode
├── tests/
│   └── test_apk_compatibility.py    # Automated test suite (19 test cases)
└── tools/                           # Apktool, keystore, and build artifacts
```

---

## 🧪 Verification & Automated Testing

The port includes an automated test suite verifying all 15 compatibility and gameplay fixes:

```powershell
pytest tests/test_apk_compatibility.py
```

---

## 🚀 Building the APK

To rebuild and sign the APK from source:

```powershell
python build_apk.py
```

Output: `kingdom-in-chaos-1-0-5-r3.apk` (aligned and signed with v1, v2, and v3 schemes).
