# Docker Hub - custom php image(s)

## Quick reference
-	**GitHub**:  
	[argabi.com](http://argabi.com)

-	**GitHub**:  
	[github.com/argabi](https://github.com/argabi)

-	**DockerHub**:  
	[hub.docker.com/u/argabi](https://hub.docker.com/u/argabi)
<hr>

## Tags

-	[`latest`](https://github.com/argabi/DockerHub-php)
-	[`7.2-gd-apache`](https://github.com/argabi/DockerHub-php/tree/7.2-gd-apache) 
    - php version [7.2-apache](https://hub.docker.com/layers/php/library/php/7.2-apache/images/sha256-25417b6c9c2e1a52b551ba89087f4d07c216f58784773c9e7a1710a1f6e2b4a1) with installed [php-GD](https://www.php.net/manual/en/book.image.php)


# How to Use
mount your source code to `/var/www/html`, and start the container to start your app. 
```
docker run  -d -p 80:80 -v "$PWD":/var/www/html argabi/php:7.2-gd-apache
```