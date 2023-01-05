# Simon Setup

## Basic applications

Install Fedora 37 and follow the [Fedora 37 Post Install Guide](https://github.com/devangshekhawat/Fedora-37-Post-Install-Guide)

After that, run the *basic install* script

```bash
./basic_install.sh
```

## Nvidia Graphics

After following the instructions in the Post Install Guide, check with everything is working by running the following command

```bash
nvidia-smi
```

### Nvitop

Install [nvitop](https://github.com/XuehaiPan/nvitop) to monitor CPU, GPU and memory usage with the terminal

```bash
sudo pip3 install --upgrade nvitop
```

To run as resource monitor:

```bash
nvitop -m
```

## Docker

Run the script to install Docker and Docker Compose

```bash
./docker_install.sh
```

Based on [this documentation](https://docs.docker.com/engine/install/fedora/)

## Headset fix

Open the file `/etc/modprobe.d/alsa-base.conf` (or create it) and add this line at the end

```
# Custom
options snd-hda-intel model=headset-mic,dell-headset-multi
```

Now reboot and test if the headset choose pop-up appears when plugged

## SSH Keys

Run the following script an add the copied key to GitHub

```bash
./git_ssh_config.sh
```

## Keyboard Shorcuts

Run the following script to configure keyboard shortcuts using dconf

```bash
./change_keybindings.sh
```

For extra shortcuts, add then using GNOME Settings application

## Alacritty

First, set alacritty to be the default terminal application

```bash
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/bin/alacritty
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"
```

After that, add command as the `<Super>Return` keyboard shortcut

```bash
alacritty
```

### Open Alacritty Here in Nautilus

Follow the [natulius-open-any-terminal](https://github.com/Stunkymonkey/nautilus-open-any-terminal) instructions.

Remember to install the dependency:

```bash
sudo dnf install nautilus-python
```

## Wofi

Add command as the `<Super>Space` keyboard shortcut

```bash
wofi -S drun
```

Style based on [synaptiko/.files](https://github.com/synaptiko/.files/blob/master/wofi/style.css)

## Nautilus

Add command as the `<Super>f` keyboard shortcut

```bash
nautilus --new-window
```

## VSCode

Add command as the `<Super>c` keyboard shortcut

```bash
code
```

## Discord

Install the WebCord, so that screensharing works properly on wayland. The releases can be found [here](https://github.com/SpacingBat3/WebCord/releases)

```bash
sudo dnf install ./webcord-*.rpm
```

After installing, remember to give mic and camera permissions on `Files > Settings`

## Spotify

Install from flathub using the following command

```bash
sudo flatpak install flathub com.spotify.Client
```

## Settings

### Multitasking

- Disable hot corner and screen edges
- Set fixed workspaces to 9
- Workspaces on all displays
- Include applications from current workspace only

### Mouse and touchpad

- Enable tap to click

## Tweaks

### Windows

- Center new windows
- Click to Focus

## Extensions

### Manually installed

- [Blur my Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/)
- [Vitals](https://extensions.gnome.org/extension/1460/vitals/)
- [Just Perfection](https://extensions.gnome.org/extension/3843/just-perfection/)
- [Quick Settings Tweaker](https://extensions.gnome.org/extension/5446/quick-settings-tweaker/)
- [Bluetooth Quick Connect](https://extensions.gnome.org/extension/1401/bluetooth-quick-connect/)
- [Clipboard History](https://extensions.gnome.org/extension/4839/clipboard-history/)
- [Aylur's Widgets](https://extensions.gnome.org/extension/5338/aylurs-widgets/)
- [AppIndicator and KStatusNotifierItem Support](https://extensions.gnome.org/extension/615/appindicator-support/)

### Built-In

- Pop Shell

## STMicoreletronics

### ARM GCC

First, install dependencies.

```bash
sudo dnf install libncurses5
```

Then, download latest *GNU Arm Embedded Toolchain* from the [Arm Developer website](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads). Extract it in the desired location (`/usr/local` for exemple) and add it to PATH

```bash
sudo tar xjf gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2 -C /usr/local
```

### STM32CubeMX

Download latest version from the [STM32CubeMX website](https://www.st.com/b/en/development-tools/stm32cubemx.html) and extract the zip folder. Give the setup file the necessary permissions and run it as sudo

```bash
chmod 777 SetupSTM32CubeMX-6.4.0
sudo ./SetupSTM32CubeMX-6.4.0
```

### STM32CubeProgrammer

Download latest version from the [STM32CubeProgrammer website](https://www.st.com/en/development-tools/stm32cubeprog.html) and extract the zip folder. Give the setup file the necessary permissions and run it as sudo

```bash
chmod 777 SetupSTM32CubeProgrammer-2.9.0.linux
sudo ./SetupSTM32CubeProgrammer-2.9.0.linux
```

Now, install `libusb` to handle USB devices

```bash
sudo dnf install libusb-1.0-0-dev
```

Then copy the rules files in the CubeProgrammer installation folder to `/etc/udev/rules.d`

```bash
cd /usr/local/STMicroelectronics/STM32Cube/STM32CubeProgrammer/Drivers/rules/
sudo cp *.* /etc/udev/rules.d
```

### STM32CubeMonitor

**TODO**

### JLink

**TODO**

## Aditional configurations

### Automount

Use the **GNOME Disk** to configure the data partition to be automounted at login. Then it is possible to add bookmarks in Nautilus for the folders there

### Firefox

Follow [this tutorial](https://superuser.com/questions/1557955/how-to-remove-firefox-orange-microphone-webcam-indicator-from-the-top-of-the-scr) to remove the icon showing when mic and camera are beeing used. This is necessary because they aren't reconized as pop-ups from pop shell, and will be added to the auto-tiling

### VSCode Theme and Font

- Theme [Horizon](https://github.com/alexandernanberg/horizon-theme-vscode)
- Open settings and add 'FiraCode Nerd Font' to the start of the list

## References

- Color palette [Horizon](https://horizontheme.netlify.app/)