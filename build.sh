#!/bin/sh

set -eu

json="${1}"
keyboard=$(jq -r '.keyboard' < "${json}")
keymap=$(jq -r '.keymap' < "${json}")
fw_name="${keyboard}_${keymap}.hex"

mkdir -p build
./layout_mirror "${json}" > build/left.json
./qmk_firmware/bin/qmk-compile-json build/left.json
cp "qmk_firmware/${fw_name}" "build/left_${fw_name}"
./qmk_firmware/bin/qmk-compile-json "${json}"
cp "qmk_firmware/${fw_name}" "build/right_${fw_name}"
