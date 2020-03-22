# ndk-version-finder
simple bash script for trying to find android ndk version used to build native library. useful for poorly documented source code. i created this when i was going through every ndk version to find the one that would let me build a project properly. maybe this will help someone else with this issue.

```bash
# usage:
bash tryndk.sh <ndk_version> <ndk_path> <native_lib_jni_path>
# example:
bash tryndk.sh r21 "~/my_android_ndk_path" "~/my_source_path/jni"
```
