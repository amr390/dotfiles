# 🚀 Dotfiles Productivity Shortcuts

This guide summarizes the most useful keybindings and aliases in your configuration.

## 🛠 Shell Navigation & Projects
| Shortcut | Description |
| :--- | :--- |
| `p` | **Project Jump**: Fuzzy search and `cd` into any project in `~/Projects` or `~/Documents`. |
| `..`, `...`, `....` | Quickly move up 1, 2, or 3 directories. |
| `v` / `vi` | Open Neovim (with `npm` check suppressed). |
| `o <file>` | Open file in the default system application (`xdg-open` or `open`). |
| `cfg` | Go to dotfiles directory. |
| `zcfg` | Edit `zshrc` instantly. |

## 📦 Package Management (Fedora)
| Alias | Command | Description |
| :--- | :--- | :--- |
| `dnf-up` | `sudo dnf upgrade --refresh` | Update system and refresh metadata. |
| `dnf-install` | `sudo dnf install` | Install a package. |
| `dnf-clean` | `dnf autoremove && dnf clean all` | Cleanup unused packages and cache. |

## 🪟 Tmux Master
**Prefix:** `Ctrl + a` (or `Ctrl + b`)

### Windows & Panes
| Key | Action |
| :--- | :--- |
| `Prefix` + `|` | Split pane **horizontally**. |
| `Prefix` + `-` | Split pane **vertically**. |
| `Prefix` + `h/j/k/l` | Move focus between panes (Vim-style). |
| `Prefix` + `H/J/K/L` | Resize current pane. |
| `Prefix` + `z` | **Zoom/Unzoom** current pane. |
| `Prefix` + `Left/Right` | Move to previous/next window. |
| `Prefix` + `Space` | Enter **Copy Mode** (Vim keys enabled). |

### Session Management
| Key | Action |
| :--- | :--- |
| `Prefix` + `Ctrl + s` | **Save** Tmux session (Resurrect). |
| `Prefix` + `Ctrl + r` | **Restore** Tmux session (Resurrect). |
| `Prefix` + `r` | Reload Tmux configuration. |
| `Prefix` + `Q` | Kill the entire session (with confirmation). |

## ⌨️ Zsh Vi-Mode & History
*   **Vim Mode**: The shell starts in **Insert Mode** (beam cursor `|`). Press `Esc` for **Normal Mode** (block cursor `█`).
*   **Search**:
    *   `Ctrl + p` / `Ctrl + n`: Search history starting with current command.
    *   `Ctrl + r`: Standard Zsh history search.
*   **Menu Select**: Use `h/j/k/l` to navigate the tab-completion menu.

## 🐳 Docker Utilities
| Alias | Description |
| :--- | :--- |
| `*run` | (e.g., `redisrun`, `mysqlrun`) Start a pre-configured Docker container. |
| `*stop` | (e.g., `redisstop`, `mysqlstop`) Stop and remove the container. |

## 🔍 System & Network
| Alias | Description |
| :--- | :--- |
| `myip` | Show your public IP address. |
| `psmem` | Show top 5 processes by memory usage. |
| `pscpu` | Show top 5 processes by CPU usage. |
| `duc` | Disk usage for current directory (sorted). |

---
*Tip: Run `exec zsh` or source your `~/.zshrc` to apply new changes!*
