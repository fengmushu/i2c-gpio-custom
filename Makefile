obj-m := i2c-gpio-custom.o
KVERSION ?= $(shell uname -r)

all:
	$(MAKE) -C ../linux/ M=$(PWD) modules

clean:
	$(MAKE) -C ../linux/ M=$(PWD) clean
