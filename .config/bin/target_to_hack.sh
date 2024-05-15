#!/bin/bash
 
ip_address=$(cat /home/s1or/.config/bin/target | awk '{print $1}')
machine_name=$(cat /home/s1or/.config/bin/target | awk '{print $2}')
 
if [ $ip_address ] && [ $machine_name ]; then
    echo "%{B#212121}%{F#ff0000}󰓾 %{T2}%{F#ffffff}$ip_address%{u-} | $machine_name"
else
    echo "%{B#212121}%{F#ff0000}󰒲 %{u-}%{T2}%{F#ffffff}No target"
fi
