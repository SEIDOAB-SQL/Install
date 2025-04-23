#!/bin/bash

#SQL SERVER 2022
#pull the container image to my computer
docker pull mcr.microsoft.com/mssql/server:2022-latest

#install and run the container 
docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=skYhgS@83#aQ" -p 14333:1433 --name sql2022container --hostname sql2022 -d mcr.microsoft.com/mssql/server:2022-latest

#connection string
#Data Source=localhost,14333;Persist Security Info=True;User ID=sa;Pwd=skYhgS@83#aQ;Encrypt=False;