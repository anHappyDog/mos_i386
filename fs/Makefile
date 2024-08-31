

target_file := rootfs.img

all:$(target_file)

$(target_file):rootfs
	dd if=/dev/zero of=rootfs.img bs=1M count=64
	mkfs.vfat -F 32 $(target_file)
	mkdir -p mnt
	mount -o loop rootfs.img mnt
	cp -r rootfs/* mnt
	umount mnt
	rm -rf mnt

.PHONY:clean
clean:
	rm *.img -rf