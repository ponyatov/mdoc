# `.vscode/tasks.json`

- [[git/git]]
	- [[dev]]
	- [[shadow]]

## tasks

```json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label":          "project: install",
            "type":           "shell",
            "command":        "make install",
            "problemMatcher": []
        },
        {
            "label":          "project: update",
            "type":           "shell",
            "command":        "make update",
            "problemMatcher": []
        },
        {
            "label":          "git: shadow",
            "type":           "shell",
            "command":        "make shadow",
            "problemMatcher": []
        },
        {
            "label":          "git: dev",
            "type":           "shell",
            "command":        "make dev",
            "problemMatcher": []
        },
    ]
}
```
