if [ -d "/proc/sys/net/ipv4/conf/tun0" ]; then
	ip=$(curl -4 -sf ifconfig.co)
	echo "%{u#21C241}%{+u}%{T4} %{T-}%{F#21C241}VPN Connected - $ip%{F-}"
else
	echo "%{u#f00}%{+u}%{T4} %{T-}%{F#f00} VPN Down"
fi
