# `gen_tcp`

module that can be used to start a [[Net/TCP]] [[Net/socket]] that receives and transmits data. We'll use that library as the basis of our server.

- https://ru.hexlet.io/courses/erlang_101/lessons/practical_erlang_socket/theory_unit

Пора применить [[Erlang/Erlang]] по его прямому назначению -- для реализации сетевого сервиса. Чаще всего такие сервисы делают на базе веб-сервера, поверх протокола [[HTTP]]. Но мы возьмем уровень ниже -- [[TCP]] и [[UDP]] [[сокет]]ы.

