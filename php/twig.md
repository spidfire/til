# Twig tricks

https://twig.symfony.com/doc/2.x/#reference

## List

(key value variant: `{% for key, value in items %}`)

```
{% for item in items %}
    {{ item }}
{% else %}
    No items
{% endfor %}
```


## Make phonebook (uppercase letter for start of sorted words)

```
{% set previous = "" %}
{% for c in clients %}
    {% set a = c.name |slice(0,1) %}
    {% if previous != a %}
    <h2>{{ a }}</h2>
{% set previous = a %}
{% else %}
    No items
{% endfor %}
```



## Macros

```
{% macro input(name, value, type, size) %}
    <input type="{{ type|default('text') }}" name="{{ name }}" value="{{ value|e }}" size="{{ size|default(20) }}" />
{% endmacro %}
```


```
{% import "forms.html" as forms %}
<p>{{ forms.input('username') }}</p>
```
