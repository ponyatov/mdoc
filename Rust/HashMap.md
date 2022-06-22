# HashMap

```Rust
use std::collections::HashMap;

type Cmd = fn() -> ();

lazy_static! {

static ref W: HashMap<&'static str, &'static Cmd> = {
	let mut m = HashMap::new();
		m.insert("?",    &(dump as Cmd));
		m.insert("dump", &(dump as Cmd));
		m.insert("nop",  &(nop  as Cmd));
		m.insert("bye",  &(bye  as Cmd));
	m };
}

pub fn dump() {
	println!("W:");
	for (i, j) in W.iter() {
		println!("\t{:?}:{:?}", i, j);
	}
}

pub fn dump() {}
pub fn nop()  {}
```
