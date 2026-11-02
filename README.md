# Kingdom in Chaos (v1.0.5) - Android 13/14/15 Compatibility Port

Full modernized port and gameplay optimization for **Kingdom in Chaos** (`com.droidhang.zhanshen` / 战神传说), originally developed by Droidhang.

This release fixes all Android 6.0 through 15 modern system incompatibilities, dead server crashes, telemetry overhead, energy overflow glitches, and unlocks the complete hero roster while preserving natural RPG progression.

---

## 🛠️ Summary of Applied Fixes

Every fix is fully automated, tested, and tracked in git:

| Fix | Component | Description |
|---|---|---|
| **Fix 1** | Target SDK & Manifest | Modernized `targetSdkVersion` to 28, added `android:exported="true"` for `GameActivity`, added `org.apache.http.legacy`, enabled `usesCleartextTraffic`, removed deprecated `READ_PHONE_STATE`, and disabled dead third-party ad services (Vungle, SponsorPay, Fyber). |
| **Fix 2** | Native ABIs & TEXTREL | Stripped obsolete `libbspatch.so` and `libgetuiext.so` which had `DT_TEXTREL` (fatal linker error on Android 6.0+). Added native `armeabi-v7a` support alongside `armeabi` with verified text-relocation-free ELF binaries. |
| **Fix 3** | Java FloatMath Fix | Replaced deprecated `Landroid/util/FloatMath;->ceil(F)F` calls in `Cocos2dxBitmap.smali` with standard `java.lang.Math.ceil`, preventing fatal `NoSuchMethodError` crashes on Android 6+. |
| **Fix 4** | GL Lifecycle Guard | Added `sNativeInitDone:Z` state guard to `Cocos2dxRenderer.smali` to protect `handleOnPause()`, `handleOnResume()`, and `onDrawFrame()` from calling native renderer methods before GL surface initialization completes. Prevents `SIGSEGV` race crashes on Android 11–15. |
| **Fix 5** | Signature & Telemetry Bypass | Spoofed `AndroidUtil.getSignatureMd5()` in Smali with the original APK signature MD5 (`e3642530816912682978ad8c491ccbe7`). Neutralized native signature `verify` (`0x0025DDD4`), `DHHttpHelper::login` (`0x003DEB18`), and Umeng/MobClickCpp telemetry (`0x0062E40C` - `0x0062F1D0`) in `libgame.so`. |
| **Fix 6** | Clean Unlimited Stamina | Patched `BalanceLifeStatus` (`0x003053A0`) and `DecreaseLife` (`0x003055FC`) in `libgame.so`. Stamina stays permanently full (5/5) and entering stages consumes 0 energy. Prevents visual drumstick icon overflow across the screen while giving infinite play time. |
| **Fix 7** | Full Hero Roster Unlocked | Patched `UserDataManager::isHeroUnlock` (`0x002E17DC`), `PriceManager::payUnlockHero` (`0x002B9AD4`), and `UserDataManager::getUnLockHeros` (`0x002E3766`). Unlocks the entire hero roster (20+ heroes) in Team & Tavern immediately without modifying levels, gear, or gold. |

---

## 🏗️ Repository Structure

```
├── build_apk.py                     # Automated build, patch, align, and signing pipeline
├── kingdom-in-chaos-1-0-5.apk       # Original APK baseline
├── kingdom-in-chaos-1-0-5-r1.apk    # Built and signed modern compatible APK
├── kingdom-in-chaos-decompiled/     # Decompiled source (Smali, assets, native libs, AndroidManifest.xml)
│   ├── lib/
│   │   ├── armeabi/                 # Cleaned native libraries (libgame.so, libNativeCrash.so)
│   │   └── armeabi-v7a/             # Mirrored ARMv7a native libraries
│   └── smali/                       # Patched Smali bytecode
├── tests/
│   └── test_apk_compatibility.py    # Automated test suite (11 test cases)
└── tools/                           # Apktool, keystore, and build artifacts
```

---

## 🧪 Verification & Automated Testing

The port includes an automated test suite verifying all 7 compatibility and gameplay fixes:

```powershell
pytest tests/test_apk_compatibility.py
```

### Test Suite Highlights:
- `test_apktool_yml_target_sdk_is_modern`: Verifies `targetSdkVersion: 28`.
- `test_manifest_has_http_legacy_and_cleartext_and_exported`: Validates AndroidManifest attributes.
- `test_built_and_signed_apk_is_valid_for_android_13_plus`: Validates aapt2 badging and apksigner v1/v2/v3 signatures.
- `test_fix2_no_textrel_libraries_in_source`: Confirms absence of text-relocation libraries.
- `test_fix2_armeabi_and_v7a_exist_and_clean_of_textrel`: Parses ELF headers to confirm zero `DT_TEXTREL`.
- `test_fix2_packaged_apk_native_structure`: Ensures proper APK zip structure for native ABIs.
- `test_fix3_no_floatmath_references`: Confirms removal of `FloatMath` in Cocos2dxBitmap.
- `test_fix4_cocos2dx_renderer_lifecycle_guards`: Verifies `sNativeInitDone` Smali guards.
- `test_fix5_signature_spoofed_and_telemetry_neutralized`: Validates signature spoof and native telemetry bypasses.
- `test_fix6_stamina_system_unlimited_and_clean_ui`: Verifies 5/5 stamina cap and 0-cost stage entry.
- `test_fix7_hero_roster_unlocked_and_clean_progression`: Validates hero roster unlock patches.

---

## 🚀 Building the APK

To rebuild and sign the APK from source:

```powershell
python build_apk.py
```

Output: `kingdom-in-chaos-1-0-5-r1.apk` (aligned and signed with v1, v2, and v3 schemes).
