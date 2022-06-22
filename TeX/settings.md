#VSCode #TeX
```json
    // TeX
	"latex-workshop.latex.autoBuild.run": "onSave",
	// "latex-workshop.latex.autoBuild.run": "never",
	"latex-workshop.view.pdf.viewer": "tab",
    // "latex-workshop.intellisense.package.enabled": true,
	"latex-workshop.latex.texDirs": [
		"%WORKSPACE_FOLDER%/doc",
		"%WORKSPACE_FOLDER%/tmp"
	],
	"latex-workshop.latex.outDir": "%WORKSPACE_FOLDER%/tmp",
    "latex-workshop.latex.tools": [
        {
            "name": "pdflatex",
            "command": "pdflatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-halt-on-error",
                "-file-line-error",
                "-output-directory=%OUTDIR%",
                "%DOC%"
            ]
        }
    ],
    "latex-workshop.latex.recipe.default":"first",
    "latex-workshop.latex.recipes": [
        {
            "name": "pdflatex",
            "tools": ["pdflatex","pdflatex"]
        }
    ]
```
