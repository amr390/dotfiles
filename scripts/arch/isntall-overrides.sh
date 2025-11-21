HYPERLAND_CONFIG="$HOME/.config/hypr/hyperland.conf"
SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
OVERRIDES_CONFIG="$SCRIPT_DIR/hyperland-overrides.conf"
SOURCE_LINE="source = $OVERRIDES_CONFIG"


# Check if hyprland config exists
if [ ! -f "$HYPERLAND_CONFIG" ]; then
  echo "Hyprland config file not found at $HYPERLAND_CONFIG"
  echo "Please install hyprland first"
  exit 1
fi


# Check if overrides config exists
if [ ! -f "$OVERRIDES_CONFIG" ]; then
  echo "Overrides config file not found at $OVERRIDES_CONFIG"
  exit 1
fi

# Check if source line exists in hyprland config
if grep -q "$SOURCE_LINE" "$HYPERLAND_CONFIG"; then
  echo "Source line already exists in $HYPERLAND_CONFIG"
else 
  echo "Adding source line to $HYPERLAND_CONFIG"
  echo "" >> "$HYPERLAND_CONFIG"
  echo "$SOURCE_LINE" >> "$HYPERLAND_CONFIG"
  echo "Source line added successfully"
fi

echo "Hyprland config updated successfully"

exit 0
  
