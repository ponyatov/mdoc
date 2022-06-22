# `tokio`
## async layer framework

https://tokio.rs/tokio/tutorial

[[tokio]] is an asynchronous runtime for the [[Rust]] programming language. It provides the building blocks needed for writing networking applications. It gives the flexibility to target a wide range of systems, from large servers with dozens of cores to small embedded devices.

At a high level, Tokio provides a few major components:

-   A multi-threaded runtime for executing [[asynchronous]] code.
-   An asynchronous version of the standard library.
-   A large ecosystem of libraries.

## Tokio's role in your project

When you write your application in an asynchronous manner, you enable it to scale much better by reducing the cost of doing many things at the same time. However, asynchronous Rust code does not run on its own, so you must choose a runtime to execute it. The Tokio library is the most widely used runtime, surpassing all other runtimes in usage combined.

Additionally, Tokio provides many useful utilities. When writing asynchronous code, you cannot use the ordinary blocking APIs provided by the [[Rust/standard library]], and must instead use asynchronous versions of them. These alternate versions are provided by Tokio, mirroring the API of the Rust standard library where it makes sense.

## Advantages of Tokio

This section will outline some advantages of Tokio.

### Fast

Tokio is _fast_, built on top of the Rust programming language, which itself is fast. This is done in the spirit of Rust with the goal that you should not be able to improve the performance by writing equivalent code by hand.

### scalable

Tokio is _scalable_, built on top of the [[async]]/[[await]] language feature, which itself is scalable. When dealing with networking, there's a limit to how fast you can handle a connection due to latency, so the only way to scale is to handle many connections at once. With the async/await language feature, increasing the number of concurrent operations becomes incredibly cheap, allowing you to scale to a large number of concurrent tasks.

### Reliable

Tokio is built using Rust, which is a language that empowers everyone to build reliable and efficient software. A [number](https://www.zdnet.com/article/microsoft-70-percent-of-all-security-bugs-are-memory-safety-issues/) of [studies](https://www.chromium.org/Home/chromium-security/memory-safety) have found that roughly ~70% of high severity security bugs are the result of [[memory unsafety]]. Using Rust eliminates this entire class of bugs in your applications.

Tokio also focuses heavily on providing consistent behaviour with no surprises. Tokio's major goal is to allow users to deploy predictable software that will perform the same day in and day out with reliable response times and no unpredictable latency spikes.

