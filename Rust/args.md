# Rust/args

https://doc.rust-lang.org/book/ch12-01-accepting-command-line-arguments.html

![[Rust/allow]]

```Rust
fn arg(i: usize, v: &str) {
    println!("argv[{}] = <{}>", i, v);
}

fn main() {
    let argv: Vec<String> = std::env::args().collect();
    let argc = argv.len();
    arg(0, &argv[0]);
	for (i, v) in argv.iter().enumerate().skip(1) {
		arg(i, v);
	}
}
```

## [[Rust/file]]
## [[Rust/parsing]]
### [[Rust/lalrpop]]
