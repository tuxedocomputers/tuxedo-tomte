#!/bin/bash
gdbus call --session \
    --dest=org.freedesktop.Notifications \
    --object-path=/org/freedesktop/Notifications \
    --method=org.freedesktop.Notifications.Notify \
    "" 0 "" 'Hello world!' 'This is an example notification.' \
    '[]' '{"urgency": <1>}' 5000
