FROM postgres:9.5
COPY ./postgres/init-database.sh /docker-entrypoint-initdb.d/init-database.sh
RUN chmod 775 /docker-entrypoint-initdb.d/init-database.sh
