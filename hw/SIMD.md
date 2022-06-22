# SIMD

[[SIMD]] operations, tending to be 128 bits wide or higher, should be aligned to 16 byte boundaries for optimal code generation and performance. [[unaligned memory|Unaligned]] loads and stores may be allowed but normally these incur performance penalties.
