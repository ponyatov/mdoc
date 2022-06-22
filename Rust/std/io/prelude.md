# `std::io::prelude`

https://doc.rust-lang.org/stable/std/io/prelude/index.html

The purpose of this module is to alleviate imports of many common I/O traits by adding a glob import to the top of I/O heavy modules:

```
use std::io::prelude::*;
```

## Re-exports

```
pub use super::BufRead;
pub use super::Read;
pub use super::Seek;
pub use super::Write;
```

- [[Rust/std/io/BufRead]]
- [[Rust/std/io/Read]]
- [[Rust/std/io/Seek]]
- [[Rust/std/io/Write]]
