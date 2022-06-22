# Processor module selection

### Requirements

-   [[hw/Wireless]] data interface available off the shelf
-   Low power consumptions
-   Ease of firmware development
-   Available in mass production quantities
-   Large user community

**

### Widely Available kits

Many projects and services underestimate the importance of user customization for some reasons. This problem is especially noticeable in the field of IoT application for tasks specific to the [[SOHO]] segment: individuals, start-ups, research groups, small businesses, etc. The every next [[IoT]] vendor forces his users to use proprietary routers, protocols, and hardware components. The "protocol problem" is a huge problem of [[IoT]] -- while this concept available on the market more then ten years there is no public standard on cross-vendor compatibility.

The solution of cross-vendor [[IoT]] compatibility problem also known dozens of years -- that's the [[Open Hardware]] paradigm. The idea is about making money not on proprietary patent-covered hardware but on extended and payed customers support, while the entry threshold for new users and co-supporters is very low due to public available manuals and large user community.

The [[Open Hardware]] paradigm also solves the next big problem -- post-mortem long-term support for products and systems provided by vendors kicked off the market. As a variant, a lot of users faced with a situation when vendors drops support for old hardware movels every next year. The hardware stays still usable and fully sove its tasks, but the new next [[OS]] version comes, and you can not found any drivers for this OS.

So, for making our IoT platform to be more attractive for potential users, we should consider about using publicly-available development kits in place of making custom [[PCB]] and closed firmware.

![[Wireless#Wireless media variants]]

## Hardware selection matrix

| | [[Arduino]] | [[ESP32]] | [[STM32]] | [[Raspberry]] |
|-|-|-|-|
| [[LoRa]] | [[MKR WAN 1300]] | [[TTGO LoRa32]] | [[NUCLEO-WL55JC]] | [[SX1276]] |
| [[Zigbee]] | [[XBee shield]] | [[ESP32-H2]] | |||
| [[WiFi]] | [[Arduino Uno WiFi r2]] | [[ESP8266]] [[ESP32]] |||

![[MKR WAN 1300]]

### Generic [[Arduino]] module with external [[SX1276]] module

### [[Arduino]] + ![[XBee shield]]

### ![[ESP32-H2]]

### ![[Arduino Uno WiFi r2]]

### ![[ESP8266]]

### ![[ESP32]]
