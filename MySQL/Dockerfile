FROM mysql:latest

# Optional: put  MySQL config
COPY my.cnf /etc/mysql/conf.d/my.cnf

# Init scripts (executed on first startup when the data dir is empty)
COPY init/ /docker-entrypoint-initdb.d/
