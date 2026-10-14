#!/bin/bash
if ! /usr/bin/curl -s --max-time 3 http://127.0.0.1:3000/api/v1/content/settings > /dev/null 2>&1; then
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] Backend down, restarting..." >> /home/viethiph/studio.viethiphop.vn/backend/watchdog.log
    pkill -f 'require("./app.js")' 2>/dev/null
    sleep 1
    /bin/bash /home/viethiph/studio.viethiphop.vn/backend/start_backend.sh
fi
