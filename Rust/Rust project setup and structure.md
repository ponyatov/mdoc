# [[Rust/project setup]] and structure

First, let’s go over how to set up a basic [[Rust/project]], structure the folders, and install dependencies. If you’re coming from a [[Node.js]] background, you’ll already be familiar with using [[npm]] for package management and registry. The equivalent in Rust is called [[Rust/cargo]].

Unfortunately, as of the time of writing, cargo does not have a way to update dependencies automatically, except with a crate called [[cargo-update]] or `cargo install --force crate-name`, You can decide to write out the name and version of the dependency in the [[Cargo.toml]] file, as well.

If you don’t have Rust installed, follow the [[Rust/install|installation guide]]. Otherwise, create a new project.