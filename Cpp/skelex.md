# skelex: Lexical Skeleton
## шаблон программы с [[парсер]]ом

Большинство программ требуют тот или иной **текстовый ввод данных**, но как его полноценно реализовать, почему-то в учебниках программированию на [[С++]] не описано. Везде ограничиваются использованием примитивного ввода через функцию [[scanf]] или [[istream]], но *для реальных практических целей её явно недостаточно*.

В то же время, такие инструменты как генераторы парсеров, такие как [[flex]]/[[bison]], [[ragel]] или монстр [[ANTLR]], позволяют реализовать ввод практически любых данных в [[ASCII формат]]е.

## установка инструментов

Два пакета [[flex]] и [[bison]] входят в стандартную поставку любой [[Linux]]-системы или [[MinGW]]/[[msys2]]

```sh
apt install -yu flex bison
```

Если вы планируете использовать парсинг на микроконтроллерах, единственный генератор парсеров, который умеет генерировать **отлаживаемый** код на С++ это [[ragel]]:

```sh
apt install -yu ragel
```

## `main()`

```Cpp
int main(int argc, char *argv[]) {
	printf("\n");
	arg(0, argv);
	for (int i = 1; i < argc; i++) {
		arg(i, argv);
		assert(yyin = fopen(argv[i], "r"));
		yyparse();
		fclose(yyin);
	}
	dump();
	printf("\n");
	go();
}
```

- [[arg]]
- [[yyin]]
- [[yyparse]]
- [[dump]]