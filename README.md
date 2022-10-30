# Simon Setup

## Basic applications

Install latest Nobara version and run the *basic install* script

```bash
./basic_install.sh
```

## Nvidia Graphics

https://ask.fedoraproject.org/t/nvidia-drivers-on-fedora-36-rtx-2070-super/25243

Reboot and try to run the following command

```bash
nvidia-smi
```

### Nvitop

Also, install [nvitop](https://github.com/XuehaiPan/nvitop) to monitor CPU, GPU and memory usage with the terminal.

```bash
sudo pip3 install --upgrade nvitop
```

To run as resource monitor:

```bash
nvitop -m
```

## Docker

Run the script to install Docker and Docker Compose.

```bash
./docker_install.sh
```

Based on [this documentation](https://docs.docker.com/engine/install/fedora/)

### Nvidia Container Toolkit

As it is not official supported on Fedora, it is necessary to use the CentOS 8 version

https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#supported-platforms

https://github.com/NVIDIA/nvidia-docker/issues/706#issuecomment-851816502

## Headset fix

Open the file `/etc/modprobe.d/alsa-base.conf` and add this line in the end.

```
# Custom
options snd-hda-intel model=headset-mic,dell-headset-multi
```

Now reboot and test if the headset choose pop-up appears when plugged.

## SSH Keys

Run the following script an add the copied key to GitHub.

```bash
./git_ssh_config.sh
```

## Keyboard Shorcuts

Run the following script to configure keyboard shortcuts using dconf.

```bash
./change_keybindings.sh
```

For extra shortcuts, add then using GNOME Settings application.

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

## STMicoreletronics

### ARM GCC

First, install dependencies.

```bash
sudo dnf install libncurses5
```

Then, download latest *GNU Arm Embedded Toolchain* from the [Arm Developer website](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads). Extract it in the desired location (`/usr/local` for exemple) and add it to PATH.

```bash
sudo tar xjf gcc-arm-none-eabi-10.3-2021.10-x86_64-linux.tar.bz2 -C /usr/local
```

### STM32CubeMX

Download latest version from the [STM32CubeMX website](https://www.st.com/b/en/development-tools/stm32cubemx.html) and extract the zip folder. Give the setup file the necessary permissions and run it as sudo.

```bash
chmod 777 SetupSTM32CubeMX-6.4.0
sudo ./SetupSTM32CubeMX-6.4.0
```

### STM32CubeProgrammer

Download latest version from the [STM32CubeProgrammer website](https://www.st.com/en/development-tools/stm32cubeprog.html) and extract the zip folder. Give the setup file the necessary permissions and run it as sudo.

```bash
chmod 777 SetupSTM32CubeProgrammer-2.9.0.linux
sudo ./SetupSTM32CubeProgrammer-2.9.0.linux
```

Now, install `libusb` to handle USB devices .

```bash
sudo dnf install libusb-1.0-0-dev
```

Then copy the rules files in the CubeProgrammer installation folder to `/etc/udev/rules.d`.

```bash
cd /usr/local/STMicroelectronics/STM32Cube/STM32CubeProgrammer/Drivers/rules/
sudo cp *.* /etc/udev/rules.d
```

### STM32CubeMonitor

**TODO**

### JLink

**TODO**

## Aditional configurations

### VSCode

- Theme [Dark Horizon](https://github.com/mcagampan/dark-horizon)
- Open settings and add 'FiraCode Nerd Font' to the start of the list

### Gedit

In preferences, disable the *Highlight current line* option and select the *Tango* color scheme.

## References

- Color palette [Horizon](https://horizontheme.netlify.app/).