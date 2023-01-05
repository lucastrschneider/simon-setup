# Disable pop launcher and add tile new keybinding
dconf write '/org/gnome/shell/extensions/pop-shell/activate-launcher' "['']"
dconf write '/org/gnome/shell/extensions/pop-shell/tile-enter' "['<Super>slash']"

# Change GNOME launchers shortcuts
dconf write '/org/gnome/settings-daemon/plugins/media-keys/home' "['']"

# Focus windows
dconf write '/org/gnome/shell/extensions/pop-shell/focus-down' "['<Super>Down', '<Super>j']"
dconf write '/org/gnome/shell/extensions/pop-shell/focus-left' "['<Super>Left', '<Super>h']"
dconf write '/org/gnome/shell/extensions/pop-shell/focus-right' "['<Super>Right', '<Super>l']"
dconf write '/org/gnome/shell/extensions/pop-shell/focus-up' "['<Super>Up', '<Super>k']"

# Remove the switch to application shortcuts
dconf write '/org/gnome/shell/keybindings/switch-to-application-1' "['']"
dconf write '/org/gnome/shell/keybindings/switch-to-application-2' "['']"
dconf write '/org/gnome/shell/keybindings/switch-to-application-3' "['']"
dconf write '/org/gnome/shell/keybindings/switch-to-application-4' "['']"
dconf write '/org/gnome/shell/keybindings/switch-to-application-5' "['']"
dconf write '/org/gnome/shell/keybindings/switch-to-application-6' "['']"
dconf write '/org/gnome/shell/keybindings/switch-to-application-7' "['']"
dconf write '/org/gnome/shell/keybindings/switch-to-application-8' "['']"
dconf write '/org/gnome/shell/keybindings/switch-to-application-9' "['']"
dconf write '/org/gnome/shell/keybindings/toggle-overview' "['<Super>']"

# Switch workspace
dconf write '/org/gnome/desktop/wm/keybindings/switch-to-workspace-1' "['<Super>1','<Super>KP_End']"
dconf write '/org/gnome/desktop/wm/keybindings/switch-to-workspace-2' "['<Super>2','<Super>KP_Down']"
dconf write '/org/gnome/desktop/wm/keybindings/switch-to-workspace-3' "['<Super>3','<Super>KP_Next']"
dconf write '/org/gnome/desktop/wm/keybindings/switch-to-workspace-4' "['<Super>4','<Super>KP_Left']"
dconf write '/org/gnome/desktop/wm/keybindings/switch-to-workspace-5' "['<Super>5','<Super>KP_Begin']"
dconf write '/org/gnome/desktop/wm/keybindings/switch-to-workspace-6' "['<Super>6','<Super>KP_Right']"
dconf write '/org/gnome/desktop/wm/keybindings/switch-to-workspace-7' "['<Super>7','<Super>KP_Home']"
dconf write '/org/gnome/desktop/wm/keybindings/switch-to-workspace-8' "['<Super>8','<Super>KP_Up']"
dconf write '/org/gnome/desktop/wm/keybindings/switch-to-workspace-9' "['<Super>9','<Super>KP_Page_Up']"

dconf write '/org/gnome/mutter/keybindings/toggle-tiled-left' "['']"
dconf write '/org/gnome/mutter/keybindings/toggle-tiled-right' "['']"
dconf write '/org/gnome/desktop/wm/keybindings/switch-to-workspace-left' "['<Control><Super>Left']"
dconf write '/org/gnome/desktop/wm/keybindings/switch-to-workspace-right' "['<Control><Super>Right']"

# Move windows between workspaces
dconf write '/org/gnome/desktop/wm/keybindings/move-to-workspace-1' "['<Shift><Super>1','<Shift><Super>KP_End']"
dconf write '/org/gnome/desktop/wm/keybindings/move-to-workspace-2' "['<Shift><Super>2','<Shift><Super>KP_Down']"
dconf write '/org/gnome/desktop/wm/keybindings/move-to-workspace-3' "['<Shift><Super>3','<Shift><Super>KP_Next']"
dconf write '/org/gnome/desktop/wm/keybindings/move-to-workspace-4' "['<Shift><Super>4','<Shift><Super>KP_Left']"
dconf write '/org/gnome/desktop/wm/keybindings/move-to-workspace-5' "['<Shift><Super>5','<Shift><Super>KP_Begin']"
dconf write '/org/gnome/desktop/wm/keybindings/move-to-workspace-6' "['<Shift><Super>6','<Shift><Super>KP_Right']"
dconf write '/org/gnome/desktop/wm/keybindings/move-to-workspace-7' "['<Shift><Super>7','<Shift><Super>KP_Home']"
dconf write '/org/gnome/desktop/wm/keybindings/move-to-workspace-8' "['<Shift><Super>8','<Shift><Super>KP_Up']"
dconf write '/org/gnome/desktop/wm/keybindings/move-to-workspace-9' "['<Shift><Super>9','<Shift><Super>KP_Page_Up']"

dconf write '/org/gnome/desktop/wm/keybindings/move-to-workspace-left' "['<Shift><Super>Left']"
dconf write '/org/gnome/desktop/wm/keybindings/move-to-workspace-right' "['<Shift><Super>Right']"
dconf write '/org/gnome/shell/extensions/pop-shell/pop-workspace-down' "['']"
dconf write '/org/gnome/shell/extensions/pop-shell/pop-workspace-up' "['']"

# Move windows between monitors
dconf write '/org/gnome/desktop/wm/keybindings/move-to-monitor-right' "['']"
dconf write '/org/gnome/desktop/wm/keybindings/move-to-monitor-left' "['']"
dconf write '/org/gnome/desktop/wm/keybindings/move-to-monitor-down' "['']"
dconf write '/org/gnome/desktop/wm/keybindings/move-to-monitor-up' "['']"

dconf write '/org/gnome/shell/extensions/pop-shell/pop-monitor-down' "['<Control><Shift><Super>Down']"
dconf write '/org/gnome/shell/extensions/pop-shell/pop-monitor-left' "['<Control><Shift><Super>Left']"
dconf write '/org/gnome/shell/extensions/pop-shell/pop-monitor-right' "['<Control><Shift><Super>Right']"
dconf write '/org/gnome/shell/extensions/pop-shell/pop-monitor-up' "['<Control><Shift><Super>Up']"