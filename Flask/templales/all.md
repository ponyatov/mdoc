## /templales/all.html

[[VSCode/extensions]]

[[HTML/head]]

```html
<!DOCTYPE html>
<html lang="ru">
    <head>
        <title>{{title}}</title>
        <link rel="shortcut icon" href="/static/logo.png">
        {% block head %}{% endblock %}
    </head>
    <body>
        {% block body %}{% endblock %}
    </body>
    <script src="/static/cdn/jquery.min.js"></script>
    {% block script %}{% endblock %}
</html>
```
