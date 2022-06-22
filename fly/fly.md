# programming as a `fly`
## [[free writing]] в программировании
#### [[Live Coding]]

https://bitbucket.org/ponyatov/fly/src

### install

```shell
# install
$ git clone -o bb git@bitbucket.org:ponyatov/fly.git ~/fly
$ cd ~/fly
$ make install
```
```shell
$ touch README.md Makefile .gitignore .clang-format apt.txt
$ git checkout --orphan shadow
$ git add -A && git commit -a -m "."
$ git push -v -u bb shadow
```

##  общая концепция
- [[персистентная память|персистентная]] [[интерактивная среда]]
- объединение документирования и программирования в одном
- **[[free writing]] в программировании** -- пишется всё что приходит в голову, без контроля правильности, стиля, и не предполагается что это кто-то когда-то увидит

## [[требования к рабочей среде]]
## [[существующие инструменты]] на период до раскрутки системы
### подходящие языки и среды
- [[Clojure]]