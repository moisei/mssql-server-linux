Built on top of mssql-server-linux container
https://hub.docker.com/r/microsoft/mssql-server-linux/

To build docker image
docker build . -t  moisei/mssql-server-linux

To run:
docker run --name mssql -p 1433:1433 -d moisei/mssql-server-linux

To trace logs:
docker logs mssql
