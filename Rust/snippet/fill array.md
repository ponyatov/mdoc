# fill array

- https://www.reddit.com/r/rust/comments/8s2v0z/benchmarks_filling_up_an_array/
- https://users.rust-lang.org/t/fastest-way-to-zero-an-array/39222

```Rust
const BG: u32 = 0xFF222222;

CANVAS.iter_mut().for_each(|m| *m = BG);
```
