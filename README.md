# Simon Setup

## Post Install

Install Fedora 39 and follow the [Fedora 39 Post Install Guide](https://github.com/devangshekhawat/Fedora-39-Post-Install-Guide)

After that, install [adw-gtk3](https://github.com/lassekongo83/adw-gtk3) for legacy applications themes

## Git

```bash
export GIT_USER="Lucas T. R. Schneider"
export GIT_EMAIL="lucastrschneider@gmail.com"

git config --global init.defaultBranch main
git config --global core.autocrlf input
git config --global user.name $GITHUB_USER
git config --global user.email $GITHUB_EMAIL
```

If you want, generate a new SSH key

```bash
ssh-keygen -t ed25519 -C $GITHUB_EMAIL
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

After this point, you should clone the repository in order to run the scripts more easily

## Basic Applications

After that, run the *basic install* script

```bash
./basic_install.sh
```

## Docker

Run the script to install Docker and Docker Compose

```bash
./docker_install.sh
```

Based on [this documentation](https://docs.docker.com/engine/install/fedora/)

## Shell

### zsh

```bash
sudo dnf install zsh
```

Install oh-my-zsh

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Add custom plugins

```bash
git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

If you want zsh as the default shell

```bash
chsh -s $(which zsh)
```

### fish

```bash
sudo dnf install fish util-linux-user
```

Install oh-my-fish

```bash
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
```

If you want fish as the default shell

```bash
chsh -s $(which fish)
```

## Rust

Install rustup (preferably after configuring the shell)

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## Headset fix

Open the file `/etc/modprobe.d/alsa-base.conf` (or create it) and add this line at the end

```bash
# Custom
options snd-hda-intel model=headset-mic,dell-headset-multi
```

Now reboot and test if the headset choose pop-up appears when plugged

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

- [Blur my Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/)
- [Vitals](https://extensions.gnome.org/extension/1460/vitals/)
- [Clipboard History](https://extensions.gnome.org/extension/4839/clipboard-history/)
- [Just Perfection](https://extensions.gnome.org/extension/3843/just-perfection/)
- [User Themes](https://extensions.gnome.org/extension/19/user-themes/)

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

- Custom Shortcuts: Terminal, `gnome-terminal`, `<Super>Return`
- Custom Shortcuts: Files, `nautilus --new-window`, `<Super>F`
- Custom Shortcuts: VSCode, `code`, `<Super>C`
- Launchers: Launch Web Browser, `<Super>B`

### Automount

Use the **GNOME Disk** to configure the data partition to be automounted at login. Then it is possible to add bookmarks in Nautilus for the folders there

### VSCode Theme and Font

- Theme **Adwaita Dark & default syntax highlighting & colorful status bar**
- Open settings and add 'FiraCode Nerd Font' to the start of the list
