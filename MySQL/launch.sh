
REQUEST="select username,email from users where username = \"$1\";"
DEFAULT_REQUEST="select * from users;"
alias send="docker exec -it mysql mysql -u appuser -pChangeThisUserPassword! -e '$REQUEST' appdb"

echo "REQUEST : $REQUEST"
send
