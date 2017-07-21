# Set up VirtualHosts


Uncomment 
Include etc/extra/httpd-vhosts.conf
from httpd.conf

```
<VirtualHost *:80>
    ServerName masterthesis3
    ServerName masterthesis2
    ServerName masterthesis
    ServerName subdomain.masterthesis
    DocumentRoot "/Users/djurre/projects/master-thesis/src/experiments"
    <Directory "/Users/djurre/projects/master-thesis/src/experiments">
        Options Indexes FollowSymLinks Includes execCGI
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>

<VirtualHost *:80>
    ServerName 127.0.0.1
    DocumentRoot "/Applications/XAMPP/xamppfiles/htdocs"
    <Directory "/Applications/XAMPP/xamppfiles/htdocs">
        Options Indexes FollowSymLinks Includes execCGI
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
```
