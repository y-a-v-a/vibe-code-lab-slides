#!/bin/bash

# Read JSON from stdin
input=$(cat)

# Parse JSON - try jq first, fall back to basic parsing
if command -v jq &> /dev/null; then
    # Use jq for robust JSON parsing
    message=$(echo "$input" | jq -r '.message // empty')
    title=$(echo "$input" | jq -r '.hook_event_name // .notification_type // "Claude Code"')
else
    # Fallback: basic grep/sed parsing
    message=$(echo "$input" | grep -o '"message"[[:space:]]*:[[:space:]]*"[^"]*"' | sed 's/"message"[[:space:]]*:[[:space:]]*"\(.*\)"/\1/')
    title=$(echo "$input" | grep -o '"hook_event_name"[[:space:]]*:[[:space:]]*"[^"]*"' | sed 's/"hook_event_name"[[:space:]]*:[[:space:]]*"\(.*\)"/\1/')

    # If no hook_event_name, try notification_type
    if [ -z "$title" ]; then
        title=$(echo "$input" | grep -o '"notification_type"[[:space:]]*:[[:space:]]*"[^"]*"' | sed 's/"notification_type"[[:space:]]*:[[:space:]]*"\(.*\)"/\1/')
    fi

    # Default title if still empty
    if [ -z "$title" ]; then
        title="Claude Code"
    fi
fi

# Get the directory where this script is located
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Call the AppleScript with message and title
if [ -n "$message" ]; then
    osascript "$script_dir/notify.scpt" "$message" "$title"
else
    # If no message found, show a default notification
    osascript "$script_dir/notify.scpt" "Claude Code Hook Triggered" "$title"
fi
