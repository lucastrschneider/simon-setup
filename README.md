# Simon Setup

## Post Install

Install Fedora 43 and follow the [Fedora 43 Post Install Guide](https://github.com/devangshekhawat/Fedora-43-Post-Install-Guide), except for the nvidia drivers sections.

After that, install [adw-gtk3](https://github.com/lassekongo83/adw-gtk3) for legacy applications themes

## Nvidia

Install the nvidia-drivers from the [negativo17](https://negativo17.org/nvidia-driver/) repository.

## Git

```bash
git config --global init.defaultBranch main
git config --global core.autocrlf input
git config --global user.name "Lucas T. R. Schneider"
git config --global user.email "lucastrschneider@gmail.com"
```

## SSH

Just copy the .ssh folder from the backup to the home directory. You can also add them to the SSH agent if you want (see bellow).

### Generate new SSH keys

If you want, generate a new SSH key

```bash
ssh-keygen -t ed25519 -C "lucastrschneider@gmail.com"
```

Add the (new) key to the SSH agent

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519_git
```

Copy the public key and add it wherever you need

```bash
sudo dnf install xclip -y
xclip -selection clipboard < ~/.ssh/id_ed25519_git.pub
```

After this point, you should clone this repository in order to run the scripts more easily

## Basic Applications

After that, run the *basic install* script

```bash
./basic_install.sh
```

## Docker

Follow [this documentation](https://docs.docker.com/engine/install/fedora/) to install Docker.

After that, you can also install rocker if you want

```bash
sudo pip3 install rocker
```

## Shell

```bash
./setup_zsh.sh
```

If you want zsh as the default shell

```bash
chsh -s $(which zsh)
```

## Headset fix

```bash
./headset_fix.sh
```

## Dotfiles

### Create symlinks

```bash
./link_dotfiles.sh
```

### Extract archives

```bash
./extract_archives.sh
```

## Nvitop

Install [nvitop](https://github.com/XuehaiPan/nvitop) to monitor CPU, GPU and memory usage with the terminal

```bash
pip3 install --user nvitop
```

To run as resource monitor:

```bash
python3 -m nvitop
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

- [AppIndicator and KStatusNotifierItem Support](https://extensions.gnome.org/extension/615/appindicator-support/)
- [Blur my Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/)
- [Clipboard Indicator](https://extensions.gnome.org/extension/779/clipboard-indicator/)
- [Just Perfection](https://extensions.gnome.org/extension/3843/just-perfection/)
- [PiP on top](https://extensions.gnome.org/extension/4691/pip-on-top/)
- [Rounded Window Corners Reborn](https://extensions.gnome.org/extension/7048/rounded-window-corners-reborn/)
- [Space Bar](https://extensions.gnome.org/extension/5090/space-bar/)
- [Vitals](https://extensions.gnome.org/extension/1460/vitals/)
- [Tiling Shell](https://extensions.gnome.org/extension/7065/tiling-shell/)
- [ArcMenu](https://extensions.gnome.org/extension/3628/arcmenu/)

## STMicroelectronics

### ARM GCC

First, install dependencies.

```bash
sudo dnf install libncurses5
```

Then, download latest *GNU Arm Embedded Toolchain* from the [Arm Developer website](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads). Extract it in the desired location (`/usr/local` for example) and add it to PATH

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

TODO

### JLink

TODO

## Additional configurations

### Keyboard Shortcuts

Run the following script to configure keyboard shortcuts using dconf

```bash
./change_keybindings.sh
```

On GNOME Settings, open the Keyboard Shortcuts editor and add the following shortcuts

- Custom Shortcuts: Terminal, `ptyxis --new-window`, `<Super>Return`
- Custom Shortcuts: Files, `nautilus --new-window`, `<Super>F`
- Custom Shortcuts: VSCode, `code`, `<Super>C`
- Launchers: Launch Web Browser, `<Super>B`

### Automount

Use the **GNOME Disk** to configure the data partition to be automounted at login. Then it is possible to add bookmarks in Nautilus for the folders there

### VSCode Theme and Font

- Theme **Adwaita Dark & default syntax highlighting & colorful status bar**
- Open settings and add 'FiraCode Nerd Font' to the start of the list
