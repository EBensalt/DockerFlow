#!/bin/bash

service mariadb start
mariadb-secure-installation << EOF

y
y
Mehdi1337
Mehdi1337
y
y
y
y
EOF
mariadb << EOF
create database test;
create user 'test'@'%' identified by 'Mehdi1337';
grant all privileges on test.* to 'test'@'%';
flush privileges;
exit
EOF
sleep 1
service mariadb stop
exec mariadbd
