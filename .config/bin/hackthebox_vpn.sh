#!/bin/sh

IFACE=$(/usr/sbin/ifconfig | grep tun0 | awk '{print $1}' | tr -d ':')

if [ "$IFACE" = "tun0" ]; then
	echo "%{B#212121}%{F#1bbf3e} %{T2}%{F#ffffff}$(/usr/sbin/ifconfig tun0 | grep "inet " | awk '{print $2}')%{u-}"
else
	echo "%{B#212121}%{F#1bbf3e}%{u-} %{T2}%{F#ffffff}Disconnected"
fi
