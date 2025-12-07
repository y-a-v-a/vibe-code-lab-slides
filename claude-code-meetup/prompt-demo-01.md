I got a dataset of all attendees from the Claude Code Amsterdam meetup. Most of them left their LinkedIn profiles url. I want to demo the use of playwright mcp server in combination with the dataset and a custom prompt to query about attendees in Claude code, and make generalizations on where people are from or what education they followed.


Demo concept: "Know Your Audience" agent
System prompt: "You are an event analyst. Use the attendee dataset and web scraping to build audience insights. Focus on geographic distribution, educational backgrounds, and professional patterns."
The flow:

Load attendees CSV with LinkedIn URLs
Playwright MCP scrapes public LinkedIn data (location, education, current role)
PostToolHook: validates scraped data quality, flags incomplete profiles
Claude aggregates patterns, generates insights markdown
Optional: create visualization data (JSON for charts)

The hook layers:

PreToolHook: rate-limit Playwright calls (politeness, avoid blocking)
PostToolHook: cache scraped results to avoid re-fetching during demo
Privacy guard hook: strip PII before writing insights to files

Live demo power:

Ask Claude: "What percentage of attendees are based in Amsterdam?"
"What are the most common educational backgrounds?"
"How many work at startups vs. enterprises?"
Claude uses dataset + Playwright → generates instant audience report

Presentation narrative: "I used Claude Code to understand who's in this room right now" - then reveal the insights. Shows general-purpose capability, MCP integration, and ethical considerations (privacy hooks) in one concrete example.

Would you want the hook to also enforce consent checking (only scrape profiles that opted-in via registration form)?VB