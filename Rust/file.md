# file read/write

also: [[Rust/parsing]]

## [Reading a File](https://doc.rust-lang.org/book/ch12-02-reading-a-file.html#reading-a-file)

```Rust
for (i, v) in argv.iter().enumerate().skip(1) {
	arg(i, v);
	let src = std::fs::read_to_string(v).expect(v);
	println!("src:{:?}", src);
}
```

next: [[Rust/lalrpop]]