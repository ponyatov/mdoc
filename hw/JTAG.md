# JTAG

## ARM JTAG 20-pin

https://stm32-base.org/guides/connecting-your-debugger.html

If your [[STM32]] development board does not have a 4-pin [[SWD]] header, it most likely does have a 20-pin JTAG header. This connector exposes all the pins needed for full JTAG support. This includes the pins a SWD header would expose. Refer to the image below for an overview of a typical [[JTAG#ARM]] header.

![[JTAG20.png]]

The table below provides an overview of which pins to connect:

||||
|-|-|-|-|
| Pin function | Debugger pin | Target pin |
| Ground | `GND` | [[GND]] |
| [[+3.3V]] | `VCC` / [[VDD]] / `3.3V` | [[VCC]] | (!)
| Clock | `SWCLK` / `SWCK` | [[SWCLK]] |
| Data | [[SWDIO]] | 'SWDIO' |
**(!) Warning: Do not connect the +3.3V pin if you are powering your board externally, as most Chinese development boards do not have any protection on the power pins. This may cause damage your board, debugger or PC.**

