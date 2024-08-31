
include ../include.mk

objects		:= loadkernel.o start.o
target		:= kernelloader
includes	:= -I../include

all:$(target)

$(target):$(objects)
	$(LD) $(LDFLAGS) -o $@ $^

%.o:%.c
	$(CC) $(CFLAGS) -c -o $@ $< $(includes)

%.o:%.S
	$(CC) $(CFLAGS) -c -o $@ $< $(includes)


.PHONY:clean
clean:
	rm -f $(objects) $(target)



