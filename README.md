# 💻 my DWM Dotfiles

A minimal and highly customized configuration for **Arch Linux** using the **Dynamic Window Manager (DWM)** and the Suckless toolset.

## Key Components

| Component | Purpose |
| :--- | :--- |
| **dwm**, **st**, **dmenu** | Suckless window manager, terminal, and launcher. All are patched and compiled with custom `config.h`. |
| **`.xinitrc`** | The X session startup script. |
| **`.zshrc`** / **`.zprofile`** | Zsh shell configuration. |
| **`.config`** | Custom configurations. |
| **`.local/bin`** | Custom shell scripts for `dwmblocks` and utilities (volume, battery, etc.). |
| **`.pix/wall`** | Wallpapers for my rice. |

## 🚀 Usage

This repository uses **symbolic links (symlinks)** to manage files.

1.  **Clone** the repository.
2.  **Symlink** the contents to their required locations (e.g., `ln -s ~/dwm-dots/.xinitrc ~/.xinitrc`).
3.  **Compile** and install the Suckless tools (`dwm`, `st`, `dmenu`, `dwmblocks`) from their source directories (`~/.local/src/`)
## 🛠️ Build and Install

To recompile and install DWM after changing a `config.h` (which is symlinked to this repo):

```bash
cd ~/.local/src/dwm
sudo make clean install
```
