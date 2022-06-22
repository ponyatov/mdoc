# Writing a custom lexer

https://lalrpop.github.io/lalrpop/lexer_tutorial/002_writing_custom_lexer.html

Let's say we want to parse the Whitespace language, so we've put together a grammar like the following:

```Rust
pub script = <ex*>;

ex = {
	Num,
};

Num: i32 = r"[+\-]?[0-9]+" => i32::from_str(<>).unwrap();
```
