> docker pull mysql = download mysql image
> docker images = list all images in local machine
> docker rmi "image id" = remove image from local machine
> docker run -e MYSQL_ROOT_PASSWORD=password --name mymysql mysql = run mysql image 

*new terminal*
> docker ps = list all running containers
> docker exec -it mymysql bash = enter mysql container using bash shell
> mysql = enter mysql shell 

*mysql shell*
> show databases;
> use mysql;
> show tables;
> select * from user;
> exit