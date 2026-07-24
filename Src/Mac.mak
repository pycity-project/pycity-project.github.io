name: Mac Cloud Build

on:
  push:
    branches: [ main ]

jobs:
  build-mac:
    runs-on: macos-latest
    steps:
      - name: Check out repository code
        uses: actions/checkout@v4

      - name: Run Mac Compilation Script
        run: |
          NONINTERACTIVE=1 brew install raylib
          make -f Src/Mac.mak
          
          # Create the official macOS application bundle structure
          mkdir -p PyCity.app/Contents/MacOS
          
          # Move your compiled binary inside the app folder wrapper
          mv PyCity PyCity.app/Contents/MacOS/

      - name: Upload Finished Mac Executable
        uses: actions/upload-artifact@v4
        with:
          name: PyCity-Mac-Build
          path: PyCity.app
