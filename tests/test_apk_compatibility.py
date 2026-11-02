import os
import struct
import subprocess
import unittest
import zipfile

REPO_ROOT = r"C:\Koding\rea\kingdom"
DECOMPILED_DIR = os.path.join(REPO_ROOT, "kingdom-in-chaos-decompiled")
TOOLS_DIR = os.path.join(REPO_ROOT, "tools")
OUTPUT_APK = os.path.join(REPO_ROOT, "kingdom-in-chaos-1-0-5-r1.apk")
SDK_BUILD_TOOLS = r"C:\Users\Colorful\AppData\Local\Android\Sdk\build-tools\36.1.0"
AAPT2_EXE = os.path.join(SDK_BUILD_TOOLS, "aapt2.exe")
APKSIGNER_BAT = os.path.join(SDK_BUILD_TOOLS, "apksigner.bat")


def has_textrel(elf_bytes: bytes) -> bool:
    e_phoff, _, _, _, e_phentsize, e_phnum = struct.unpack_from("<IIIHHH", elf_bytes, 28)
    dyn_off, dyn_sz = 0, 0
    for i in range(e_phnum):
        p_type, p_offset, _, _, p_filesz, _, _, _ = struct.unpack_from(
            "<IIIIIIII", elf_bytes, e_phoff + i * e_phentsize
        )
        if p_type == 2:  # PT_DYNAMIC
            dyn_off, dyn_sz = p_offset, p_filesz
    for pos in range(dyn_off, dyn_off + dyn_sz, 8):
        d_tag, d_val = struct.unpack_from("<iI", elf_bytes, pos)
        if d_tag == 0:
            break
        if d_tag == 22 or (d_tag == 30 and (d_val & 0x4)):
            return True
    return False


class TestKingdomInChaosAndroid13Port(unittest.TestCase):
    def test_apktool_yml_target_sdk_is_modern(self):
        yml_path = os.path.join(DECOMPILED_DIR, "apktool.yml")
        with open(yml_path, "r", encoding="utf-8") as f:
            content = f.read()
        self.assertIn("targetSdkVersion: 28", content)

    def test_manifest_has_http_legacy_and_cleartext_and_exported(self):
        manifest_path = os.path.join(DECOMPILED_DIR, "AndroidManifest.xml")
        with open(manifest_path, "r", encoding="utf-8") as f:
            xml = f.read()
        self.assertIn('platformBuildVersionCode="28"', xml)
        self.assertIn('android:requestLegacyExternalStorage="true"', xml)
        self.assertIn('android:name="org.apache.http.legacy"', xml)
        self.assertIn('android:usesCleartextTraffic="true"', xml)
        self.assertIn('android:name="com.droidhang.ph.GameActivity"', xml)
        self.assertIn('android:exported="true"', xml)
        self.assertNotIn('android.permission.READ_PHONE_STATE', xml)
        self.assertIn(
            'android:enabled="false" android:exported="false" android:name="com.vungle.publisher.VungleService"',
            xml,
        )
        self.assertIn(
            'android:enabled="false" android:exported="false" android:name="com.sponsorpay.advertiser.InstallReferrerReceiver"',
            xml,
        )
        self.assertIn(
            'android:enabled="false" android:exported="false" android:name="com.hz.game.be.FyberReceiver"',
            xml,
        )

    def test_built_and_signed_apk_is_valid_for_android_13_plus(self):
        self.assertTrue(os.path.isfile(OUTPUT_APK), "Output APK has not been built yet")

        # Verify with aapt2 dump badging
        badging = subprocess.run(
            [AAPT2_EXE, "dump", "badging", OUTPUT_APK],
            capture_output=True,
            text=True,
            encoding="utf-8",
            errors="replace",
            check=True,
        ).stdout
        self.assertIn("targetSdkVersion:'28'", badging)

        # Verify signature schemes v1 and v2/v3 with apksigner
        sig = subprocess.run(
            [APKSIGNER_BAT, "verify", "--verbose", OUTPUT_APK],
            capture_output=True,
            text=True,
            encoding="utf-8",
            errors="replace",
            check=True,
            shell=True,
        ).stdout
        self.assertIn("Verified using v1 scheme (JAR signing): true", sig)
        self.assertIn("Verified using v2 scheme (APK Signature Scheme v2): true", sig)

    def test_fix2_no_textrel_libraries_in_source(self):
        lib_dir = os.path.join(DECOMPILED_DIR, "lib")
        for bad_lib in ["libbspatch.so", "libgetuiext.so"]:
            for root, _, files in os.walk(lib_dir):
                self.assertNotIn(
                    bad_lib,
                    files,
                    f"Library with TEXTREL {bad_lib} still exists in {root}",
                )

    def test_fix2_armeabi_and_v7a_exist_and_clean_of_textrel(self):
        lib_dir = os.path.join(DECOMPILED_DIR, "lib")
        for abi in ["armeabi", "armeabi-v7a"]:
            abi_dir = os.path.join(lib_dir, abi)
            self.assertTrue(os.path.isdir(abi_dir), f"{abi} directory missing")
            for lib_name in ["libgame.so", "libNativeCrash.so"]:
                so_path = os.path.join(abi_dir, lib_name)
                self.assertTrue(os.path.isfile(so_path), f"{lib_name} missing in {abi}")
                with open(so_path, "rb") as f:
                    elf = f.read()
                self.assertFalse(
                    has_textrel(elf),
                    f"{lib_name} in {abi} contains DT_TEXTREL, which crashes Android 6.0+",
                )

    def test_fix2_packaged_apk_native_structure(self):
        with zipfile.ZipFile(OUTPUT_APK, "r") as zf:
            namelist = zf.namelist()
            self.assertIn("lib/armeabi/libgame.so", namelist)
            self.assertIn("lib/armeabi-v7a/libgame.so", namelist)
            self.assertIn("lib/armeabi-v7a/libNativeCrash.so", namelist)
            for name in namelist:
                self.assertNotIn("libbspatch.so", name)
                self.assertNotIn("libgetuiext.so", name)


if __name__ == "__main__":
    unittest.main()
