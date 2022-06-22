# `paint()`

## canvas

```Rust
#[no_mangle]
static mut CANVAS: [u32; W * H] = [0; W * H];
```

## fill ARGB (as [[little endian]])
```Rust
#[no_mangle]
fn paint() {
    unsafe {
		// black fill
        for i in CANVAS.iter_mut() {
            *i = 0xFF000000 | f;
        }
    }
}
```

## tartan

```Rust
use core::sync::atomic::{AtomicU32, Ordering};

static FRAME: AtomicU32 = AtomicU32::new(0);

#[no_mangle]
fn tartan() {
    let f = FRAME.fetch_add(1, Ordering::Relaxed);
    unsafe {
		// tartan pattern /dynamic using looped frame count/
        for y in 0..H {
            for x in 0..W {
                CANVAS[y * W + x] = f.wrapping_add((x ^ y) as u32) | 0xFF000000;
            }
        }
    }
}
```
