# Multi-System Configuration

## Strategy: OS-specific config files

### In your .zshrc:
```bash
# Load OS-specific config
if [[ "$OSTYPE" == "darwin"* ]]; then
    source ~/.config/zsh/macos.zsh
elif [[ -f /etc/debian_version ]]; then
    source ~/.config/zsh/debian.zsh
elif [[ -f /etc/arch-release ]]; then
    source ~/.config/zsh/arch.zsh
fi
```

### Structure:
```
packages/zsh/.config/zsh/
├── common.zsh      # Shared across all systems
├── macos.zsh       # macOS-specific
├── debian.zsh      # Debian-specific
└── arch.zsh        # Arch-specific
```

## Alternative: Separate branches per system

```bash
# Main branch: common configs
git checkout main

# System-specific branches
git checkout macos
git checkout debian
git checkout arch
```

## Recommended: Conditional loading

Keep one repo, use OS detection in your configs. This is cleaner and easier to maintain.
