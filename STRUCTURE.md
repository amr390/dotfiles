# Proposed Dotfiles Structure

```
dotfiles/
├── README.md                    # Main documentation
├── packages/                    # Stow packages (symlinked configs)
│   ├── zsh/
│   ├── bash/
│   ├── vim/
│   ├── nvim/
│   ├── tmux/
│   ├── git/
│   └── misc/
├── bin/                         # User scripts and executables
│   ├── tmux*/
│   └── ...
├── scripts/                     # Setup/maintenance scripts
│   ├── install.sh              # Install dotfiles with stow
│   ├── uninstall.sh            # Remove symlinks
│   ├── setup.sh                # Initial system setup
│   └── reorganize.sh           # Migrate to new structure
├── config/                      # Non-stow configs (reference/templates)
│   ├── packages.txt
│   └── system/
└── archive/                     # Old/unused configs
    ├── raw_nvim/
    └── templates/
```

Benefits:
- Clear separation: packages (stow), bin (executables), scripts (setup)
- Scripts folder makes purpose obvious
- Archive for old configs you might need
- bin/ stays at root for easy PATH addition
