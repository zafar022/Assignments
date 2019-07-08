## 1:Installing PHP through source code
```
1:Download and unzip the source code
2:./ configure
3:make test
4:make
```

## 2:Installing mysql
```
1:it is installed by the name of mariadb in cestos
2:enable the maraidb
```
## 3:Installing wordpress
```
1:wget command with the properlink of wordpress
2:unzip it using unzip command
3:copy wordpress dir to /var/www/htm
```

## 4:Creating a database
```
1:Use mysql command
2:use create database followed by name followed by “;”
3:grant all privileges to the user
```

## 5:Configuring wordpress
```
1:Change the database name user and password  by moving in var/www/html/wordpress
In file wp.config.php
```

## 6:Configuring apache
```
1:move to cd /etc/apache2
2:configure sites-available
3:configure sites-enable
4;configure host file in /etc
```

