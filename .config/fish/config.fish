alias cube='/usr/local/STMicroelectronics/STM32Cube/STM32CubeMX/STM32CubeMX'
alias gedit='gnome-text-editor'
alias nvitop='python3 -m nvitop'
alias activate-venv='source ./venv/bin/activate.fish'

alias update_grub='sudo grub2-mkconfig -o /etc/grub2-efi.cfg'

source ~/.config/fish/theme.fish

# Python
set -x PYTHONPATH             $PYTHONPATH ~/.local/lib/python

# STM32 related
set -x CUBE_PATH             	/usr/local/STMicroelectronics/STM32Cube/STM32CubeMX
set -x STM32_CUBE_PROGRAMMER	/usr/local/STMicroelectronics/STM32Cube/STM32CubeProgrammer/bin
set -x ARM_GCC_PATH          	/usr/local/gcc-arm-none-eabi-10.3-2021.10/bin

set    PATH                   $PATH $ARM_GCC_PATH
set    PATH                   $PATH $STM32_CUBE_PROGRAMMER

# GHDL related
set -x GHDL_PATH	      		  /usr/local/ghdl/bin
set    PATH                   $PATH $GHDL_PATH

# SystemC related
set -x SYSTEMC_HOME           ~/Programs/systemc-2.3.2
set -x TARGET_ARCH            linux64

# VCML related
set -x VCML_HOME              ~/Programs/vcml

# TVM related
set -x TVM_PATH               ~/Repositories/tvm
set -x VTA_HW_PATH            $TVM_PATH/3rdparty/vta-hw
set -x PYTHONPATH             $PYTHONPATH $TVM_PATH/python
set -x PYTHONPATH             $PYTHONPATH $TVM_PATH/vta/python
