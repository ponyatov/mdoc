## `/.vscode/settings.json`

```json
    "multiCommand.commands": [
        {
            "command": "multiCommand.f11",
            "sequence": [
                "workbench.action.files.saveAll",
                {"command": "workbench.action.terminal.sendSequence",
                    "args": {"text": "\u000D mix test && mix format \u000D"}}]
        },
        {
            "command": "multiCommand.f12",
            "sequence": [
                "workbench.action.files.saveAll",
                {"command": "workbench.action.terminal.sendSequence",
                    "args": {"text": "\u000D System.stop \u000D"}}]
        },
    ],
```
```json
    "files.exclude": {
        "docs/**":true,
        ".vscode/*.log":true,
        "deps/**":true, "_build/**":true, ".elixir_ls/**":true,
    },
    "files.watcherExclude": {
        "docs/**":true,
        "deps/**":true, "_build/**":true, ".elixir_ls/**":true,
    },
    "files.associations": {
    },
```