# [[ST-Link]] v2

## [[SWD]]
## [[JTAG#ARM JTAG 20-pin]]

## official ST-LINK/V2

The official ST-LINK/V2 is a debugger manufactured by ST Microelectronics and can be bought at any major electronics distributor. In addition to the standard ST-LINK/V2, ST offers a ST-LINK/V2-ISOL variant which features digital isolation between the PC and target board. This isolation withstands voltages up to 1000Vrms.

20-pin [[IDC#20]] connector:

![[STLINK2_IDC20.png]]

## [[Nucleo]]

The ST-LINK/V2 built into the [[Nucleo-64]] and [[Nucleo-144]] boards can also be used as stand-alone debugger. To use the built-in debugger, you must remove the jumpers from `CN2` (Nucleo-64) or `CN4` (Nucleo-144). Then you can use `CN4` (Nucleo-64) or `CN6` (Nucleo-144) to connect to your target board.

![[Nucleo_SWD.png]]

This debugger has a 6-pin dupont header for connecting to a SWD header on the target board. The pinout of this connector can be found below.

## китайский ST-Link v2

### [[SWD]]

![[ST-Link_v2.png]]

[Доработка китайского ST-Link v2: добавляем интерфейс вывода отладочной информации SWO и ногу Reset](https://habr.com/ru/post/402927/)

