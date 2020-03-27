# Language set on ubuntu
from http://docs.bigbluebutton.org/2.2/install.html#pre-installation-checks


## check lang
`cat /etc/default/locale`
should be: LANG="en_US.UTF-8"

```
$ sudo apt-get install language-pack-en
$ sudo update-locale LANG=en_US.UTF-8
```


# systemd

`sudo systemctl show-environment`

update with: `sudo systemctl set-environment LANG=en_US.UTF-8`

