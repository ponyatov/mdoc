# `main()`

```Cpp
int main(int argc, char *argv[]) {
    FILE *src = nullptr;
    printf("\n");
    arg(0, argv);
```
```Cpp
    for (int i = 1; i < argc; i++) {
        arg(i, argv);
        assert(src = fopen(argv[i], "r"));
        fclose(src);
    }
```
```Cpp
    printf("\n");
}
```
