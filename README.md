# Our Awesome Research Paper in Cryptography

Literature survey is collected in [Literature.md](Literature.md).

## Todo

Todo items are maintained here so that the typesetting result is unaffected by the todo list. See also [this spreadsheet](#).

- [ ] Item 1.
- [x] Item 2.

## Notes

- Blah.

## Version Controlling and Editing

Manual synchronization between Overleaf and GitHub is recommended. Use the following command to set up two remotes:

```
git remote add overleaf <Overleaf Git URL>
git remote add github <GitHub Git URL>
```

Since Overleaf still uses `master` as the branch name and GitHub has started using `main`, the two remotes will not have colliding branch names.

Please break lines semantically, e.g., after a sentence or a long clause. Avoid using a text-editor that formats the file to break at column 80. Please also try writing meaningful Git commit messages.

A recommended editor is [Visual Studio Code](https://code.visualstudio.com/), for which this repository has a version-controlled configuration file:

- The editor wraps at columns 80 (without changing the file content) or at the editor width, whichever is smaller.
- The integrated terminal opens at `paper` directory, convenient for running LaTeX commands for the paper.
- The spell-checker dictionary is stored.

After installing VSCode, a few useful customization are as follows:

- Run `code --install-extension streetsidesoftware.code-spell-checker` to install the spell checker. When adding a word in this paper, choose "add to folder dictionary". This will save the dictionary entry to `.vscode/settings.json`, and can be version-controlled.
- To use VSCode as the default Git editor, run `git config --global core.editor "code --wait"`. This gives an integrated experience when committing from the integrated terminal.

## Reading the Difference

Use `git diff --color=always --word-diff <opts/args> | ansi2html.sh > diff.html` at the root of the repository.
HTML files and `ansi2html.sh` at the root are ignored.

### Troubleshooting

If the integrated terminal does not open at `paper` directory...
The user might have disallowed workspace shell overriding. To allow it, press Ctrl+Shift+P (or Cmd+Shift+P) in VSCode and type `terminal workspace shell`, choose "Terminal: Manage Workspace Shell Permissions", and then choose "Allow Workspace Shell Configuration".

If the integrated terminal opens Bash, but your default shell is the Z shell (`zsh`) or another shell... (see [Apple Support Knowledge Base article](https://support.apple.com/kb/HT208050))
The configuration file uses PowerShell if it exists, and Bash otherwise. To use the Z shell instead, open `.vscode/settings.json` and change line 15 to `"cd ./paper >/dev/null 2>&1; PWSHFN=$(which pwsh); if [ $? -eq 0 ]; then exec /bin/bash -l -c \"$(printf \"exec %q -NoLogo\" \"$PWSHFN\")\"; else exec zsh -l; fi"`.

If BibTeX (distributed by MiKTeX) complains "Sorry---you've exceeded BibTeX's number of strings"...
Run `initexmf --set-config-value [BibTeX]max_strings=35000` to increase the limit to 35000, which should be enough.
