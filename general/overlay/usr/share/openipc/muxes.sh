#!/bin/sh
# Set SR_I2C_MODE=1 to route hardware I2C to SR_IO08(SDA)/SR_IO09(SCL)
# CHIPTOP register 0x06 (phys 0x1F203C0C), bits [5:4]
CURRENT=$(devmem 0x1F203C0C 16)
NEW=$(printf '0x%04x' $(( CURRENT | 0x0010 )))
devmem 0x1F203C0C 16 $NEW
