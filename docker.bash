> docker pull mysql = download mysql image
> docker images = list all images in local machine
> docker rmi "image id" = remove image from local machine
> docker run -e MYSQL_ROOT_PASSWORD=password --name mymysql mysql = run mysql image 

*new terminal*
> docker ps = list all running containers
> docker exec -it mymysql bash = enter mysql container using bash shell
> mysql = enter mysql shell 

*mysql shell*
> mysql -p = enter mysql shell with password 
> show databases;
> use mysql;
> show tables;
> select * from user;
> exit


*project*
mongo:
╰─ docker run --name mymongo -p 27017:27017 mongo

mysql:
╰─ dokcer run --name projectmysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=pass  mysql                                                                                


Dockerfile -> Create image from Dockerfile
> docker build -t myimage . = create image from Dockerfile


> docker images 
> docker run --name server1 -p 5000:3000 myimage