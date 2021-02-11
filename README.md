# Intro

Just the homebrew cask tap for [Keenotes Desktop](https://github.com/keevol/keenotes-desktop)

# How to use

## install

`brew tap keevol/keenotes && brew install --cask keenotes`

## upgrade

`brew update && brew upgrade --cask keenotes`

例如：

```
LuckyJohn ➜  homebrew-keenotes git:(master) brew update

LuckyJohn ➜  homebrew-keenotes git:(master) brew upgrade --cask keenotes
==> Upgrading 1 outdated package:
keevol/keenotes/keenotes 1.2.2 -> 1.2.3
==> Upgrading keenotes
==> Downloading https://github.com/keevol/keenotes-desktop/releases/download/v1.2.3/KeeNotes.Desktop-1.2.3.dmg
==> Downloading from https://github-releases.githubusercontent.com/328605941/26f4ea80-6c84-11eb-8275-6cddbb39c086?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CS
######################################################################## 100.0%
==> Backing App 'KeeNotes Desktop.app' up to '/usr/local/Caskroom/keenotes/1.2.2/KeeNotes Desktop.app'
==> Removing App '/Applications/KeeNotes Desktop.app'
==> Moving App 'KeeNotes Desktop.app' to '/Applications/KeeNotes Desktop.app'
Password:
==> Purging files for version 1.2.2 of Cask keenotes
🍺  keenotes was successfully upgraded!
```