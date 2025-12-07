# Know Your Audience - Demo Preparation Guide

This guide walks you through setting up and running the "Know Your Audience" demo for the Claude Code Meetup Amsterdam (December 11, 2025).

## Overview

This demo showcases Claude Code as a **non-coding tool** that combines:
- CSV data analysis (attendee registration data)
- Live LinkedIn profile scraping (via Playwright MCP)
- Real-time audience insights generation

**Key Message**: Claude Code isn't just for writing code - it's a flexible AI assistant that can be specialized for any task through custom prompts and tool integration.

---

## Pre-Demo Setup (One-Time)

Complete these steps **before the meetup**:

### 1. Install Playwright MCP Server

```bash
npx -y @playwright/mcp
```

This installs the official Microsoft Playwright MCP server that enables browser automation.

### 2. Configure Playwright MCP with Persistent Session

```bash
claude mcp add --transport stdio playwright-mcp -- \
  npx -y @playwright/mcp \
  --user-data-dir ~/.playwright-linkedin-session
```

**What this does**:
- Creates a persistent browser profile at `~/.playwright-linkedin-session`
- All cookies, localStorage, and session data persist between runs
- Browser launches in **visible mode** (not headless) - perfect for demo visuals!

### 3. Authenticate with LinkedIn

```bash
# This opens a browser where you log in manually
claude -p "Open a browser and navigate to https://www.linkedin.com/login" --allowedTools "Bash(open:*)"
```

**Then manually**:
1. Log into LinkedIn in the visible browser window
2. Complete any 2FA/verification if prompted
3. Close the browser
4. Session is now saved in `~/.playwright-linkedin-session`

**Important**: All subsequent agent runs will already be authenticated! No need to log in again during the demo.

### 4. Verify MCP Server is Configured

```bash
claude mcp list
```

You should see `playwright-mcp` listed.

### 5. Test the Demo (Highly Recommended!)

```bash
cd claude-code-meetup/demo-01
./audience-analyst.sh
```

Try a simple warmup query:
- "How many approved attendees are in the dataset?"
- "What's the Claude Code experience distribution?"

This ensures everything works before showtime!

---

## Demo Day - Execution Guide

### Starting the Demo

```bash
cd claude-code-meetup/demo-01
./audience-analyst.sh
```

The script will launch an interactive Claude Code session with a custom system prompt that turns Claude into an "audience analyst" agent.

---

## Recommended Demo Flow (3 Acts)

### Act 1: Pure Data Analysis (CSV Only) - Warmup

Start with simple CSV-only questions to establish the baseline and build confidence.

**Sample queries**:
- "How many approved attendees do we have?"
- "What's the distribution of Claude Code experience levels?"
- "Which Claude Code features are people most interested in discussing?"
- "Show me the breakdown of daily users vs occasional users"

**Why this works**:
- Fast, instant results
- No scraping needed
- Validates you're talking to the right audience
- Establishes credibility before the "wow" moment

**Expected insights**:
- ~60% daily users, ~25% regular users, ~10% occasional, ~5% new
- High interest in: agents, MCPs, agentic workflows, context management
- Diverse professional backgrounds

---

### Act 2: Data Enrichment (CSV + LinkedIn) - The Visual Hook

Now ask questions that **require** LinkedIn scraping. This is where the browser appears and the audience sees real-time web scraping!

**Sample queries**:
- "Where are most attendees based?" (CSV has no location data!)
- "What companies are most represented?"
- "How many work at startups vs enterprises?"
- "Show me the top 5 cities where attendees are coming from"

**Why this showcases Claude Code + MCP**:
- **Requires LinkedIn scraping** - CSV doesn't have location/company data
- Browser window appears - visually engaging for audience
- Demonstrates real-world data enrichment
- Shows MCP integration in action
- Tells a story about the Amsterdam AI community

**Expected insights**:
- ~65% Amsterdam-based, ~20% other Dutch cities, ~15% international
- Top cities: Amsterdam, Utrecht, Rotterdam, possibly Berlin/London
- Mix of established tech companies (ASML, Optiver, Google) and startups
- Shows Amsterdam's pull as an AI hub

---

### Act 3: Deep Dive (Complex Analysis) - The "Wow" Moment

End with the most impressive technical demonstration: extracting structured data from unstructured HTML.

**Sample queries**:
- "What educational backgrounds do attendees have?"
- "Which universities are most common?"
- "Show me career transition patterns - how did people get into AI engineering?"
- "Are there any non-traditional paths (bootcamps, self-taught)?"

**Why this is the "wow" moment**:
- **Most complex** - requires parsing education sections from LinkedIn
- Shows Claude's ability to extract structured data from messy HTML
- Reveals interesting career patterns and transitions
- Demonstrates analytical depth
- Takes longer but delivers impressive insights

**Expected insights**:
- Top universities: TU Delft, UvA, VU Amsterdam, possibly Stanford/MIT for international attendees
- Dominant fields: Computer Science (~40%), Engineering (~25%), Math/Physics (~15%)
- Career trajectories: Traditional CS → AI roles, Physics/Math → Data Science → AI
- Surprising paths: Designers learning to code, Hardware engineers pivoting to ML

---

### Finale: Open Q&A - Interactive Flexibility

**Invite audience questions**:
- "What else would you like to know about yourselves?"
- Take questions from the audience
- Let them explore their own curiosities
- Shows the flexibility and real-time capability of the system

This demonstrates that it's not a pre-recorded demo but a truly interactive, general-purpose tool.

---

## 3 Compelling Demo Queries (Quick Reference)

### Query 1: "Claude Code Power Users - Who's in the Room?" 🎯
**Question**: "What's the distribution of Claude Code experience levels among attendees? Which roles are the daily users vs newcomers?"

**Demo value**: ⭐⭐⭐⭐⭐ (Perfect warmup, pure CSV, instant results)

---

### Query 2: "The Amsterdam Tech Hub - Local or Global?" 🌍
**Question**: "Where are attendees actually based? Is this a local Amsterdam event or does it draw from across Europe?"

**Demo value**: ⭐⭐⭐⭐⭐ (Perfect MCP showcase, combines CSV + scraping, engaging visuals)

---

### Query 3: "From University to AI Engineering - Career Paths Revealed" 🎓
**Question**: "What educational backgrounds do attendees have? Which universities and degree programs are feeding the AI engineering community?"

**Demo value**: ⭐⭐⭐⭐ (Most impressive technically, but slower due to scraping complexity)

---

## Key Demo Talking Points

### "This isn't just coding..."
- Claude Code as a general-purpose data analysis tool
- No Python scripts, no data cleaning code needed
- Natural language queries → instant insights
- Non-developers can use it too!

### "MCP servers extend capabilities..."
- Playwright MCP adds web scraping superpowers
- Other MCPs available: databases, APIs, file systems, Slack, GitHub, etc.
- Composable tools for any workflow
- Extensible ecosystem

### "Custom system prompts = specialized agents"
- Single bash script creates a domain-specific analyst
- Could be: code reviewer, documentation writer, data analyst, security auditor, etc.
- Reusable pattern for any specialized task
- No special configuration files needed

### "Privacy and ethics built in"
- Only approved attendees analyzed (consent filter)
- Aggregate statistics only, no individual PII exposed
- Rate limiting to respect LinkedIn's terms
- Transparent about data usage and processing
- Ethical AI in practice

---

## Troubleshooting Guide

### If LinkedIn session expires:
```bash
# Re-authenticate
claude -p "Open browser, go to linkedin.com/login"
```
Then manually log in again.

### If Playwright isn't working:
```bash
# Check MCP server status
claude mcp list

# Should see 'playwright-mcp' listed
# If not, re-add it:
claude mcp remove playwright-mcp
claude mcp add --transport stdio playwright-mcp -- \
  npx -y @playwright/mcp \
  --user-data-dir ~/.playwright-linkedin-session
```

### If scraping is too slow:
- Start with CSV-only questions
- Scrape selectively (e.g., first 10-20 profiles instead of all)
- Fall back to CSV data if rate limited
- Explain to audience that rate limiting is intentional (being a good web citizen)

### If browser doesn't appear:
- Playwright MCP runs in visible mode by default
- Check if browser window is hidden behind other windows
- On macOS, may need to allow screen recording permissions in System Preferences

### If you get rate-limited by LinkedIn:
- This is expected behavior if scraping too aggressively
- Demonstrate graceful fallback to CSV-only data
- Turn it into a teaching moment about ethical scraping
- The agent is instructed to handle this gracefully

---

## What Makes This Demo Compelling

1. **Real data** from the actual meetup attendees (not fake demo data)
2. **Live scraping** - audience sees it happen in real-time (not pre-recorded)
3. **Interactive** - not a pre-canned demo, you respond to live questions
4. **Multi-modal** - combines CSV data + web scraping seamlessly
5. **Practical** - solves a real problem (understanding your audience)
6. **Ethical** - demonstrates privacy-conscious AI usage

## Technical Highlights to Mention

- Custom system prompts via simple bash script (no complex config)
- MCP server integration (Playwright for browser automation)
- Persistent authentication with LinkedIn (user data directory)
- Real-time data enrichment (CSV + web scraping)
- Privacy-conscious design (consent filters, aggregate data only)
- Graceful error handling (missing URLs, rate limits)

---

## Audience Takeaway

**Core message**:

> "Claude Code isn't just for writing code - it's a flexible AI assistant that can be specialized for any task through custom prompts and tool integration. Whether you're analyzing data, reviewing code, generating documentation, or automating workflows, Claude Code adapts to your needs."

---

## Files Used in Demo

- **CSV Dataset**: `Claude Code Meetup Amsterdam - Guests - 2025-12-07-13-35-44.csv`
- **Launch Script**: `audience-analyst.sh` (created)
- **Browser Profile**: `~/.playwright-linkedin-session` (created during setup)

---

## Post-Demo: What's Next?

After the demo, attendees might ask:

**"How do I create my own custom agent?"**
- Show them the `audience-analyst.sh` script
- Highlight the `--append-system-prompt` flag
- Explain it's just a bash script with a custom prompt

**"What other MCP servers are available?"**
- Point to: https://github.com/modelcontextprotocol/servers
- Examples: GitHub, Slack, Google Drive, PostgreSQL, AWS, etc.

**"Can I use this for my own data?"**
- Absolutely! Just swap the CSV file and adjust the system prompt
- Works with any structured data + web scraping needs

**"Is this only for data analysis?"**
- No! Same pattern works for: code review, documentation, security audits, testing, etc.
- Claude Code is general-purpose

---

Good luck with your demo! 🚀
