#!/bin/bash

service php7.4-fpm start
if [ -d "/var/www/html/wordpress" ]
then echo "files already done"
else
wget -P /var/www/html https://wordpress.org/latest.tar.gz
tar -C /var/www/html -xzf /var/www/html/latest.tar.gz
rm -rf /var/www/html/latest.tar.gz
mv /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
sed -i "s/database_name_here/wordpress/; s/username_here/$MARIADB_USER/; s/password_here/$MARIADB_USER_PASSWORD/; s/localhost/mariadb_container/" /var/www/html/wordpress/wp-config.php
wp core install --url="ebensalt.42.fr" --title="Inception" --admin_user="$WORDPRESS_ADMIN_USER" --admin_password="$WORDPRESS_ADMIN_PASSWORD" --admin_email="$WORDPRESS_ADMIN_EMAIL" --allow-root --path="/var/www/html/wordpress"
wp user create $WORDPRESS_TEST_USER $WORDPRESS_TEST_EMAIL --user_pass="$WORDPRESS_TEST_PASSWORD" --allow-root --path="/var/www/html/wordpress"
fi
sleep 1
service php7.4-fpm stop
exec php-fpm7.4 -F
