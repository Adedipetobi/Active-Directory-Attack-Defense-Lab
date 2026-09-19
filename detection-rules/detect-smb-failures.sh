#!/bin/bash

LOG="/var/log/samba/log.smbd"
THRESHOLD=5

COUNT=$(grep "NT_STATUS_WRONG_PASSWORD" "$LOG" | grep "192.168.106.129" | wc -l)

echo "SMB Failed Authentication Detection"
echo "Source IP: 192.168.106.129"
echo "Failed attempts: $COUNT"
echo "Threshold: $THRESHOLD"

if [ "$COUNT" -ge "$THRESHOLD" ]; then
    echo "ALERT: Multiple failed SMB authentication attempts detected."
else
    echo "No alert threshold reached."
fi
