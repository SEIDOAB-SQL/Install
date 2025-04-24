#!/bin/bash

#SQL SERVER 2022
################
#pull the container image to my computer
docker pull mcr.microsoft.com/mssql/server:2022-latest

#install and run the container 
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=skYhgS@83#aQ" -p 14333:1433 --name sql2022container --hostname sql2022 -d mcr.microsoft.com/mssql/server:2022-latest

#connection string
#Data Source=localhost,14333;Persist Security Info=True;User ID=sa;Pwd=skYhgS@83#aQ;Encrypt=False;


#MariaDb
########
#pull the container image to my computer
docker pull mariadb

# create a database container and run the docker 
docker run --name mariadbcontainer -e MYSQL_ROOT_PASSWORD=skYhgS@83#aQ -p 3306:3306 -d mariadb

#connection string
#server=localhost;uid=root;pwd=skYhgS@83#aQ


#Postgresql
##########
#pull the container image to my computer
docker pull postgres

# create a database container and run the docker 
docker run --name postgrescontainer -e POSTGRES_PASSWORD=skYhgS@83#aQ -d -p 5432:5432 postgres

#connection string
#Server=localhost;Port=5432;User Id=postgres;Password=skYhgS@83#aQ;
