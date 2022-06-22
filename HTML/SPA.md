# SPA
## Single Page Application

A single-page application (SPA) is a web application or website that interacts with the user by *dynamically rewriting* **the single web page** with new data from the web server, instead of the default method when a web browser loads entire new pages. The goal is faster transitions that make the website feel more like a native app.

In a SPA, a page refresh never occurs; all initial [[HTML]], [[JavaScript]], and [[CSS]] code retrieved by the browser with a single page load on start, and next all the appropriate resources are dynamically loaded and added to the page while the Web application runs, usually in response to user actions.

### SPA classification by implementation method

- **server-less**
	- browser loads a bundle of HTML/etc files from the local disk storage
		- public JS libraries can be locally bundled for a fully offline work
	- application runs using programming interfaces only available in a browser's sandbox
		- no one external data storage or services used
- **remote Web server** backend / public multiuser platform
	- backend part provides shared data storage ([[RDBMS]] or other no-[[SQL]] storages like [[MongoDB]])
	- data interchange between multiple clients including message passing
	- prerenders client state into static HTML
		- for (re)load speedup
		- publicate data for search crawlers such as Google
- **local Web backend** on the client computer
	- runs on the same device in a pair with browser
	- can hold data storage in local database or via remote connection
	- have access to hardware devices as a generic OS application in user space
	- there are no limits of using any libraries, native APIs, OS services as local backend can tunnel any of them into the browser sandbox

The local backend SPA is a most unsafe implementation as browser environment is jailbroken thus not recommended for massive application with a large scale user base.

## with [[WASM]]

https://www.youtube.com/watch?v=UY9QhGHBLzU

### using [[Rust]]
- [Single Page Applications using Rust](https://www.sheshbabu.com/posts/rust-wasm-yew-single-page-application/)

