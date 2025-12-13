# Claude Code Meetup Amsterdam

**December 11, 2025 | The Social Hub City, Amsterdam**
*Sponsored by Anthropic*

## Overview

This presentation explored the evolution and capabilities of Claude Code through the lens of "Vibe Coding" - a new paradigm for software development that emphasizes intent-based, conversational, and iterative development with AI as a partner.

## Key Themes

### Vibe Coding Philosophy

The presentation opened with insights from Steve Yegge and Gene Kim's 2025 book "Vibe Coding," introducing a fundamental mindset shift in how we approach development:

**From "I need to know how" → "I need to articulate what"**

This isn't about giving up control or blindly accepting code. It's about rapid prototyping, learning, and refinement through a conversational workflow. The core loop is elegantly simple:

**Describe → Generate → Test → Refine → Repeat**

Each iteration is small, testable, builds on the previous step, and quick to validate.

### The Claude Ecosystem Evolution

The presentation traced Claude's journey from simple chat-based artifacts to a sophisticated development platform:

**Claude Artifacts (Web)** - Perfect for quick prototyping, small sketches, ideation, and understanding concepts. Great for initial drafts but limited by version control, output size constraints, and lack of file access.

**Claude Code CLI** - The original tool that changed everything. Launched to a limited audience on February 24, 2025, and opened to the public on NPM on March 5, 2025. The early version was unpolished but powerful - basic, eager, with explicit to-do lists and limited rate limits. Over the following months, it matured significantly with hooks, custom slash commands, better UI, and expanded capabilities beyond just coding.

**Recent Developments** - The platform has expanded dramatically with containerized runtimes, isolated execution, and availability across multiple platforms: VS Code integration, web-based access, desktop applications, and even mobile (iOS) for coding on the go with GitHub connectivity.

### Prompting Strategies That Work

The presentation shared practical wisdom on effective prompting:

**Specificity Matters:**
- Bad: "Make a git analytics tool"
- Good: "Make a git analytics tool that shows the busiest days of the week"

**Progressive Refinement:**
Build your prompts in layers, starting broad and adding details, refining UX, and polishing iteratively. Each refinement should be specific about what you want to achieve.

**Debugging with AI:**
When things break, be concrete: copy error messages, describe observed behavior versus expected behavior, and show your code. The AI excels at pattern matching when given specific information.

### Advanced Capabilities

The latter half of the presentation dove into power-user features that transform Claude Code from a helpful tool into a customizable development environment:

**Global CLAUDE.md Files** - These can be auto-generated for project scope (tools to use, architecture patterns, conventions) or manually crafted globally to make Claude more proactive. Define when to ask for clarification, when to push back, collaborative rules, and guide decision-making processes.

**Hooks System** - A powerful mechanism for enforcing project rules and integrating with external systems:
- Enforce tool choices (force yarn over npm, with clear error messages Claude understands)
- Show system notifications when permission prompts occur
- Create checkpoint commits after file changes for automatic versioning
- Enforce dependency graph rules (prevent frontend from importing backend)
- Sanitize credentials and secrets by checking for patterns

**Global Settings** - Configure Claude Code behavior across all projects, stored in your home directory for consistent experiences.

**General Purpose Use** - Perhaps most surprisingly, Claude Code excels at non-coding tasks:
- Data analysis workflows
- Document analysis and processing
- Running questionnaires
- Writing assistance with custom style guides

A compelling example demonstrated transforming Claude Code into a pure writing assistant by using `--system-prompt` to load William Strunk Jr.'s "The Elements of Style" from Project Gutenberg, creating a specialized agent that refuses to write code and focuses solely on helping with prose.

## Speakers

- **Vincent Bruijn** - Presented the evolution of Claude Code and Vibe Coding principles
- **Daniel de Vos** - Shared practical implementation strategies
- **Eugene Ter-Avakyan** - Demonstrated advanced techniques
- **Daisy Hollman** (Anthropic) - Q&A session

## Key Takeaways

1. **Mindset is everything** - Success with Claude Code comes from articulating intent clearly rather than knowing implementation details upfront
2. **Start small, iterate quickly** - The workflow thrives on rapid cycles of generation and validation
3. **Customization unlocks power** - Hooks, global CLAUDE.md files, and custom system prompts transform Claude Code from a tool into a personalized development environment
4. **Beyond coding** - Claude Code's architecture makes it valuable for any task requiring file manipulation, iteration, and systematic thinking

## Resources

- Vibe Coding book by Steve Yegge and Gene Kim (2025)
- Claude Code CLI: `npm install -g @anthropic-ai/claude-code`
- Example CLAUDE.md files from the community (obra/dotfiles, harperreed/dotfiles)
- Project Gutenberg for public domain texts to use in custom prompts

## Presentation Format

This presentation was built using Reveal.js with a custom gradient-shifting background and monospace typography. The visual style emphasized clarity and readability while maintaining a modern, tech-forward aesthetic.

---

*"Intent based, conversational, iterative development with AI as a partner"*
