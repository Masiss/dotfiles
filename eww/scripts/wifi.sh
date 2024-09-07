#!/bin/bash

# export LANG=EN_US
get_wifi_list() {
  nmcli_output=$(printf '%s' "$(nmcli -f ssid -t dev wifi | sort | uniq)" | jq -sR 'split("\n") | map(split(":")) | map({"network": .[0]})')
  echo ${nmcli_output} >network.json
}
check_connect() {
  echo "$1"
  get_connect=$(nmcli -t connection show | grep "$1")
  if [[ ${#get_connect} > 0 ]]; then
    nmcli device wifi connect "$1"
    eww close network_panel
  else
    eww update reveal_network_name="$1"
  fi
}
device_path="/sys/class/net/wlo1/statistics/"
netup(){
    while true; do
        tx1=$(cat ${device_path}tx_bytes)
        sleep 1
        tx2=$(cat ${device_path}tx_bytes)

        u_speed=$(((tx2 - tx1) / 1024))

        u_unit="KB/s"

              if [[ $u_speed -gt 1024 ]]; then
            u_speed=$(((u_speed) / 1024))
            u_unit="MB/s"
        fi
        echo "$u_speed$u_unit "
    done
}
netdown(){
 while true; do
        rx1=$(cat ${device_path}rx_bytes)
        sleep 1
        rx2=$(cat ${device_path}rx_bytes)

        d_speed=$(((rx2 - rx1) / 1024))

        d_unit="KB/s"

        if [[ $d_speed -gt 1024 ]]; then
            d_speed=$(((d_speed) / 1024))
            d_unit="MB/s"
        fi
        echo "$d_speed$d_unit"
    done

}

if [[ "$1" == "--wifi_list" ]]; then
  get_wifi_list
elif [[ "$1" == "--check_connect" ]]; then
  check_connect "$2"
elif [[ "$1" == "--netup" ]]; then 
    netup
elif [[ "$1" == "--netdown" ]]; then
    netdown
fi
