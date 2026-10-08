# dotfiles

Personal macOS configuration, managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Contents

| Path | Tool | Notes |
| --- | --- | --- |
| `.config/zsh/.zshrc` | Zsh | Oh My Zsh (`git` plugin, custom `kenn` theme), Powerlevel10k instant prompt, Homebrew, Bun, and `~/.local/bin` on `PATH` |
| `.config/tmux/tmux.conf` | tmux | Prefix `C-a`, mouse on, `=` / `-` to split, `C-h/j/k/l` to switch panes, `prefix + h/j/k/l` to resize, pane path in the top border, [tpm](https://github.com/tmux-plugins/tpm) + [tmux-dotbar](https://github.com/vaaleyard/tmux-dotbar) |
| `.config/ghostty/config` | Ghostty | Catppuccin Mocha, RobotoMono NF at 16pt |

## Install

```sh
git clone <repo-url> ~/dotfiles
cd ~/dotfiles
stow .
```

Stow symlinks the contents into `$HOME` (e.g. `~/.config/zsh/.zshrc`). `README.md`, `.git`, and `.gitignore` are skipped via `.stow-local-ignore`.

## Prerequisites

- [Homebrew](https://brew.sh) (installed at `/opt/homebrew`)
- `stow`, `tmux`, and [Ghostty](https://ghostty.org)
- The [RobotoMono Nerd Font](https://www.nerdfonts.com/) (`RobotoMono NF`)
- [Bun](https://bun.sh) (optional; referenced in `.zshrc`)

## Manual setup

Some things are not tracked and must be set up by hand:

- **`ZDOTDIR`**: `.zshrc` lives in `~/.config/zsh`, so Zsh needs `export ZDOTDIR="$HOME/.config/zsh"` in `~/.zshenv`.
- **Oh My Zsh**: clone into `~/.config/zsh/ohmyzsh`. The `kenn` theme is not in this repo and must be added under `ohmyzsh/custom/themes/` (or change `ZSH_THEME`).
- **Powerlevel10k**: config is generated at `~/.config/zsh/.p10k.zsh` (via `p10k configure`).
- **tmux plugins**: install tpm with `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`, then press `prefix + I` inside tmux.

## Ignored

Generated or machine-local files are excluded in `.gitignore`: `.config/tmux/plugins`, `.config/zsh/ohmyzsh`, `.config/zsh/.zcompdump*`, `.config/zsh/.p10k*`, and `.config/zsh/.zsh_history`.

## Known caveats

- `.zshrc` hardcodes `/Users/kenn/.antigravity/antigravity/bin` in `PATH`; this would need changing on another machine or user.
