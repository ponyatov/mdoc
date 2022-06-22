# [[VM/pmem|pmem]] in Rust

- rust-pmem
	- https://docs.rs/pmem/latest/pmem/
	- https://github.com/icorderi/rust-pmem
		- https://github.com/icorderi/rust-pmem/tree/master/sys/pmem-sys
- nvml-sys
	- https://github.com/lemonrock/nvml-sys
- pmdk-sys (most fresh)
	- https://crates.io/crates/pmdk-sys

# libpmem

https://manpages.debian.org/experimental/libpmem-dev/pmem_map_file.3.en.html

```c
/// detects if the entire range `[addr, addr+len)` consists of persistent memory
int pmem_is_pmem(const void *addr, size_t len);
```

see [[Rust/FFI]]