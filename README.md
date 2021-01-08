# PHP 5.6 Docker

## Installation
make sure Docker and Docker Compose is installed and configure succefully
Copy project inside of `www` folder.
Change docker-compose.yml file for customisation

```sh
 $ docker-compose up
```

 - Project URL is in http://localhost:9876
 - PHPMYADMIN url is http://localhost:8387

## Example
In `index.php` file inside www folder

```php
<?php

echo "Hello world";

// Server is the name of service in docker-compose.yml file
// mysql by default
$pdo = new PDO('mysql:host=mysql;dbname=mydatabase', 'dbuser', 'dbpassword');

// $pdo->query('SELECT * FROM ....');

// OR Using mysqli

$mysqli = new mysqli("mysql","dbuser","my_password","mydatabase");

// Check connection
if ($mysqli -> connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}
```

When you have error 500 delete .htaccess file

## Stop docker server
```sh
 $ docker-compose down --remove
```
