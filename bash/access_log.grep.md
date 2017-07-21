# Usefull git log commands


# See live traffic on access log

`tail -f /var/log/httpd/access_log | grep -Eo "GET [^?]+"`