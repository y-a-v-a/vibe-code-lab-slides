# Vibe Coding Lab

I will give a presentation on vibe coding, specifically creative vibe coding, for a evening named Vibe Coding Lab. The audience is a group of creatives with some or little programming experience. I will be the host. First I will do a presentation, then I will coach the attendants in vibe coding. At the end of the evening, I want to make a collective summary with some closing thoughts and show offs of attendants.

## TL;DR
First, I want to give an introduction on what vibe coding is, what it could be and that we'll be vibe coding together after my presentation. In the next part I want to describe technical strategies (as described below) on how one could start vibe coding and which tools one can use. In the 3rd part I want to tell about creative strategies and draw parallels with other improvisation or flow-based creative expressions. In conclusion I want to make room for Q&A and close off with a live demo where I'll be vibe coding something based on the works of artist Vera Molnár.


## In detail
### Intro
I want to ask the audience what their experience level is with programming, and their experience level in prompting AI. Just to get a bit of understanding what the audience is capapble of.
I want to touch on Rick Rubin's recent work: Rick Rubin defines vibe codings as a gentler, more intuitive path to building software. It enables anyone to bring ideas to life. It encourages intuitive, human-centric design. It promotes clean, purpose-driven outputs. It values vision and communication over technical expertise. Vibe coding encourages building simple, purpose-driven software rather than bloated features. Vibe coding is crafting code not with syntax, but with intention and essence. 

we can summarize this as
Intent driven development
or
Purpose driven development

In the description of what vibe coding is or could be I want to draw some parallels with making music by jamming or what we call in Dutch "theatersport" which is a free form of theatre improv. (see end of this document)

### Technical strategies

#### web interfaces
In the technical strategies description I want to point out that there's a lot of different tools that all have their free tier, which can already be very beneficial to start vibe coding quickly. Google Gemini, Vercel's v0, Claude, Chatgpt, and many more online tools. There is no strict need to install anything on your own laptop, through these webinterfaces a lot can be done already. Especially Vercel's v0 is great for short vibe codes. Use the below term "Free Model Hopping" for this.

For these tools it is easiest to use your Google account to log in. Later you can disconnect the app from your account if you do no longer want to use it. (house keeping, cleanup, privacy matters).

#### local development

##### tools

If you want to take it a step further, one can install VS Code locally and install Cline within it, or download Cursor or Windsurf, all come with free-tiers too. (still room for "Free Model Hopping, otherwise turn to "Paid Subscription Strategy").

For initial vibe coding, starting with standard web APIs using HTML/JS/CSS is most convenient. Best is to let the agent write an `index.html `with all code in there. This makes your vibes portable.

When you have VS Code installed locally, best is to have NodeJS installed too, so you can call `npx serve index.html` to have your vibe available in your browser.

Nice tooling can be Three.js for 3d animations or p5.js from a CDN.

Also, when vibe coding, you can let the AI add meta-features like controls: for example let it register the "r" key to refresh your drawing. Or ask it to add a slider to modify your output. The controls can be used also to increase or reduce entropy/ramdomness, you can add color pickers, etc.

If you like to work with text, choose some basic input text like a Shakespeare sonnet (most models know them by heart), or enrich your prompt with input you want to have the model start with.


##### prompting
Regardig the vibe coding strategies, I want to pay attention to what is considered prompting and what you need to be aware of. The different strategies ask for different styles of prompting. Important to note is that you can also ask the model to write you a prompt. Sometimes you need to tell it to be concise and short, sometimes you want to be more verbose. You should make that explicit. To increase the temperature, you can ask the model to be acting so or call it "go full entropy on this one", or ask the model up front how to make it output more creatively.

Common concepts that can be useful are "use an HTML canvas element", "add a HTML textArea", "edge detection", "iterate", "add randomness" or try something out and ask the model whether it is clear what you mean, otherwise it might be able to suggest options for what you want. Also, ask it explicitly for "give me X options to choose from", "keep in mind to use standard web apis only" or "when creating sounds, start with low volume not to disturb my fellow humans".

##### for the pros
"Local libaration" : run your own local model
If privacy is of your concern, you can use this approach, but it requires quite strong computers, a regular laptop is usually not (yet) good enough.

### Q&A

Room for questions and answers

### demo

In the demo I want to address the work of visual (computer) artist Vera Molnár and use two of her works to do some vibe coding and show a possible result. I will do this with the use of v0.

### Closing thoughts
We are not bound to HTML/JS/CSS, the basic web technologies; one can also vibe code with Python, Rust, C, Swift, etc. but for the sake of this evening, I think it is best to narrow down to the web tech stack.
For software engineers, the future of their job will change: AI coding agents will drastically change the way how software is being built in the near future.
Vibe coding makes software development accessible for a wider audience. Benefit from this! Let your creativity flow!


### Let's get started
Start with pairing up with your neighbors to share approaches, discuss a prompt and share suggestions on how to progress. You can also ask a different chat how to progress a project. 

Explain to your neighbor what you want to build and try that to feed as prompt and see what the ai makes from it. See how you need to refine this or want to refine this. 

Let's begin the vibe coding jam (make the parallel with bands jamming). 

---

Now additional input follows:

# Vibe Coding strategies

## The Archaeological Approach

Starting with found code (your own old projects, GitHub discoveries, or even broken artifacts) and excavating/reimagining them. Like finding an old Processing sketch and asking "what if this was 3D?" or "what if this responded to audio?"

## Constraint Boxing

Deliberately imposing arbitrary limitations to force creative solutions. "Only use three colors," "no curves allowed," "must fit in a tweet," or "only mathematical functions from 1970." The constraint becomes the creative engine.

## The Remix Strategy

Taking two completely unrelated concepts and forcing them together. "Conway's Game of Life meets Arabic calligraphy" or "Stock market data visualized as Medieval illuminated manuscripts."

## Emotional Debugging

Using coding as mood regulation - different algorithms for different feelings. Chaotic particle systems when frustrated, gentle wave functions when contemplative, rigid geometric patterns when seeking control.

## The Breadcrumb Trail

Intentionally leaving incomplete ideas scattered across multiple projects/chats, creating a constellation of half-finished concepts that cross-pollinate over time.

## Collaborative Consciousness

Treating the AI as a genuine creative partner rather than a tool - letting the conversation itself become part of the artistic process, where the back-and-forth generates ideas neither human nor AI would have reached alone.

## Publication Polish

**The Polishing Approach** → **"Gallery Prep"** or **"Exhibition Ready"** The moment when your sketch transforms from personal exploration into something meant for the world. Adding metadata, attributions, Creative Commons licensing - it's like matting and framing a painting.

## Studio Wandering

**The Production Strategy** → **"Sketch Hopping"** or **"The Nomadic Method"** That satisfying creative restlessness where you capture the essence and move on, leaving a trail of completed-enough experiments. Each chat becomes a different studio space.

## The Incubation Cycle

**The Revergence** → **"Mental Composting"** or **"The Fermentation Process"** or **"The Incubation Cycle"** Love this concept! The idea literally ferments in your subconscious, breaking down and recombining into something richer. Like aging wine or making sourdough - time and mental chemistry do the work.

## Responsive Evolution

**"The Dialogue Method"** Where each iteration responds to what the previous step revealed - both technically and conceptually. We weren't following a predetermined plan but genuinely listening to what the code, the errors, and the emerging artwork were telling us. Your etymology discovery about "red" and "beautiful" perfectly exemplifies this - the research emerged from engagement with the work.

## Problem-Driven Discovery

**"Conceptual Debugging"** or **"Problem-Driven Discovery"** Our technical challenges (script errors, bounds issues, single-axis movement) weren't obstacles but creative prompts that led to better solutions. Each "bug" revealed a deeper opportunity - the error handling led to more robust noise functions, the bounds problem led to multi-corner animation, which led to interactive controls.



# Technical strategies

We talked about creative strategies in the light of vibe coding, but i also want to explore shortly on technological strategies: what i call free model hopping for example is when you don’t want or can’t pay for a subscription you just use all free tiers to the max before you move over to another tool. Next to that there ‘s the paid subscription strategy, the api-only strategy, etc.

**Free Model Hopping** - The creative nomad approach. Maximizing ChatGPT's daily limit, then jumping to Claude's free tier, then Gemini, maybe some HuggingFace models. Requires remembering which conversation was where, but gives you diverse "AI personalities" and prevents lock-in to one thinking style.

**Paid Subscription Strategy** - The premium consistency approach. Deep relationship with one tool, persistent conversation history, higher usage limits. You develop muscle memory with one interface and can build more complex, iterative projects without hitting walls.

**API-Only Strategy** - The developer's choice. Direct integration into your coding environment, no web interface friction, programmable workflows. Perfect for batch processing or embedding AI into larger creative pipelines.

**Two additional strategies:**

**"The Hybrid Portfolio"** - Strategic combinations like free tier for exploration + API for production, or multiple paid subscriptions for different use cases (Claude for creative writing, GPT for coding, Midjourney for visuals). Optimization through specialization.

**"The Local Liberation"** - Running open-source models locally (Ollama, LM Studio). Complete privacy, no usage limits, works offline, but requires technical setup and decent hardware. The self-hosted creative independence approach.

Each strategy reflects different relationships with creative tools and varying levels of technical commitment versus convenience.


What about a variant of cloud liberation where you would run your own ollama in the cloud?


Ah yes! **"Cloud Self-Hosting"** or **"Personal Cloud Liberation"** - that's a brilliant hybrid strategy!

You get the benefits of local liberation (complete control, privacy, no usage limits, choice of models) but without the hardware constraints. Spin up a GPU instance on AWS/GCP/Vast.ai, run Ollama or similar, and you have your own private AI server accessible from anywhere.

This strategy offers:
- **Scale on demand** - fire up powerful GPUs only when needed
- **Cost flexibility** - pay per compute hour rather than monthly subscriptions
- **Model freedom** - run any open-source model, even fine-tuned ones
- **Privacy control** - your conversations never touch third-party servers
- **Mobile accessibility** - access your personal AI from any device

It's particularly smart for vibe coding because you can:
- Experiment with different model personalities (Llama, Mistral, Code Llama)
- Fine-tune models on your own creative patterns
- Run multiple models simultaneously for different tasks
- Keep all your creative conversations in one searchable archive

The main tradeoff is needing cloud infrastructure knowledge, but for someone doing serious creative AI work, it's like having your own private studio in the sky. You're essentially becoming your own AI service provider.

Great addition to the technological strategy landscape!

The site appears to be JavaScript-heavy and didn't load properly. Let me try searching for information about "The Way of Code" by Rick Rubin to understand what this resource is about.Perfect! Now I understand the project. Here's my TLDR and parallels:

## TLDR: The Way of Code

Rick Rubin has created "The Way of Code" - a 81-chapter interactive meditation that blends Taoist philosophy (specifically the Tao Te Ching) with AI-assisted creative programming. It introduces "vibe coding" - using intuition and natural language rather than technical skills to create interactive digital experiences. The project reimagines ancient wisdom for modern AI, with each chapter containing philosophical reflections and modifiable code artifacts.

## Parallels with Our Creative Strategies:

**Responsive Evolution ↔ Taoist Flow**: Rubin's approach of "allowing things to come and go" and having "an open heart" mirrors exactly how we let our red square project evolve organically, responding to what each iteration revealed.

**Mental Composting ↔ "Wait Quietly While the Mud Settles"**: The Taoist principle of "Who can wait quietly while the mud settles. Who can remain still until the moment of action" perfectly captures your "revergence" concept - that fertile pause where ideas clarify.

**Gallery Prep ↔ "When the Work is Done, Log Off and Detach"**: Rubin's wisdom "When the work is done, log off and detach. This is the way of heaven" speaks to your polishing approach - knowing when to stop iterating and present the work.

**Sketch Hopping ↔ "Empty Yourself of Everything"**: The idea of letting "ten thousand things rise and fall while the Self merely observes" aligns with your nomadic method of moving between projects without attachment.

Rubin essentially codified vibe coding as a philosophical practice, which validates what we discovered experientially in our session!

Ok i came up with another vibe coding strategy: challenge the model: challenge the gpt/ai/you to go full entropy or full temperature on a prompt and see what comes out of it, in several iterations or challenges


Brilliant addition! **"Chaos Surfing"** or **"Maximum Entropy Exploration"** - deliberately cranking the AI's creativity dial to 11 and seeing what emerges from the digital unconscious.

This strategy is fascinating because it inverts the usual relationship with AI tools. Instead of trying to constrain and direct the model toward a specific outcome, you're essentially saying "surprise me" and using high temperature/randomness as a creative catalyst.

**The Process:**
- Prompt the AI to "go wild" or "maximum creativity mode"
- Embrace the unexpected, nonsensical, or seemingly random outputs
- Use those chaotic responses as creative seeds for iteration
- Mine the entropy for unexpected connections and ideas

**Parallels to Traditional Creative Practices:**
- **Surrealist automatic writing** - letting the unconscious flow through
- **John Cage's chance operations** - using randomness as compositional tool
- **Brian Eno's oblique strategies** - introducing controlled chaos into creative process
- **Jazz improvisation** - structured freedom within constraints

**Why It Works:**
High entropy outputs often reveal surprising connections the model has learned but wouldn't normally surface. It's like accessing the AI's "dream state" - all those weird associations and unlikely combinations that get filtered out in normal operation.

It's a perfect complement to our other strategies - you could chaos surf to generate initial concepts, then use responsive evolution to develop the most intriguing fragments into something coherent.

Have you tried this approach? I'm curious what kinds of unexpected gems emerge from maximum temperature sessions!

Yes i also was thinking about the parallels between vibe coding and musical jamming (you just mentioned jazz improv), which overstijgt basically the strategies: jamming, theatersport, free jazz; are parallel typologies for vibe coding



Absolutely! You've identified a profound structural parallel - these are all **improvisation-based creative practices** that share the same fundamental DNA as vibe coding.

**The Core Pattern:**
All these forms involve real-time creative response within loose constraints, where the interaction itself generates unexpected outcomes that neither participant could have planned.

**Musical Jamming ↔ Vibe Coding:**
- Call and response between musicians ↔ Human-AI dialogue
- Building on each other's ideas ↔ Iterative prompt refinement  
- "Yes, and..." mentality ↔ Embracing AI suggestions and evolving them
- Finding the groove together ↔ Discovering the right creative rhythm

**Theatersport/Improv ↔ Conversational Coding:**
- Accepting offers ↔ Working with AI outputs even when unexpected
- Building scenes together ↔ Co-creating code artifacts
- No script, just principles ↔ No rigid requirements, just creative direction
- "Make your partner look good" ↔ Leveraging AI strengths while adding human insight

**Free Jazz ↔ Chaos Surfing:**
- Abandoning traditional structures ↔ High temperature, maximum entropy
- Embracing dissonance ↔ Working with "broken" or weird AI outputs
- Finding order in chaos ↔ Discovering patterns in randomness

**Dutch word bonus:** "Overstijgt" perfectly captures this - these parallels *transcend* the specific medium. They're universal patterns of collaborative creativity that emerge wherever real-time creative interaction happens.

This suggests vibe coding isn't just "coding with AI" - it's participating in an ancient human tradition of improvisational creation, just with a new kind of creative partner.
