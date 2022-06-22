# Building a Single-Threaded [[Web/Server]] in [[Rust]]

https://doc.rust-lang.org/book/ch20-01-single-threaded.html

Here is the plan to build the web server:

1.  Learn a bit about [[TCP]] and [[HTTP/HTTP]].
2.  Listen for [[TCP/connection]]s on a [[socket]].
3.  Parse a small number of [[HTTP/request]]s.
4.  Create a proper [[HTTP/response]].
5.  Improve the throughput of our server with a [[thread pool]].


We’ll start by getting a single-threaded [[Web/server]] working. Before we begin, let’s look at a quick overview of the [[Web/protocol|protocols]] involved in building web servers. The details of these protocols are beyond the scope of this book, but a brief overview will give you the information you need.

The two main protocols involved in web servers are the _Hypertext Transfer Protocol_ _([[HTTP]])_ and the _Transmission Control Protocol_ _([[TCP]])_. Both protocols are _[[request]]-[[response]]_ protocols, meaning a _[[Net/client]]_ initiates requests and a _[[Net/server]]_ listens to the requests and provides a response to the client. The contents of those requests and responses are defined by the protocols.

## [[Listening to the TCP Connection]]
## [[Reading the Request]]
