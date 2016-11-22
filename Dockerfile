FROM microsoft/mssql-server-linux

RUN apt update && \
	apt install -y \
		python \
		sudo

ENV SA_PASSWORD=My@Super@Secret

ONBUILD RUN /opt/mssql/bin/sqlservr-setup --accept-eula --set-sa-password

ADD entrypoint.sh /
ENTRYPOINT /entrypoint.sh
