# Vibe Coding: A Progressive Workflow Approach
## 40-Minute Presentation Structure

*Focus: Teaching strategies, mindsets, and workflows rather than role-specific examples*

---

## Core Philosophy

Instead of "here's what a data analyst would do," teach:
- **How to think in Vibe Coding terms**
- **Progressive complexity: from simple to sophisticated**
- **Real pain points and how to overcome them**
- **Universal strategies that work across roles**

---

## Presentation Structure (40 minutes)

### **Part 1: Foundations (10 minutes)**

#### 1.1 What is Vibe Coding? (3 min)
- **Definition**: Conversational, iterative development with AI as a partner
- **Not**: Giving up control or blindly accepting code
- **Is**: Rapid prototyping, learning, and refinement
- **Key mindset shift**: From "I need to know how" to "I need to articulate what"

#### 1.2 The Vibe Coding Workflow (4 min)
Show the **core loop**:
```
Describe → Generate → Test → Refine → Repeat
```

**Live demo**: Show a 2-minute iteration cycle:
- "Make me an HTML page with a button that changes color"
- Test it
- "Now make it cycle through 5 colors"
- Test it
- "Add a reset button"

**Key lesson**: Each step is small, testable, and builds on the last

#### 1.3 Why Browser-Based? (3 min)
- Works on managed laptops
- No installation barriers
- Instant feedback
- Safe sandbox (data stays local)
- Surprisingly powerful (can handle CSV, APIs, complex logic)

---

### **Part 2: Progressive Complexity - Three Levels (20 minutes)**

#### **Level 1: "The Quick Win" (6 minutes)**
*Complexity: Beginner - Single-purpose tools*

**Strategy**: Start with one clear goal
- ✅ "Load a CSV and show it as a table"
- ✅ "Filter a list by typing"
- ✅ "Convert text to uppercase"

**Live Demo**: Build a simple CSV viewer
```html
Goal: "I want to drag-drop a CSV and see it as a table"
```

**Things to keep in mind**:
- Be specific about inputs and outputs
- Test with small data first
- Ask for explanations of any confusing parts

**Common Pain Points**:
- 😫 Vague requests → "Make something to check products"
- ✅ Specific requests → "Show a table of products where the price is missing"

**The Power**:
- In 5 minutes, you have a working tool
- No waiting for IT
- Can iterate immediately

---

#### **Level 2: "The Practical Tool" (7 minutes)**
*Complexity: Intermediate - Multi-step workflows*

**Strategy**: Combine inputs, logic, and outputs
- ✅ "Load data, validate it, highlight issues"
- ✅ "Compare two datasets and show differences"
- ✅ "Generate a report with charts"

**Live Demo**: Build a data validator
```html
Goal: "Load a CSV, check if required columns exist,
      flag rows where price is 0 or missing,
      show results in a color-coded table"
```

**Things to keep in mind**:
- Break complex requests into phases
- Validate each phase before moving on
- Ask AI to explain the logic: "Why did you use this approach?"

**Common Pain Points**:
- 😫 Everything at once → Overwhelming, hard to debug
- ✅ Incremental building → "First show the table. Now add validation. Now add highlighting."
- 😫 Accepting code blindly → You don't understand it
- ✅ Asking for explanations → "What does this .filter() do?"

**The Power**:
- You're building real business tools
- You understand what you built
- You can modify it later

---

#### **Level 3: "The Sophisticated Solution" (7 minutes)**
*Complexity: Advanced - Reusable, maintainable code*

**Strategy**: Think about edge cases, user experience, and maintainability
- ✅ "Handle errors gracefully"
- ✅ "Add export functionality"
- ✅ "Make it configurable"
- ✅ "Document how it works"

**Live Demo**: Enhance the validator
```html
Goal: "Add error handling if the CSV is malformed,
      let users configure which columns are required,
      add an export button for flagged rows,
      include instructions for the next person"
```

**Things to keep in mind**:
- Use AI for code review: "What edge cases am I missing?"
- Ask for best practices: "How would you make this more maintainable?"
- Request documentation: "Add comments explaining each section"
- Think about the next user: "What would confuse someone new?"

**Common Pain Points**:
- 😫 Feature creep → Tool becomes complex and brittle
- ✅ Focused iteration → Add one improvement at a time
- 😫 No error handling → Tool breaks on unexpected input
- ✅ Defensive coding → "What if the file is empty? What if columns are missing?"
- 😫 Unmaintainable code → You can't modify it 3 months later
- ✅ Clean, documented code → Future you (or a colleague) can understand it

**The Power**:
- You've created something reusable
- Others can benefit from your tool
- You're thinking like a developer

---

### **Part 3: Strategies & Best Practices (7 minutes)**

#### 3.1 Prompting Strategies (3 min)

**Bad prompts vs Good prompts**:

| ❌ Vague | ✅ Specific |
|---------|------------|
| "Make a data tool" | "Make an HTML page where I can upload a CSV and see products with missing images" |
| "Fix this" | "This code shows 'undefined' when the price column is empty. How do I handle that?" |
| "Make it better" | "Add error messages when the file format is wrong, and show them in red text" |

**Progressive refinement**:
1. Start broad: "I need to check product data"
2. Add details: "Specifically, I want to find products where the description is under 50 characters"
3. Refine UX: "Show those products in a list, with a count at the top"
4. Polish: "Add a search box to filter the list"

#### 3.2 Code Review with AI (2 min)

**Teach AI to be your reviewer**:
- "Review this code for clarity and best practices"
- "What edge cases am I not handling?"
- "Is there a simpler way to do this?"
- "Explain what this function does like I'm a junior developer"

**Live example**: Take working code and ask for review

#### 3.3 Debugging with AI (2 min)

**When things break**:
- ✅ Copy the error message → "I got this error: [paste]. What does it mean?"
- ✅ Describe the behavior → "When I click the button, nothing happens. Here's my code:"
- ✅ Show what you expected → "This should filter the table, but it shows all rows"

**Key principle**: AI is patient. It won't judge. Use it to learn.

---

### **Part 4: Mindset & Value Proposition (3 minutes)**

#### How to Think About Value

**For any business problem, ask**:
1. **Am I doing this repeatedly?** → Automate it
2. **Is this taking too long?** → Speed it up
3. **Am I making mistakes?** → Add validation
4. **Could others benefit?** → Make it reusable

**Examples from any role**:
- "I check this spreadsheet every week for errors" → Build a checker
- "I need to transform this data format" → Build a converter
- "I'm not sure if this logic is correct" → Ask AI to review
- "I want to learn how this works" → Ask AI to teach you

#### The Real Power of Vibe Coding

**It's not about replacing developers**, it's about:
- ✅ **Prototyping** ideas quickly before requesting formal development
- ✅ **Learning** programming concepts through doing
- ✅ **Autonomy** for solving small problems yourself
- ✅ **Communication** - you can describe problems more precisely to developers
- ✅ **Collaboration** - understanding code helps you work with technical teams

**Claude Code specifically adds**:
- Workspace awareness (understands your project structure)
- File operations (can edit multiple files)
- Terminal access (can run tests, builds, git)
- Better for developers extending Vibe Coding to real projects

---

### **Part 5: Wrap-up & Hands-on (5 minutes)**

#### Key Takeaways (2 min)
1. **Start small** - One feature at a time
2. **Be specific** - Clear inputs, outputs, and goals
3. **Iterate** - Test, refine, repeat
4. **Ask for help** - Use AI as a reviewer and teacher
5. **Think value** - Solve real problems, not toy examples

#### Privacy & Safety (1 min)
- ⚠️ Never paste sensitive data (customer info, credentials, private keys)
- ✅ Use sample data or anonymized exports
- ✅ Browser-based tools keep data local
- ✅ Review generated code before running

#### Hands-on Challenge (2 min)
"Think of something you do repeatedly in your job that involves checking, transforming, or visualizing data. After this session, try describing it to ChatGPT or Claude Code and see what happens."

**Provide starter template**: A blank HTML file with file upload boilerplate

---

## Why This Approach Works

✅ **Universal**: Doesn't require domain expertise in specific roles
✅ **Progressive**: Builds from simple to complex naturally
✅ **Honest**: Addresses real pain points (vague prompts, debugging, feature creep)
✅ **Empowering**: Shows how to think, not just what to build
✅ **Practical**: Each level produces something useful
✅ **Educational**: Teaches programming concepts without being a programming course

---

## Optional: Demo Flow Suggestion

If you want to show **one continuous example** that grows through all three levels:

**Level 1**: "Make an HTML page that loads a CSV and displays it"
**Level 2**: "Now highlight rows where column X is empty"
**Level 3**: "Add error handling, export, and documentation"

This shows the same tool evolving, which reinforces the **iterative** nature of Vibe Coding.

---

## Materials to Prepare

1. **Starter template**: Blank HTML with file upload boilerplate
2. **Sample CSV**: Fake product data (non-sensitive)
3. **Slide deck**: High-level points (keep it minimal, live-code the rest)
4. **Cheat sheet**:
   - Good prompt patterns
   - Common debugging phrases
   - Code review questions
5. **Post-session resource**: Link to Claude Code docs, vibe coding tips

---

## Bonus: Addressing Claude Code Specifically

In the wrap-up, briefly explain:

**ChatGPT/Claude in browser**: Great for standalone tools
**Claude Code (this IDE extension)**: Great when you want to:
- Work with existing codebases
- Run tests or builds
- Manage multiple files
- Use version control (git)
- Get deeper into development workflows

"If today excites you and you want to go deeper, explore Claude Code. It's Vibe Coding for real software projects."
