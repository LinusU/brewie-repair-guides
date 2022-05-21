# Firmware

This is the firmware for the Arduino board inside the Brewie.

B20 - `Control.ino.brewie1.hex`
B20+ - `Control.ino.brewie2.hex`

## Flashing

The files can be flashed using [AVRDUDE](https://github.com/avrdudes/avrdude).

Example to flash onto an MEGA2560 board from macOS:

```sh
avrdude -D -p m2560 -c avrispmkII -P /dev/cu.usbmodem11101 -U flash:w:Control.ino.brewie1.hex:i
```
