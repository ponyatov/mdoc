# `src/parser.lalrpop`

```Rust
use std::str::FromStr;
use crate::vm;

grammar;

pub Script = <ex*>;

ex = {
	Comment,
	Cmd,
	Hex, Bin, Dec
};

Comment:() =
	r"#.*";

Num:() = {
	r"[+\-]?[0-9]+" => {
		vm::compile_cmd(Cmd::Lit);
		vm::compile_i16(i16::from_str(<>).unwrap());
	},
}

Cmd:() = {
	"nop" => vm::compile_cmd(Cmd::Nop),
	"bye" => vm::compile_cmd(Cmd::Bye),
}
```

## simplified for [[vm.rs]]

```Rust
use crate::vm;

grammar;

pub Script = <ex*>;

ex = {
	Comment,
	Cmd,
};

Comment:() =
	r"#.*" => ();

Cmd:() = {
	r"[?]|[a-z]+" => vm::W[<>](),
}
```

## also:
- ![[make/rust#lalrpop]]
- ![[lalrpop/build.rs]]
- ![[lalrpop/cargo]]
- ![[Rust/VM]]
