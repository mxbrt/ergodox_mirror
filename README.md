# Ergodox mirror

Takes a [qmk JSON config](https://config.qmk.fm/#/) and builds 2 separate firmwares for left and right hand. This is useful for builds with a teensy for each side.

## Usage

Initialization (do once):
`git submodule update --init --recursive`

Build:
`build.sh <path-to-json>`

Firmware will be copied to `build/{left,right}_*.hex`
