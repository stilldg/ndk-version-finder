#!/bin/bash
# usage: ./tryndk.sh <ndk_version> <ndk_path> <native_lib_jni_path>
# $1 = ndk version (r21)
# $2 = ndk path (~/android_ndk/)
# $3 = native library jni path (~/source/jni)

# move to android_ndk dir
cd $2
# remove old version
rm -rf $2
# fetch required version
wget https://dl.google.com/android/repository/android-ndk-$1-linux-x86_64.zip
# unzip ndk
unzip android-ndk*
# add to PATH
export PATH=$PATH:$2/android-ndk-$1
# try compile
cd $3/jni
ndk-build
# hopefully it works :)