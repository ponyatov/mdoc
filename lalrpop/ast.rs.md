https://github.com/lalrpop/lalrpop/blob/master/doc/calculator/src/ast.rs

## expr

```Rust
pub enum Expr {
	Number(i32),
	Op(Box<Expr>, Opcode, Box<Expr>),
}

pub enum Opcode { Mul, Div, Add, Sub, }
```

## flagged

```Rust
use std::str::FromStr;
use ast::{Expr, Opcode}; // (0)

grammar;

pub Expr: Box<Expr> = { // (1)
	Expr ExprOp Factor => Box::new(Expr::Op(<>)), // (2)
	Factor,
};
	
ExprOp: Opcode = { // (3)
	"+" => Opcode::Add,
	"-" => Opcode::Sub,
};
```

## factor

```Rust
Factor: Box<Expr> = {
    Factor FactorOp Term => Box::new(Expr::Op(<>)),
    Term,
};

FactorOp: Opcode = {
    "*" => Opcode::Mul,
    "/" => Opcode::Div,
};
```

## termnum

```Rust
Term: Box<Expr> = {
    Num => Box::new(Expr::Number(<>)), // (4)
    "(" <Expr> ")"
};

Num: i32 = {
    r"[0-9]+" => i32::from_str(<>).unwrap()
};
```

## luna

```Rust
#[derive(Debug, Copy, Clone)]
pub enum Ex<'input> {
    Comment(&'input str),
    Num(i32),
}
```
