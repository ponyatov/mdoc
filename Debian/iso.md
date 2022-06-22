# Debian .iso

## apt .iso

- https://www.linux.org.ru/forum/admin/16607769

Есть Debian 9.13 без интернета Скачаны 3 DVD образа Задача: использовать их как repo

Сделано:

1.  Соответствующая вставка в fstab

```
/home/…/debian-9.13.0-amd64-DVD-1.iso /mnt/DSetup/СD1 iso9660 loop 0 1

/home/…/debian-9.13.0-amd64-DVD-2.iso /mnt/DSetup/СD2 iso9660 loop 0 1

/home/…/debian-9.13.0-amd64-DVD-3.iso /mnt/DSetup/СD3 iso9660 loop 0 1
```

2.  Соответствующая вставка в sources.list

```
deb file:///mnt/DSetup/СD1/debian/ stretch main contrib
deb file:///mnt/DSetup/СD2/debian/ stretch main contrib
deb file:///mnt/DSetup/СD3/debian/ stretch main contrib
```

после перезагрузки и запуска команды sudo apt update, ругается:

```
"E: Репозиторий «file:/mnt/DSetup/СD1/debian stretch Release» не подписан.
N: Обновление из этого репозитория нельзя выполнить безопасным способом, и поэтому по умолчанию он отключён."
```

Подскажите, пожалуйста, как поправить

