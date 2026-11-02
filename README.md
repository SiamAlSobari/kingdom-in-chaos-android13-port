# Kingdom in Chaos (v1.0.5) - Android 13/14/15 Compatibility Port

Compatibility port and offline patch for **Kingdom in Chaos** (`com.droidhang.zhanshen` / 战神传说), originally released by Droidhang in 2013.

The game originally crashes immediately on Android 6.0 and newer versions due to deprecated APIs, `DT_TEXTREL` dynamic relocations, dead telemetry services, and uninitialized graphics contexts. This repository contains the decompiled source, binary patches for `libgame.so`, and an automated build script to produce a working APK for modern Android devices.

---

## Summary of Applied Fixes (r3 Release)

The patches below resolve crash causes, obsolete APIs, and offline gameplay issues:

| Fix | Component | Description |
|---|---|---|
| **Fix 1** | Target SDK & Manifest | Updated `targetSdkVersion` to 28, added `android:exported="true"` to `GameActivity`, added `org.apache.http.legacy`, enabled `usesCleartextTraffic`, removed deprecated `READ_PHONE_STATE`, and disabled dead third-party ad services (Vungle, SponsorPay, Fyber). |
| **Fix 2** | Native ABIs & Cleanup | Removed `libbspatch.so` and `libgetuiext.so`, which caused fatal linker crashes on Android 6.0+ due to `DT_TEXTREL`. Removed `libNativeCrash.so` (Breakpad crash handler). Added `armeabi-v7a` alongside `armeabi`. |
| **Fix 3** | Java FloatMath Fix | Replaced deprecated `Landroid/util/FloatMath;->ceil(F)F` calls in `Cocos2dxBitmap.smali` with `java.lang.Math.ceil`, preventing `NoSuchMethodError` crashes on Android 6+. |
| **Fix 4** | GL Lifecycle Guard | Added `sNativeInitDone:Z` guard to `Cocos2dxRenderer.smali` to prevent `handleOnPause()`, `handleOnResume()`, `onDrawFrame()`, and touch/key handlers from calling native renderer methods before GL surface initialization completes. |
| **Fix 5** | Signature & Telemetry Bypass | Spoofed `AndroidUtil.getSignatureMd5()` in Smali with the original APK signature MD5 (`e3642530816912682978ad8c491ccbe7`). Replaced native `verify` (`0x0025DDD4`) with `bx lr` to bypass `exit(0)`, neutralized `DHHttpHelper::login` (`0x003DEB18`), and neutralized Umeng/MobClickCpp telemetry (`0x0062E40C` - `0x0062F1D0`) in `libgame.so`. |
| **Fix 6** | Unlimited Stamina | Patched `BalanceLifeStatus` (`0x003053A0`) and `DecreaseLife` (`0x003055FC`) in `libgame.so` so stamina stays at 5/5 and stages consume 0 energy. Prevents UI drumstick icon overflow. |
| **Fix 7** | Hero Roster Unlocked | Patched `UserDataManager::isHeroUnlock` (`0x002E17DC`) and `PriceManager::payUnlockHero` (`0x002B9AD4`). Unlocks the entire hero roster in Team and Tavern immediately without modifying levels, gear, or gold. |
| **Fix 8** | Window Focus Race Condition | Guarded `BEUtil.onWindowFocusChanged` and `BEUtil$8.run()` with `sNativeInitDone`, and stubbed native `BEUtil::nOnWindowFocusChanged` (`0x003DA62C`) with `bx lr` to prevent dereferencing uninitialized singletons (`SIGSEGV`). |
| **Fix 9** | Legacy SDK Disablement | Disabled obsolete SDK initializations in `GameActivity.smali` (`MobclickAgent`, `TapjoyConnect`, `DHGames`, `CrossPromotionUtil`, `DHGooglePaymentManager`, `AdMgr`, `SponsorPay`). |
| **Fix 10** | Testin Crash Reporter | Disabled Testin Agent v2.0.7 (`TestinAgent.smali` and `com/testin/agent/e/b.smali`) and stubbed native `TestinAgentHelper` functions (`0x00441CC0`, `0x00441824`, `0x00441F04`, `0x00441CE0`, `0x00441DB0`, `0x00441E34`, `0x00441EE8`, `0x00441F20`) to prevent `Process.killProcess()` calls. |
| **Fix 11** | In-App Billing Bypass | Disabled Google In-App Billing v3 service initialization in `DHGooglePaymentManager.smali` and added null checks to `handleActivityResult` to prevent startup crashes. |
| **Fix 12** | Storage Deletion Guard | Added null check to `IOUtil.delete(File)` when `File.listFiles()` returns `null` on restricted or missing storage paths. |
| **Fix 13** | Device Identifier Stubs | Stubbed `AndroidUtil.getWIFI`, `getIMEI`, and `getIMSI` to return dummy values, preventing `NullPointerException` and Android 10+ `SecurityException` crashes. |
| **Fix 14** | Preload Layer and Helper Initialization | Moved `Cocos2dxHelper.init` before GLSurfaceView initialization in `Cocos2dxActivity.smali` so APK asset paths configure before rendering starts. Guarded `PreloadLayer::init` (`0x00271546` and `0x0027173E`) against null sprite pointers. |
| **Fix 15** | Asset Decryption and Texture Guard | Initialized `DHEncrypt::_key` with the 32-character XXTEA key (`e3642530816912682978ad8c491ccbe7`) at startup (`0x0047B4FC`), bypassed broken dynamic key generation in `AndroidUtil::init` (`0x003D8F66`), and routed `CCTexture2D::hasPremultipliedAlpha` (`0x00484472` -> `0x002E17E0`) through a null guard to prevent crashes when loading decrypted textures. |

---

## Repository Structure

```
├── build_apk.py                     # Build, patch, align, and signing script
├── kingdom-in-chaos-1-0-5.apk       # Original APK baseline
├── kingdom-in-chaos-1-0-5-r3.apk    # Built and signed modern compatible APK (r3 release)
├── kingdom-in-chaos-decompiled/     # Decompiled Smali, assets, native libs, AndroidManifest.xml
│   ├── lib/
│   │   ├── armeabi/                 # Patched native libraries (libgame.so)
│   │   └── armeabi-v7a/             # Mirrored ARMv7a native libraries
│   └── smali/                       # Patched Smali bytecode
├── tests/
│   └── test_apk_compatibility.py    # Automated test suite (19 test cases)
└── tools/                           # Apktool, keystore, and build artifacts
```

---

## Testing and Verification

Run the 19 automated compatibility checks with pytest:

```powershell
pytest tests/test_apk_compatibility.py
```

---

## Building the APK

Rebuild, align, and sign the APK from source:

```powershell
python build_apk.py
```

Output: `kingdom-in-chaos-1-0-5-r3.apk` (aligned and signed with v1, v2, and v3 schemes).
