# Rust FFI with C code

```use ::libc::*```

|C|->|Rust|
|-|-|-|
|`const char *id`||`id: *const c_char`|
|`bool clean` ||`clean: u8`|
|`void *obj`||`obj: *mut c_void`|

- https://stackoverflow.com/questions/24191249/working-with-c-void-in-an-ffi
- 
