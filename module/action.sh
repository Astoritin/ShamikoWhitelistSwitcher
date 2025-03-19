if [ -f "/data/adb/shamiko/whitelist" ]; then
    rm -f "/data/adb/shamiko/whitelist"
    exit 0
fi

if [ ! -f "/data/adb/shamiko/whitelist" ]; then
    touch "/data/adb/shamiko/whitelist"
fi
