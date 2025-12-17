# PostgreSQL

```
PGPASSWORD=123456 psql -h 127.0.0.1 -U muser moviedb

psql postgresql://[user[:password]@][host][:port][,...][/dbname][?param1=value1&...]
```


## PostgreSQL für Oracle Nutzer

Es gibt einige Änderungen

 - Der Typ `VARCHAR2` existiert nicht -> `VARCHAR` verwenden
 - Der Typ `NUMBER` existiert nicht -> `NUMERIC` verwenden
