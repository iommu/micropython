MCU_SERIES = MIMXRT1176
MCU_VARIANT = MIMXRT1176DVMAA
MCU_CORE = _cm7

MICROPY_FLOAT_IMPL = double
MICROPY_PY_MACHINE_SDCARD = 1
MICROPY_HW_FLASH_TYPE ?= qspi_nor_flash
MICROPY_HW_FLASH_SIZE ?= 0x1000000  # 16MB
MICROPY_HW_FLASH_RESERVED ?= 0x100000  # 1MB CM4 Code address space

MICROPY_HW_SDRAM_AVAIL = 1
MICROPY_HW_SDRAM_SIZE  = 0x4000000  # 64MB

MICROPY_PY_LWIP = 1
MICROPY_PY_USSL = 1
MICROPY_SSL_MBEDTLS = 1

CFLAGS += -DCPU_MIMXRT1176DVMAA_cm7 \
		-DMIMXRT117x_SERIES \
		-DENET_ENHANCEDBUFFERDESCRIPTOR_MODE=1 \
		-DCPU_HEADER_H='<$(MCU_SERIES)$(MCU_CORE).h>'
