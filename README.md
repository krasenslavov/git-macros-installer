````markdown
# Git Macros Installer – 15 Essential Git Aliases

This repository provides a **cross-platform installer** for 15 highly useful Git macros (aliases) that automate common Git tasks.  
They work on **Windows (Git Bash, PowerShell)**, **Linux**, and **macOS**.

---

## ✅ Features

These macros help automate everyday Git workflows, including:

- Add, commit, and push in a single command
- Commit only staged files
- Push current branch automatically
- Pull with rebase
- One-line graph log
- Undo last commit
- Create & checkout branches
- Delete merged branches
- Stash and apply
- Diff staged changes
- Short status
- Amend last commit without changing message
- Checkout previous branch
- Fetch and prune
- List tags in reverse chronological order

---

## 📥 Installation

### Linux / macOS
```bash
curl -sSL https://your-site.com/git-macros-installer.sh | bash
````

### Windows (Git Bash)

```bash
curl -sSL https://your-site.com/git-macros-installer.sh | bash
```

> ⚠️ Make sure Git is installed and available in your PATH.
> For Windows users, run inside **Git Bash** or **WSL**.

---

## 🛠 Usage Examples

| Macro          | Example                   | Description                                |
| -------------- | ------------------------- | ------------------------------------------ |
| `git acp`      | `git acp "Fix login bug"` | Add, commit, and push current branch       |
| `git c`        | `git c "Add new feature"` | Commit staged files only                   |
| `git pushc`    | `git pushc`               | Push current branch                        |
| `git up`       | `git up`                  | Pull with rebase                           |
| `git lg`       | `git lg`                  | One-line graph log                         |
| `git undo`     | `git undo`                | Undo last commit, keep changes             |
| `git cb`       | `git cb feature/ui`       | Create and switch to new branch            |
| `git cleanup`  | `git cleanup`             | Delete merged branches locally             |
| `git stashpop` | `git stashpop`            | Stash changes and immediately apply        |
| `git dfs`      | `git dfs`                 | Show staged changes diff                   |
| `git s`        | `git s`                   | Short status                               |
| `git amend`    | `git amend`               | Amend last commit without changing message |
| `git prev`     | `git prev`                | Switch to previous branch                  |
| `git fp`       | `git fp`                  | Fetch and prune remote branches            |
| `git tagsr`    | `git tagsr`               | Show all tags, newest first                |

---

## 🔧 Notes

* The installer sets **global Git aliases**, so they are available in all repositories.
* On Windows, the installer is intended for **Git Bash** or **WSL**; CMD/PowerShell without Git Bash may not support some aliases.
* You can safely rerun the installer — it will overwrite existing aliases.

---

## 💡 Tips

* Combine `git acp` with a **custom message** for fast commits and pushes.
* Use `git lg` to visualize branch history quickly.
* Regularly run `git cleanup` to remove merged branches and keep your repo tidy.

---

## ⚡ Feedback

If you have suggestions for additional macros or improvements, feel free to submit an issue or pull request.

---

Enjoy your faster Git workflow! 🚀
