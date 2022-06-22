# `.vscode/c_cpp_properties.json`
## compiler path and IntelliSense settings

[[ms-vscode.cpptools]]


- [[compilerPath]]
- [[workspaceFolder]]
- [[includePath]]
- [[defines]]
- [[cStandard]]
- [[cppStandard]]
- [[intelliSenseMode]]

```json
{
    "configurations": [
        {
            "name": "Win32",
            "includePath": [
                "${workspaceFolder}/src",
                "${workspaceFolder}/tmp"
            ],
            "defines": [
                "_DEBUG",
                "UNICODE",
                "_UNICODE"
            ],
            "cStandard": "c11",
            "cppStandard": "c++11",
            "intelliSenseMode": "windows-msvc-x64"
        },
        {
            "name": "Linux",
            "includePath": [
                "/usr/include",
                "${workspaceFolder}/src",
                "${workspaceFolder}/tmp"
            ],
            "defines": [],
            "compilerPath": "/usr/bin/g++",
            "cStandard": "c11",
            "cppStandard": "c++11",
            "intelliSenseMode": "linux-clang-x64"
        }
    ],
    "version": 4
}
```
