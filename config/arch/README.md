# Arch Linux Setup

Scripts and configs for Arch Linux package management.

## Package Lists

- `packages.txt` - Official packages to install
- `packages-remove.txt` - Packages to remove
- `aur-packages.txt` - AUR packages to install
- `aur-packages-remove.txt` - AUR packages to remove

## Usage

```bash
# Manage official packages (remove unwanted, install wanted)
./scripts/arch/setup.sh

# Manage AUR packages (installs yay if needed)
./scripts/arch/aur-setup.sh
```

## Adding/Removing Packages

Edit the `.txt` files:

```bash
# Remove 1password and hey, install ghostty
echo "1password" >> packages-remove.txt
echo "hey" >> packages-remove.txt
echo "ghostty" >> packages.txt

# Run setup
./scripts/arch/setup.sh
```

Comments (lines starting with `#`) and empty lines are ignored.
