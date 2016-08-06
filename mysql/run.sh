MYSQL_ROOT_PASSWORD=root


# create a named volume to store data
docker volume create --name mysql

# create a data volume container
docker create -v mysql:/var/lib/mysql --name mysql-data mysql:latest

# create new container and run
docker run -d --name mysql --volumes-from mysql -e MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD -p 3306:3306 mysql:latest