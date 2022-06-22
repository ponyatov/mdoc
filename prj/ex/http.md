## `/mix.exs`

```elixir
  defp deps do
    [
	  {:cowboy, "~> 2.9"}
    ]
  end
```

![[Elixir/config#config runtime exs]]

## `static`

```shell
mkdir static static/cdn
cp tmp/.gitignore static/cdn/
touch static/index.html static/css.css static/js.js
git add -A static
```

## `Makefile`

```Makefile
# version
JQUERY_VER   = 3.6.0
BS_NIGHT_VER = 1.1.3
BS_VER       = 5.1.3
```
```Makefile
gz: js

js: static/cdn/jquery.min.js \
	static/cdn/bootstrap-night.min.css \
	static/cdn/bootstrap.min.js

static/cdn/jquery.min.js:
	$(CURL) $@ https://cdnjs.cloudflare.com/ajax/libs/jquery/$(JQUERY_VER)/jquery.min.js

static/cdn/bootstrap-night.min.css:
	$(CURL) $@ https://cdn.jsdelivr.net/npm/bootstrap-dark-5@$(BS_NIGHT_VER)/dist/css/bootstrap-night.min.css

static/cdn/bootstrap.min.js:
	$(CURL) $@ https://cdnjs.cloudflare.com/ajax/libs/bootstrap/$(BS_VER)/js/bootstrap.min.js
```

## [[bootstrap]]
## [[cowboy2]]
