# second brain
https://aseemthakar.com/how-to-build-a-second-brain-as-a-software-developer/

Say you’re hungry. Where’s the first place you look for food? The farm where it’s grown, the forest where you can forage for it, the supermarket or your own pantry and fridge first?

Unless you’re living in pre-industrial times, your decision looks something like this:

hat last step is probably redundant in recent history but the main idea still stands. You don’t go straight to the ultimate source of food when you’re hungry. You look for the closest local link in your food supply chain (which is usually your own pantry/fridge) before moving up the chain if no food exists there.

The thing is, while we apply this process to food, we don’t apply it to our information/content diets. As software developers/engineers, this has far-reaching consequences to our productivity and mental health. We’re knowledge workers, so our consumption of information is as essential as food for us to survive and thrive.

That’s where the concept of a “second brain” comes in.

## What is a second brain?

The phrase _“second brain”_ was coined by productivity expert [Tiago Forte](https://fortelabs.co/). In his words:

> _Building a Second Brain is an integrated set of behaviors for turning incoming information into completed creative projects. Instead of endlessly optimizing yourself, trying to become a productivity machine that never deviates from the plan, it has you optimize an external system that is more reliable than you will ever be. This frees you to imagine, to wonder, to wander toward whatever makes you come alive here and now in the moment._

Essentially, a second brain is a **personal knowledge management system** that serves as an extension of your mind so you don’t have to think as hard or remember as much. You offload thinking and remembering to your private second brain.

Like Sherlock Holmes’ [“mind palace”](https://www.psychologytoday.com/us/blog/the-memory-factory/202105/use-sherlock-holmes-mind-palace-technique-improve-your-memory), it’s a place to store all of your lingering thoughts and curate the information you consume on a daily basis from books, the Internet and other sources so that you don’t get overwhelmed with unnecessary info and take action with the knowledge that matters.

## Why build a second brain?

Most, if not all, software developers have a shot-gun approach to finding the information we need to solve issues or progress/learn new things. If we have a problem we need help with, we’ll usually follow a pseudo-supply chain that goes something like this:

![](https://aseemthakar.com/wp-content/uploads/2021/09/Untitled2-1024x483.webp)

As you can probably tell, there’s no “local link” in this supply chain that we’ve developed. Google is the closest link, meaning we use the massive, unsorted network that is the Internet and Google’s interpretation of our problem as our “second brain”.

By scouring the massive Q&A databases of StackOverflow, the millions of videos and articles on YouTube and personal blogs or complex developer documentation, we forget one thing.

**We’re going directly to the farm/forest every time we need food.**

A “second brain” is the solution to this problem.

By building our own “second brain”, we can create our own local link in the information supply chain that holds relevant information optimised for our needs instead of relying on Google and scouring the Internet every time.

Let’s look at how you can build one.

## How to build a second brain as a software developer

### Step 1 – Choose an application

You need something to serve as the system that houses your second brain.

There are [15 qualities the ideal second brain system has](https://fortelabs.co/blog/the-essential-requirements-for-choosing-a-notes-app-as-your-second-brain/) as specified by Tiago Forte (the original creator of the second brain concept), split into deal breakers, must-haves and nice-to-haves:

> **_Deal breakers_**
> 
> _1. Quick capture and editing_
> 
> _2. Scales to thousands of notes without performance lag_
> 
> _3. Basic formatting options_
> 
> _4. Strong search feature_
> 
> _5. Ability to handle images and attachments_
> 
> _6. Private space, with public sharing_

> **_Must-haves_**
> 
> _7. At least 3 levels of hierarchy_
> 
> _8. Many ways to capture information_
> 
> _9. Native and web versions_
> 
> _10. Capturing and syncing across multiple devices_
> 
> _11. Exportable as plain text_

> **_Nice-to-haves_**
> 
> _12. Side-by-side viewing_
> 
> _13. Bullets or lists_
> 
> _14. Automatic date stamps_
> 
> _15. Tags_

While it’s possible to use manual methods like a notebook or sticky notes, it’s difficult to scale these to thousands of notes, handle images and code snippets, allow portability for quick capture/editing and most importantly allow for searchability.

Hence why a digital system is essential (especially in the context of software development).

At time of writing, there are heaps of digital note-taking apps in the market. But, for the purposes of this article, I’m just going to list the ones that are most widely used as “second brains”/personal knowledge management systems:

-   [Notion](https://www.notion.so/)
-   [Evernote](https://evernote.com/)
-   [Roam Research](https://roamresearch.com/)
-   [OneNote](https://www.microsoft.com/en-au/microsoft-365/onenote/digital-note-taking-app?ms.url=onenotecom&rtc=1)
-   _**Honourable mentions:** [Workflowy](https://workflowy.com/hi/), [Obsidian](https://obsidian.md/), [Supernotes](https://supernotes.app/)_

All of the listed apps meet the requirements needed for a second brain/personal knowledge management system. Each app works in different ways and has its benefits and drawbacks so pick the one that works best for you. Your second brain is for your eyes and use, not someone else’s.

_If you use **Notion, Obsidian or Evernote**, you might be interested in [**Tressel**](https://tressel.xyz/) – an app that seamlessly syncs your info from around the web (from places like Twitter and Reddit) to your note-taking apps_

#### **_Related reading_**

[

![](https://fortelabs.co/wp-content/uploads/2018/10/notes-apps-1024x705.png)

The Essential Requirements for Choosing a Notes App as Your Second Brain – Forte Labs

I’ve argued strongly for the category of notes apps as the ideal home of your personal knowledge library, which I call a “second brain.” I believe there are ten core capabilities that digital apps uniquely provide to the note-taking process: Searchability: type in a few characters and see everything that matches, regardless of where it’s … Read more

![](https://i1.wp.com/fortelabs.co/wp-content/uploads/2020/02/cropped-cropped-Icon_Red-1.png?fit=32%2C32&ssl=1)fortelabs.co



](https://fortelabs.co/blog/the-essential-requirements-for-choosing-a-notes-app-as-your-second-brain/)

[

![](https://nesslabs.com/wp-content/uploads/2020/08/note-taking-app-architect-gardener-librarian-banner.jpg)

How to choose the right note-taking app

There’s a note-taking app for everyone. The challenge: it’s hard to decide which one’s the best for your use case and your note-taking style.

![](https://nesslabs.com/wp-content/uploads/2018/09/cropped-favicon-ness-32x32.png)nesslabs.com



](https://nesslabs.com/how-to-choose-the-right-note-taking-app)

### Step 2 – Create a general-purpose structure/wireframe

Next, we need to structure our chosen application to allow us to capture, sort and retrieve relevant information efficiently. There’s two organisational systems that stand out here:

-   [Zettlekasten](https://zettelkasten.de/introduction/)
-   [The PARA Method](https://fortelabs.co/blog/para/) _(recommended)_

The [Zettlekasten](https://zettelkasten.de/introduction/) approach advocates for a disciplined approach to note-taking. Notes are captured “atomically” in the shortest and most modular manner possible. Once captured and split into components, you then search for other relevant notes you’ve taken in the past to link them to. Finally, you update your overall network of notes to make your recently captured note accessible. Having a network of notes is invaluable but it requires a lot of time and effort.

[The PARA Method](https://fortelabs.co/blog/para/) reduces the fatigue of information capture. There’s no linking needed. It involves simply splitting all information into four categories based on purpose and timely relevance:

-   _(Tasks) – info stored in Projects or in memory_
-   **Projects** – goals to be achieved with deadlines – _info needed now_
-   **Areas** – standards/broad categories with no end date – _info needed a bit later_
-   **Resources** – topics/themes of ongoing interest – _info needed someday_
-   **Archives** – info that you won’t use for a while and doesn’t fit into the other three categories – _info not really needed/held just-in-case_

These categories are all nested. **Tasks** are nested under **Projects** which fall under **Areas** which fall under **Resources**, with **Archives** serving as the catch-all category.

Projects serve as your short-term memory and hold information you’ll likely need now/soon while the deeper you go (i.e. Areas → Resources → Archives), the later the information is needed.

It’s also a good idea to have an entrypoint (or Inbox) for all of your captured info before it’s sorted into one of the above categories.

#### **_Related reading_**

[

![](https://images.unsplash.com/photo-1491309055486-24ae511c15c7?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=2000&fit=max&ixid=eyJhcHBfaWQiOjExNzczfQ)

Remembering what you Read: Zettelkasten vs P.A.R.A.

I spent over a year researching better ways to take notes and remember what I read. Here’s what I found.

![](https://aseemthakar.com/favicon.png)www.zainrizvi.io



](https://www.zainrizvi.io/blog/remembering-what-you-read-zettelkasten-vs-para/)

### Step 3 – Create data structures for captured information

The above general-purpose wireframes describe **where to position and sort information**, but not **how to describe information** to meet our needs. We need to provide the right metadata in our captured information so that it can be easily organized and retrieved later.

This single article can never hope to encapsulate every single piece of information needed by every software developer. Still, here’s some examples of information most developers need and how they can effectively store it.

#### **Q&As – _building your own StackOverflow_**

Q&As are the most raw and direct form of information. Our search for information starts based on a question we’re looking to have answered or a problem we want solved. Q&As can typically be found on sites like StackOverflow or developer forums and online communities.

-   **Question** – the question _you_ had (not necessarily the question the source author had)
-   **Answer** – the answer that helped _you_ (if possible, rewrite the original answer to be more relevant to your original question)
-   **Tags** – keywords to make this easily search-able in future
-   **Links/related reading** – links to other useful information (keep your notes as lean as possible)
-   _(Date) – should be automatically captured by your note-taking app_

#### **Code snippets and boilerplates**

Code snippets and boilerplates are extremely actionable and designed to be copy-pasted in specific contexts. When considering the data structure for these, note that code from one language and one context cannot necessarily be used in projects with a different language/context.

Also, unlike Q&As, code snippets can’t be easily searched for based on their text contents. That’s why it’s important to put all snippets in a general structure (like a Notion database or a table with filters) that allows you to search based on language, type and context. For example, you should be able to search for all your **front-end JavaScript** snippets with a **styling context**.

-   **Language** – _e.g. JavaScript, Python, Go_
-   **Type** – _e.g. front-end, back-end, deployment/DevOps_
-   **Context** – create your own multi-select categories to further describe the purpose of the snippet _e.g. is this to do with styling, making API calls, creating utility functions etc._
-   _(**Description**) – a text-based description of the snippet_
-   **Snippet** – the actual snippet/boilerplate (wrapped in code tags)
-   _(**Dependencies**) – link to any other code or packages that are relevant or that you need to use this snippet_

#### **Documentation templates**

These are basically text snippets. Templates for every bit of documentation your project needs like READMEs, CONTRIBUTING files, code review processes or test plans should be stored here.

While these are text-based, searching for a specific document (like a README) is still not easy as it sounds. That’s why, like code snippets, it’s important to keep documentation templates in a general structure that’s able to be filtered.

-   **Type** – _e.g. front-end, back-end, deployment/DevOps_
-   **Location** – where does this template go? _e.g. repository, project management, client_
-   **Title** – _e.g. README, CONTRIBUTING, QA plan_
-   **Template** – the actual template
-   _(**Description**) – a text-based description of the snippet_

#### **Resources**

Resources are the least actionable, but most educative forms of information. They are the videos, courses, tutorials (and more) that you look for when you want to learn more about a broad area rather than fix a specific issue.

For instance, if you wanted to learn about Python, you’d save the best Python learning resources (i.e. tutorials, videos, articles and courses) you’ve come across in your second brain. This way, if you ever want to learn about Python in the future, you don’t have to repeat your search.

Since resources are your version of longer-term memory, you have to put some effort into making them easily retrievable in future.

-   **Name** – a search-optimized name of the resource
-   **Author** – the original author of the resource
-   **Category** – _e.g. video, article, book, tweet, course, website_
-   **URL** – where can you access this resource _(note – you don’t want the entire resource in your database, you just want a link to minimise bloat)_
-   **Status** – have you completed reviewing this resource?
-   **Tags** – keywords not in the name to make this easily search-able in future
-   _**(Rating)** – how effective this resource is at solving your problem or teaching you something_

### Step 4 – Determine your information workflows

The priority now is figuring out:

-   How you’ll approach **finding** the information you need to solve problems
-   How information will be **sorted** once it arrives into your second brain

#### **Finding info**

This is the part where you add your second brain to your information supply chain. Instead of going directly to Google when you have a particular issue, you now go to your second brain first.

Since we’ve neatly organised our content based on its purpose, relevance and timeliness, here’s our workflow for finding the information we need to solve problems we come across:

![](https://aseemthakar.com/wp-content/uploads/2021/09/Untitled3-1024x454.webp)

#### **Sorting info**

Ideally, you’ll have an inbox section where all incoming captured info is preliminarily stored. From here, it needs to be sorted into the appropriate category (based on the PARA method).

Depending on how relevant and timely it is, it needs to go into the appropriate project, area or resource umbrella.

![](https://aseemthakar.com/wp-content/uploads/2021/09/Untitled4-1024x128.webp)

For instance, if you’re currently working on a MERN stack project, then a code snippet on _“How to set up MongoDB with Express”_ is very relevant and should go in the appropriate Project section. On the other hand, a tutorial on _“How to create a REST API with Django”_ is less relevant and might go in the Resources section for future use.

You’ll ideally want to sort daily to review your incoming information and prevent [information overload](https://www.interaction-design.org/literature/article/information-overload-why-it-matters-and-how-to-combat-it).

#### **_Related reading_**

[

Tressel | Save tweets & threads to Notion, Obsidian & Evernote

A web app to save tweets & threads from Twitter to Notion, Evernote & Obsidian for free (with premium features available)

tressel.xyz



](https://tressel.xyz/)

## **Summary – flowchart**

![](https://aseemthakar.com/wp-content/uploads/2021/09/Untitled5.webp)

---

This is by no means a comprehensive guide. I fully acknowledge that I may have missed out on a lot of information you need to get a well-oiled second brain system working. For a more complete, general-purpose guide on how to build a second brain, check out [Tiago Forte’s course](https://www.buildingasecondbrain.com/). He’s far more of an authority on personal knowledge management/second brain systems than I am.

My main goal with this article was to show all developers that the shot-gun approach of Googling every single problem they come across is inefficient and unproductive. I hope I accomplished that and showed you a better way of doing things.

## Further reading

[

![](https://i0.wp.com/fortelabs.co/wp-content/uploads/2019/02/7.001.jpeg?fit=1920%2C1080&ssl=1)

Building a Second Brain: An Overview – Forte Labs

This is a summary of Building a Second Brain, my online course on capturing, organizing, and sharing your knowledge using digital notes. How many brilliant ideas have you had and forgotten? How many insights have you failed to take action on? How much useful advice have you slowly forgotten as the years have passed? We … Read more

![](https://i1.wp.com/fortelabs.co/wp-content/uploads/2020/02/cropped-cropped-Icon_Red-1.png?fit=32%2C32&ssl=1)fortelabs.co



](https://fortelabs.co/blog/basboverview/)

[

![](https://aseemthakar.com/how-to-build-a-second-brain-as-a-software-developer/images/favicon-ma.svg)

Building a Second Brain: The Illustrated Notes

Maggie is a designer, illustrator, and anthropologist. This is her digital garden for growing visual explanations about design, culture, and programming

maggieappleton.com



](https://maggieappleton.com/basb)

