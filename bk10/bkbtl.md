# `bkbtl`

- https://github.com/nzeemin/bkbtl-qt
- https://github.com/nzeemin/bkbtl-doc/wiki

```shell
$ git clone https://github.com/nzeemin/bkbtl-qt.git ~/tmp/bkbtl
$ cd ~/tmp/bkbtl
$ sudo apt install -yu qtscript5-dev qtmultimedia5-dev
$ mkdir build ; cd build
$ qmake ../QtBkBtl.pro
$ make
```

## ROMы
https://github.com/nzeemin/bkbtl/tree/master/roms

```shell
$ cd ~/tmp/bkbtl/build

$ curl -o monit10.rom https://github.com/nzeemin/bkbtl/blob/master/roms/monit10.rom
$ curl -o tests.rom https://github.com/nzeemin/bkbtl/blob/master/roms/tests.rom
$ curl -o basic10_1.rom https://github.com/nzeemin/bkbtl/blob/master/roms/basic10_1.rom
$ curl -o basic10_2.rom https://github.com/nzeemin/bkbtl/blob/master/roms/basic10_2.rom
$ curl -o basic10_3.rom https://github.com/nzeemin/bkbtl/blob/master/roms/basic10_3.rom
```
### [[БК-0011]]*
```shell
$ curl -o b11m_ext.rom https://github.com/nzeemin/bkbtl/blob/master/roms/b11m_ext.rom
$ curl -o b11m_bos.rom https://github.com/nzeemin/bkbtl/blob/master/roms/b11m_bos.rom
$ curl -o b11m_mstd.rom https://github.com/nzeemin/bkbtl/blob/master/roms/b11m_mstd.rom
$ curl -o basic11m_0.rom https://github.com/nzeemin/bkbtl/blob/master/roms/basic11m_0.rom
$ curl -o basic11m_1.rom https://github.com/nzeemin/bkbtl/blob/master/roms/basic11m_1.rom
```

## run

```shell
$ ./QtBkBtl
```
