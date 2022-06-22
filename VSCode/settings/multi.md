## multi
#VSCode 

```json
    "multiCommand.commands": [
        {
            "command": "multiCommand.f11",
            "sequence": [
                "workbench.action.files.saveAll",
                {"command": "workbench.action.terminal.sendSequence",
                    "args": {"text": "\u000D clear ; LANG=C make format \u000D"}}]
        },
        {
            "command": "multiCommand.f12",
            "sequence": [
                "workbench.action.files.saveAll",
                {"command": "workbench.action.terminal.sendSequence",
                    "args": {"text": "\u000D clear ; LANG=C make all \u000D"}}]
        },
    ],
```
