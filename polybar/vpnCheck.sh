if [ -d "/proc/sys/net/ipv4/conf/tun0" ]; then
	ip=$(curl -4 -sf ifconfig.co)
	echo "%{T-}%{F#21C241}VPN Connected - $ip%{F-}"
else
	echo "VPN Down"
fi
