#!/bin/bash

# NOTE: this intends to be functionally identical to the powershell version: build.ps1
# may need to make executable: chmod a+x build.sh
# if zip command not found, install zip. eg: pacman -S zip

build_path="./build"

# Create build directory if it doesn't exist
if [ ! -d "$build_path" ]; then
    mkdir -p "$build_path"
fi

# Chrome extension
cp "manifest.chrome.json" "manifest.json"
zip -r "build/build-chrome.zip" icons/ interface/ cookie-editor.js manifest.json

# Firefox extension
cp "manifest.firefox.json" "manifest.json"
zip -r "build/build-firefox.zip" icons/ interface/ cookie-editor.js manifest.json
