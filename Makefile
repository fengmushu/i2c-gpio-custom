obj-m := i2c-gpio-custom.o
KVERSION ?= $(shell uname -r)

all:
	$(MAKE) -C ../linux/ M=$(PWD) modules

clean:
	$(MAKE) -C ../linux/ M=$(PWD) clean

sign:
	../linux/scripts/sign-file sha256 ../linux/certs/signing_key.pem ../linux/certs/signing_key.x509 i2c-gpio-custom.ko
