# Rust/VM
## Stack-based [[Virtual Machine]]

## `enum Cmd {}`

```Rust
#[derive(Copy, Clone, Debug)]
#[repr(u8)]
enum Cmd {
    Unused = 0x00,
    Nop = 0x90,
    Bye = 0xFF,
}
```

## `M`emory

```Rust
/// memory size, bytes
const MSZ: usize = 0x10;

/// memory
static mut M: [Cmd; MSZ] = [Cmd::Unused; MSZ];

/// compiler pointer
static mut CP: usize = 0;

/// instruction pointer
static mut IP: usize = 0;
```

## `dump()`

![[dump]]

```Rust
            if i % 0x10 == 0x08 {
                print!(" -");
            }
            // bytecode
            print!(" {:02X}", *j as u8);
            // ascii accumulate
            write!(
                ascii,
                "{}",
                match j {
                    Cmd::Unused => b'_',
                    _ => b'.',
                } as char
            )
            .unwrap();
            // ascii at end of line
            if i % 0x10 == 0x10 - 1 {
                print!("\t{}", ascii);
            }
        }
        println!("\n");
    }
}
```
