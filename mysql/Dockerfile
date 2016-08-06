FROM percona:latest
# https://hub.docker.com/_/percona/

# When a container is started for the first time, a new database mysql will be initialized with the provided configuration variables. 
# Furthermore, it will execute files with extensions .sh and .sql that are found in /docker-entrypoint-initdb.d
ADD ./scripts /docker-entrypoint-initdb.d

COPY . /home/mysql/

WORKDIR /home/mysql/