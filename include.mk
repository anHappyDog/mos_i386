CROSS_COMPILE            := i386-elf-
CC                      := $(CROSS_COMPILE)gcc
LD                      := $(CROSS_COMPILE)ld
AS                      := $(CROSS_COMPILE)as
OBJCOPY                 := $(CROSS_COMPILE)objcopy
OBJDUMP                 := $(CROSS_COMPILE)objdump
AR                      := $(CROSS_COMPILE)ar
GDB					 	:= gdb-multiarch

QEMU					:= qemu-system-i386

CFLAGS				  	:= -m32 -Wall -Wextra -Werror -nostdlib -nostartfiles -ffreestanding \
							-fno-builtin -fno-stack-protector
LDFLAGS					:= -melf_i386


