docker build -t mysql-custom .
docker volume create mysql_data
docker run -d \
  --name mysql \
  -e MYSQL_ROOT_PASSWORD='ChangeThisRootPassword!' \
  -e MYSQL_DATABASE='appdb' \
  -e MYSQL_USER='appuser' \
  -e MYSQL_PASSWORD='ChangeThisUserPassword!' \
  -p 3306:3306 \
  -v mysql_data:/var/lib/mysql \
  mysql-custom

