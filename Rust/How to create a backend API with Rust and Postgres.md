# How to create a backend [[API]] with [[Rust]] and [[Postgres]]

https://blog.logrocket.com/create-backend-api-with-rust-postgres/

Editor’s note: This post was updated 22 February 2022 to fix the connection to [[Diesel]] and make other improvements. 

There are quite a few frameworks that make it easy to create a [[REST]] [[API]] while reducing the amount of [[boilerplate]] you have to write. I personally prefer [[Rust]] because it is simple, strongly typed, extremely fast, and safer than almost any language out there.

To proceed with this tutorial, you’ll need a basic understanding of API development. You must at least understand the concept of [[CRUD]].

We’ll cover:

- [[Project requirements]]
- [[Project requirements#Terms to know|Terms to know]]
- [[Rust project setup and structure]]
- [[Creating the API endpoints]]
- [[Setting up our Postgres connection]]
- [[Using Diesel to set up our ORM]]
- [[Running our Rust API demo app]]
