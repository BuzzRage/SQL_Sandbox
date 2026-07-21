# SQL_Sandbox
An SQL Sandbox for tests and learning purpose (with TryHackMe or root-me)

# Launch the database

```bash
./MySQL/launch.sh # If you choose MySQL
``` 

# Interact with the database

```bash
docker exec -it mysql mysql -u appuser -p appdb
```

( enter the password writen in `mysql/Dockerfile` )

or simple do `./MySQL/launch.sh "you SQL request"`

# Test and experiment

SQL Injection :

```bash
./launch.sh "user01\" UNION SELECT 1\"" # Will try to inject a UNION request
```

will give error : 
> ERROR 1222 (21000) at line 1: The used SELECT statements have a different number of columns

But 

```bash
./launch.sh "1\" UNION SELECT 1,2,3,4,5\"" # Will try to inject a UNION request
```

will give 
```
+----+----------+---------------------+--------------+--------------------+
| id | username | password            | phone_number | email              |
+----+----------+---------------------+--------------+--------------------+
|  1 | user01   | hash_placeholder_01 | +33600000001 | user01@example.com |
|  1 | 2        | 3                   | 4            | 5                  |
+----+----------+---------------------+--------------+--------------------+
```

# TODO

- Prepare few tables and populate them
- Deploy docker image for common database engine (MySQL, PostGreSQL and so on)
- put variables like root passwd in a .env
- make an alias for sending request (instead of docker -it )
- Try some common queries
- Provide a "cheatsheet" and prepare database to test several scenarios
- Test some known vulnebarilities ( error-based SQLi, union-based SQLi etc..)
