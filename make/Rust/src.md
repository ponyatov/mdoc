```Makefile
# \ src
R += src/main.rs src/lib.rs src/config.rs
R += build.rs src/parser.lalrpop src/vm.rs
S += $(R) Cargo.toml
J += static/js.js
S += $(J) static/css.css
```
