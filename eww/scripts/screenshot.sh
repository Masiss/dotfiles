#!/bin/bash

screenshot_dir="/home/binhnguyen/Pictures/Screenshot/"

selectshot() {
# filename="${screenshot_dir}$(date +'%s_grim.png')"
# slurp | grim -g - "${filename}"
# wl-copy -t image/png < "${filename}"
  slurp | grim -g - - | wl-copy -t image/png && wl-paste > "/home/binhnguyen/Pictures/Screenshot/$(date +'%s_grim.png')"
}

screenshot() {
  filename="${screenshot_dir}$(date +'%s_grim.png')"
  grim -l 0 "${filename}"
  wl-copy -t image/png < "${filename}"

}

if [[ "$1" == "--screenshot" ]]; then
  screenshot
elif [[ "$1" == "--selectshot" ]]; then
  selectshot
fi
