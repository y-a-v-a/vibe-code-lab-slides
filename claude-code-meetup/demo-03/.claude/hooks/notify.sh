#!/bin/bash

# Read JSON from stdin
input=$(cat)

# Parse JSON using jq
message=$(echo "$input" | jq -r '.message // "Claude Code Hook Triggered"')
title=$(echo "$input" | jq -r '.hook_event_name // .notification_type // "Claude Code"')

# Get the directory where this script is located
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Call the AppleScript with message and title
osascript "$script_dir/notify.scpt" "$message" "$title"
