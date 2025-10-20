#!/bin/bash
# ========================================
# Cross-Platform Git Macros Installer
# Installs 15 essential Git aliases
# Works on Linux, macOS, and Windows (Git Bash)
# ========================================

echo "Detecting operating system..."

OS_TYPE="$(uname 2>/dev/null || echo windows)"

echo "Detected OS: $OS_TYPE"
echo

install_macros() {
  echo "Installing 15 Git macros..."

  git config --global alias.acp '!f() { git add . && git commit -m "$1" && git push origin $(git symbolic-ref --short HEAD); }; f'
  git config --global alias.c '!git commit -m "$1"'
  git config --global alias.pushc '!git push origin $(git symbolic-ref --short HEAD)'
  git config --global alias.up '!git pull --rebase'
  git config --global alias.lg "log --oneline --graph --decorate --all"
  git config --global alias.undo 'reset --soft HEAD~1'
  git config --global alias.cb '!f() { git checkout -b "$1"; }; f'
  git config --global alias.cleanup '!git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
  git config --global alias.stashpop '!git stash && git stash pop'
  git config --global alias.dfs 'diff --staged'
  git config --global alias.s 'status -s'
  git config --global alias.amend 'commit --amend --no-edit'
  git config --global alias.prev 'checkout -'
  git config --global alias.fp 'fetch --prune'
  git config --global alias.tagsr 'tag --sort=-creatordate'

  echo
  echo "✅ All 15 Git macros have been installed!"
  echo "You can now use them in any repository, e.g.:"
  echo "  git acp \"Commit message\""
  echo "  git lg"
  echo "  git cleanup"
}

if [[ "$OS_TYPE" == *"MINGW"* ]] || [[ "$OS_TYPE" == *"MSYS"* ]] || [[ "$OS_TYPE" == *"windows"* ]]; then
  echo "Windows detected (Git Bash). Installing..."
  install_macros
elif [[ "$OS_TYPE" == "Darwin" ]] || [[ "$OS_TYPE" == "Linux" ]]; then
  echo "Unix-like OS detected. Installing..."
  install_macros
else
  echo "⚠️ Could not detect OS. Trying to install anyway..."
  install_macros
fi

echo
echo "Installation complete!"
