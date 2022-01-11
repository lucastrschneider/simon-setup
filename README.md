# Simon Setup

## Basic applications

Install latest Ubuntu version and run the *basic install* script

```bash
./basic_install.sh
```

## Nvidia Graphics

Follow [this tutorial](https://linuxconfig.org/how-to-install-the-nvidia-drivers-on-ubuntu-20-04-focal-fossa-linux) to install recommended drivers

After rebooting, open `Nvidia XServer Settings` and in **PRIME Profiles** select the **NVIDIA (Performance Mode)** option to use the NVidia GPU at all times (recommended when using OpenGL terminal emulators like Alacritty and an HDMI display).

## Pop shell

Download the latest release from [pop-shell](https://github.com/pop-os/shell), extract the file and navigate to `shell-x.x.x`. Now, run the commands:

```bash
sudo apt update
sudo apt install node-typescript make
make local-install
```

## Tweaks

### Appearance

- Themes
    - Application: Material Originals Red Dark
    - Cursor: Yaru
    - Icons: Papirus Red Dark
    - Shell: Material Originals Shell Red Dark
    - Sound: Yaru
- Background e Lock Screen
    - Image: `minimal-sunset.jpg`
    - Adjustment: Zoom

### Extensions

- Pop Shell
- Sound input & output device chooser
- User Themes
- Workspaces bar
- System-monitor
- Ubuntu AppIndicators

### Startup Applications

- Add devilspie2 (use .desktop from `~/.local/share/applications`)

### Top bar

- Disable Activities Overview Hot Corner
- Enable Battery Percentage
- Enable Clock Weekday

### Windows

- Disable everything
- Click to Focus

### Workspaces

- Set static workspaces to 9
- Workspaces span displays

## Keyboard Shorcuts

Run the following script to configure keyboard shortcuts using dconf.

```bash
./change_keybindings.sh
```

For extra shortcuts, add then using GNOME Settings application.

- Thunar (Super + f)
- VSCode (Super + c)

## Rofi

Squared red theme from [rofi-themes](https://github.com/ulises-jeremias/rofi-themes).

Add command to Keyboard Shortcuts

```bash
rofi -show combi -combi-modi "window,drun" -modi "combi,run,ssh" -show-icons
```

## SSH Keys

Run the following script an add the copied key to GitHub.

```bash
./git_ssh_config.sh
```

## ROS

Add the **restricted**, **universe** adn **multiverse** repositories on Ubuntu and then run the following script.

```bash
./ros_noetic_install.sh
```

## Docker

Run the script to install Docker and Docker Compose

```bash
sudo ./docker_install.sh
```

## Aditional configurations

### VSCode

- Theme [Dark Horizon](https://github.com/mcagampan/dark-horizon)
- Open settings and add 'FiraCode Nerd Font' to the start of the list

### Gedit

Theme file in `~/.local/share/gedit/styles`

### Thunar

Plugin configuration based on the [official documentation](https://docs.xfce.org/xfce/thunar/start#thunar_plugins).
- Archive Plugin (thunar-archive-plugin)
- Volume Manager (thunar-volman)
- Custom
    - Search for file with [searchmonkey](https://askubuntu.com/questions/1085224/ubuntu-file-search-in-thunar). Add float window exception on pop-shell.
    - Move Into New Folder


## References

- Color palette [Horizon](https://horizontheme.netlify.app/).