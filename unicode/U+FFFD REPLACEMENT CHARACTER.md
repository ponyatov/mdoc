# `�`
## U+FFFD REPLACEMENT CHARACTER

Second, we convert the bytes in the buffer to a string and print that string. The [[from_utf8_lossy]] function takes a `&[u8]` and produces a `String` from it. The “lossy” part of the name indicates the behavior of this function when it sees an invalid UTF-8 sequence: it will replace the invalid sequence with `�`, the [[unicode/U+FFFD REPLACEMENT CHARACTER]]. You might see replacement characters for characters in the buffer that aren’t filled by request data.
