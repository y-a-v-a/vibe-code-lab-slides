# Hooks and Permissions Demo

## Overview

This demo showcases Claude Code's hooks system and permission management features. It demonstrates how to automatically handle permission prompts by triggering macOS notifications, and how to pre-approve specific commands to streamline workflows.

## What This Demo Does

### 1. Permission Management

The `.claude/settings.local.json` file pre-approves specific git commands:

- `git add`
- `git commit`
- `git push`

When Claude Code attempts to run these commands, it executes them immediately without prompting the user for confirmation, creating a frictionless git workflow.

### 2. Notification Hooks

When a permission prompt occurs, the demo triggers a chain of actions:

1. **Hook Trigger**: The `permission_prompt` matcher detects when Claude Code needs permission
2. **Shell Script**: Executes `notify.sh` which:
   - Reads JSON event data from stdin
   - Parses the message and event type using `jq`
   - Extracts relevant information about the permission request
3. **macOS Notification**: Calls `notify.scpt` (AppleScript) to display a system notification with:
   - The permission message as notification content
   - The hook event name as notification title

### 3. Multi-lingual Text Clock

The `index.html` file contains a beautiful text-based clock that displays the current time in four languages:

- **Dutch (Nederlands)**: Uses the distinctive Dutch time-telling system with "half" references
- **Mandarin (中文)**: Shows time using Chinese characters and traditional time markers
- **Ukrainian (Українська)**: Displays time with Ukrainian number words and grammar
- **Hindi (हिन्दी)**: Presents time using Devanagari script and Hindi numerals

The clock features:
- Responsive grid layout (4 quadrants)
- Dark/light theme toggle
- Updates every 30 seconds
- Hover effects showing language labels
- Mobile-responsive design

## Files Structure

```
demo-03/
├── .claude/
│   ├── hooks/
│   │   ├── notify.sh       # Bash script to parse JSON and trigger notification
│   │   └── notify.scpt     # AppleScript to display macOS notification
│   └── settings.local.json # Permissions and hook configuration
└── index.html              # Multi-lingual text clock application
```

## How the Hooks Work

### Configuration

The hooks are configured in `.claude/settings.local.json`:

```json
{
  "hooks": {
    "Notification": [
      {
        "matcher": "permission_prompt",
        "hooks": [
          {
            "type": "command",
            "command": "\"$CLAUDE_PROJECT_DIR\"/.claude/hooks/notify.sh"
          }
        ]
      }
    ]
  }
}
```

### Event Flow

1. Claude Code encounters an action requiring permission
2. The `permission_prompt` event is triggered
3. The hook system matches this event and executes `notify.sh`
4. The shell script receives JSON data about the event via stdin
5. It extracts the message and event name using `jq`
6. It passes these to `notify.scpt` as command-line arguments
7. AppleScript displays a macOS notification with the information

### Data Flow Example

```
Permission Event → JSON Data → notify.sh → Parse with jq → notify.scpt → macOS Notification
```

## Requirements

- **macOS**: The notification system uses AppleScript, which is macOS-specific
- **jq**: Required for JSON parsing in the shell script
- **Claude Code**: With hooks support

## Key Concepts Demonstrated

### Hooks System
- Event-based triggers for custom automation
- Integration with external scripts and tools
- JSON-based event data passing

### Permission Management
- Pre-approving trusted commands
- Reducing friction in common workflows
- Security considerations for auto-approval

### Cross-Platform Notifications
- Using native OS notification systems
- Integrating shell scripts with AppleScript
- Parsing structured event data

## Use Cases

This pattern can be extended to:
- Send notifications to Slack or other messaging platforms
- Log permission requests to a file for audit trails
- Trigger automated testing when code changes are committed
- Update external dashboards or monitoring systems
- Create custom approval workflows for sensitive operations

## Demo Context

Created for the Claude Code Meetup Amsterdam on December 11, 2025, to illustrate Claude Code's extensibility through hooks and the practical application of permission management.
