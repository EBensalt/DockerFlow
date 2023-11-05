#!/bin/bash

service mariadb start
if [ -d "/var/lib/mysql/wordpress" ]
then echo "database already done"
else
mariadb-secure-installation << EOF

y
y
$MARIADB_ROOT_PASSWORD
$MARIADB_ROOT_PASSWORD
y
y
y
y
EOF
mariadb << EOF
create database wordpress;
create user '$MARIADB_USER'@'%' identified by '$MARIADB_USER_PASSWORD';
grant all privileges on wordpress.* to '$MARIADB_USER'@'%';
flush privileges;
exit
EOF
fi
sleep 1
service mariadb stop
exec mariadbd
