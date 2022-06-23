# HTML `manifest`
### also [[Web/appCache]]

- http://htmlbook.ru/html/html/manifest
- https://web.dev/add-manifest/?utm_source=devtools

Атрибут `manifest` реализует механизм кэширования, который позволяет создавать [[Web/offline|оффлайновые приложения]], т.е. работающие в автономном режиме без непосредственного подключения к Интернету. При первой загрузке страницы браузер обычно просит сохранить данные для своей работы, а затем уже обращается к ним при необходимости.

В качестве значения атрибута `manifest` указывается относительный или абсолютный путь к текстовому файлу, он называется «файл манифеста» или просто «манифест». Имя и расположение файла может быть любым, но он должен отдаваться сервером с заголовком [[text/cache-manifest]]. Например, для веб-сервера [[Apache/Apache]] в файле [[Apache/htaccess|.htaccess]] расположенным в корне сайта следует прописать такую строку.

```
AddType text/cache-manifest .cache
```

- [[Apache/AddType]]
- [[text/cache-manifest]]
- [[manifest|.cache]]

В этом случае файл манифеста имеет расширение cache. Сам манифест информирует браузер о том, какие ресурсы необходимо сохранить в локальном кэше. Этот список может содержать HTML и CSS-файлы, изображения, скрипты. Имена файлов перечисляются внутри секций описанных в табл. 1.

## Flask

```py
@app.route('/cache.manifest')
def cache_manifest():
	ret = make_response(render_template('manifest.appcache'), 200)
	ret.headers["Content-Type"] = "text/cache-manifest"
	return ret
```
