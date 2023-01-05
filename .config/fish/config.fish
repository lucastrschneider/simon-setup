alias cube='/usr/local/STMicroelectronics/STM32Cube/STM32CubeMX/STM32CubeMX'

alias update_grub='sudo grub2-mkconfig -o /etc/grub2-efi.cfg'

source ~/.config/fish/theme.fish

set -x CUBE_PATH             	/usr/local/STMicroelectronics/STM32Cube/STM32CubeMX
set -x STM32_CUBE_PROGRAMMER	/usr/local/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin
set -x ARM_GCC_PATH          	/usr/local/gcc-arm-none-eabi-10.3-2021.10/bin
set -x GHDL_PATH	      		/usr/local/ghdl/bin

set     PATH $PATH $ARM_GCC_PATH
set     PATH $PATH $STM32_CUBE_PROGRAMMER
set     PATH $PATH $GHDL_PATH
