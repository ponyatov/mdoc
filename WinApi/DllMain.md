# WinApi/ `DllMain()`

- https://docs.microsoft.com/ru-ru/windows/win32/dlls/dllmain


```cpp
#ifndef __fastfail
	// DECLSPEC_NORETURN VOID __fastfail(unsigned int);
	#define __fastfail(arg) { ExitProcess(arg); }
#endif

BOOL WINAPI DllMain(
	_In_ HINSTANCE hinstDLL, 
	_In_ DWORD fdwReason, 
	_In_ LPVOID lpvReserved ) {

	switch (Call_Reason) {
		case DLL_PROCESS_DETACH:
			__fastfail(EXIT_SUCCESS);
			break;
		case DLL_PROCESS_ATTACH:
			break;
		default:
			break;
	}
	return true;
}
```

- [[WinApi/ExitProcess]]
- [[WinApi/VirtualProtect]]
- [[WinApi/LoadLibraryW]]
- [[WinApi/BOOL]]
- [[WinApi/WINAPI]]
- [[WinApi/HINSTANCE]]
- [[WinApi/DWORD]]
- [[WinApi/LPVOID]]

- `hinstDLL`
	- Дескриптор модуля [[WinApi/DLL]]. Значением является базовый адрес библиотеки DLL.
	- [[WinApi/HINSTANCE]] библиотеки DLL совпадает с [[WinApi/HMODULE]] библиотеки DLL, поэтому `hinstDLL` можно использовать в вызовах функций, требующих дескриптора модуля.
- `fdwReason`
	- Код причины, указывающий, почему вызывается функция точки входа DLL. Этот параметр может принимать одно из указанных ниже значений.

|||
|-|-|
|[[DLL_PROCESS_ATTACH]]|Библиотека [[WinApi/DLL]] загружается в виртуальное адресное пространство текущего процесса в результате запуска процесса или в результате вызова [[WinApi/LoadLibrary]]. |
|[[DLL_PROCESS_DETACH]]|Библиотека [[DLL]] выгружается из виртуального адресного пространства вызывающего процесса, так как она была загружена безуспешно или количество ссылок достигло нуля|
|[[DLL_THREAD_ATTACH]]|Текущий процесс создает новый поток. В этом случае система вызывает функцию точки входа всех библиотек [[DLL]], подключенных к процессу.|
|[[DLL_THREAD_DETACH]]|Поток завершается чисто. Если библиотека [[DLL]] сохранила указатель на выделенную память в слоте [[TLS]], она должна использовать эту возможность, чтобы освободить память.|

![[lpvReserved]]



