include include.mk

modules 		:= boot
target			:= mos_i386
target_dir		:= target

qemu_flags		:= -nographic
fsdir			:= fs
rootfs			:= rootfs.img

all:$(target)

$(target):$(target_dir) $(rootfs)
	

$(rootfs):$(fsdir)
	$(MAKE) --directory=$(fsdir) rootfs

run:all
	$(QEMU) $(qemu_flags)

dbg:
	$(QEMU) $(qemu_flags) -s -S

dbg-run:
	$(GDB) -ex "target remote localhost:1234" -ex "file $(target_dir)/$(target)"

.PHONY:clean
clean:



