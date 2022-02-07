#!/bin/sh
rm -rf ./build
rm ./nebula/mobileNebula-sources.jar
rm ./nebula/mobileNebula.aar
flutter build appbundle --debug  --verbose
java -jar ./bundletool.jar build-apks --mode=universal  --bundle=./build/app/outputs/bundle/debug/app-debug.aab  --output=./build/app/outputs/bundle/debug/app-debug.apks 