# Writing Assistant Demo

## Overview

This demo demonstrates how to transform Claude Code from a programming assistant into a specialized writing assistant by using a custom system prompt. The `writer.sh` script launches Claude Code with a completely replaced system prompt that restricts it to writing tasks only, guided by William Strunk Jr.'s "The Elements of Style."

## What the Script Does

The `writer.sh` script performs the following operations:

1. **Loads the style guide**: Reads the complete text of "The Elements of Style" from `styleguide.txt`

2. **Defines a custom identity**: Replaces Claude Code's default system prompt with one that:
   - Identifies Claude as a professional writing assistant, not a code assistant
   - Explicitly removes programming capabilities
   - Establishes clear boundaries (cannot and will not write code or perform software engineering tasks)

3. **Provides writing capabilities**: The writing assistant can:
   - Read and edit text files (markdown, plain text)
   - Discuss writing ideas and help develop them
   - Provide feedback on drafts
   - Suggest improvements based on style principles
   - Help structure essays, articles, stories, and other written works

4. **Embeds guiding principles**: Incorporates the full text of "The Elements of Style" into the system prompt, including:
   - Use the active voice
   - Put statements in positive form
   - Use definite, specific, concrete language
   - Omit needless words
   - And many other timeless writing principles

5. **Launches interactive session**: Starts Claude Code with the `--system-prompt` flag to completely replace (not append to) the default behavior

## How to Use

Run the script from the terminal:

```bash
./writer.sh
```

The writing assistant will greet you and ask about your writing project, including:
- What you want to write
- The purpose or goal
- Your intended audience
- Whether you have existing text to review or are starting fresh

## Key Features

- **Pure writing focus**: No coding capabilities, ensuring the assistant stays focused on writing tasks
- **Classic style guidance**: All suggestions and feedback are informed by "The Elements of Style"
- **File management**: Can save work to markdown or text files
- **Conversational approach**: Asks clarifying questions and applies style principles naturally

## Technical Details

The script uses Claude Code's `--system-prompt` parameter to completely replace the default system prompt rather than appending to it. This creates a specialized agent with a fundamentally different purpose and set of capabilities from the standard Claude Code assistant.

## Demo Context

This demo was created for the Claude Code Meetup Amsterdam on December 11, 2025, to illustrate how custom system prompts can transform Claude Code's behavior and create specialized assistants for non-programming tasks.
