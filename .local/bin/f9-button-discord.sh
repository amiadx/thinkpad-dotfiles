CURRENT_WORKSPACE=$(niri msg --json workspaces | jq -r '.[] | select(.is_focused == true) | .name // .idx')

if [ "$CURRENT_WORKSPACE" = "discord" ]; then
    niri msg action focus-workspace-previous
else
    niri msg action focus-workspace discord
fi
