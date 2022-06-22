# `lpvReserved`

- Если [[fdwReason]] = [[DLL_PROCESS_ATTACH]],
	- `lpvReserved` имеет значение NULL для динамических нагрузок и 
	- не равно NULL для статических нагрузок. 
- Если [[fdwReason]] = [[DLL_PROCESS_DETACH]], 
	- `lpvReserved` имеет значение NULL , 
			- если был вызван [[FreeLibrary]] или 
			- загрузка [[DLL]] завершилась сбоем и 
	- не равно NULL , если процесс завершается.
