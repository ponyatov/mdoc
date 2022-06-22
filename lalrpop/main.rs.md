# `src/main.rs`

```Rust
#[macro_use]
extern crate lalrpop_util;
lalrpop_mod!(pub parser);

fn main() {
	println!("{:?}",
		parser::TermParser::new().parse("08")
	);
	for (i, v) in argv.iter().enumerate().skip(1) {
		arg(i, v);
		let src = std::fs::read_to_string(v).expect(v);
		parser::ScriptParser::new().parse(&src).unwrap();
	}
}
```

### next: [[gotham]]