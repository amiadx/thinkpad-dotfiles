wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle

if wpctl get-volume @DEFAULT_AUDIO_SOURCE@ | grep -q "MUTED"; then
    echo 1 > /sys/class/leds/platform::micmute/brightness
else
    echo 0 > /sys/class/leds/platform::micmute/brightness
fi
