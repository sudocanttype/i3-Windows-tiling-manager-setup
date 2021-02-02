killall -q polybar
cd ~/.config/polybar
nohup polybar bar1 > bar1.log 2>&1 &
nohup polybar bar2 > bar2.log 2>&1 &
echo "Bars launched..."

