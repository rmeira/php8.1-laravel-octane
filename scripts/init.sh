#!/bin/sh

php artisan optimize
php artisan migrate --force

exec /usr/bin/supervisord  -c /etc/supervisord.conf
