# Composer fast start

```
wget http://getcomposer.org/composer.phar
or
curl -s http://getcomposer.org/installer | php
```


```
{
    "name": "Example",
    "description": "Example composer file",
    "keywords": [
    ],
    "homepage": "https://djur.re/",
    "repositories": [
    ],
    "authors": [
        {
            "name": "Djurre de Boer",
            "email": "info@djur.re"
        }
    ],
    "autoload": {
        "psr-4": {
            "Almanapp\\Classi\\": "src",
            "Almanapp\\Classi\\Config\\": "config",
            "Almanapp\\Classi\\Models\\": "propel/generated-classes/Almanapp/Classi/Models/",
            "Almanapp\\Classi\\Cronjobs\\": "cronjobs",
            "Almanapp\\Classi\\Bin\\": "bin",
            "Almanapp\\Classi\\Tools\\": "tools"
        }
    },
    "require": {
        "php": ">=7.1.0"
    },
    "scripts": {
        "test": "php composer.phar install"
    }
}


```

## Examples:

```
php composer.phar require propel/propel:~2.0@dev
```

## Twig

```
php composer.phar require twig/twig:~2.0

$loader = new Twig_Loader_Filesystem('/path/to/templates');
$twig = new Twig_Environment($loader, array());
$twig->render('index.html', array('the' => 'variables', 'go' => 'here'));

## subpage
{% extends "base.html" %}

{% block title %}Index{% endblock %}
{% block head %}
    {{ parent() }}
    <style type="text/css">
        .important { color: #336699; }
    </style>
{% endblock %}
{% block content %}
    <h1>Index</h1>
    <p class="important">
        Welcome to my awesome homepage.
    </p>
{% endblock %}


## base.html
{% block title %}Index{% endblock %}
{% block head %}
Stays here
{% endblock %}
{% block content %}
{% endblock %}

```



## Meekro
https://github.com/SergeyTsalkov/meekrodb
```
php composer.phar require sergeytsalkov/meekrodb

DB::$user = 'root';
DB::$password = '';
DB::$dbName = 'database';

$accounts = DB::query("SELECT * FROM accounts WHERE type = %s AND age > %i", $type, 15);
foreach ($accounts as $account) {
  echo $account['username'] . "\n";
}

// Insert a new row.
DB::insert('mytable', array(
  'name' => $name,
  'rank' => $rank,
  'location' => $location,
  'age' => $age,
  'intelligence' => $intelligence
));


```

## SLIM
https://github.com/SergeyTsalkov/meekrodb
```
php composer.phar require slim/slim "^3.0"

# Index
<?php
use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

require '../vendor/autoload.php';

$app = new \Slim\App;
$app->get('/hello/{name}', function (Request $request, Response $response) {
    $name = $request->getAttribute('name');
    $response->getBody()->write("Hello, $name");

    return $response;
});
$app->run();

.htaccess
RewriteEngine On
RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule ^ index.php [QSA,L]


```