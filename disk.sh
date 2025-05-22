#!/usr/bin/bash
#!/usr/bin/bash

THRESHOLD=10
EMAIL="your_email@example.com"

# Initialize alert message
ALERT_MSG="Disk Usage Alert on $(hostname):\n\n"

# Flag to check if any alert condition is met
ALERT_TRIGGERED=false

# Get all mount points and usage
df -hP | awk 'NR>1' | while read -r filesystem size used avail use_percent mountpoint; do
    # Strip the % sign from usage
    usage=${use_percent%\%}

    if (( usage >= THRESHOLD )); then
        ALERT_TRIGGERED=true
        ALERT_MSG+="Mount point: $mountpoint is at ${usage}% usage.\n"
    fi
done

# Send alert if any usage > threshold
if $ALERT_TRIGGERED; then
    echo -e "$ALERT_MSG" | mail -s "Disk Usage Alert on $(hostname)" "$EMAIL"
    echo "Alert sent."
else
    echo "All mount points are under control."
fi

