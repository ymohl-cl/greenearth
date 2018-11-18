FROM postgres:9.5
MAINTAINER Clément <cdivry@student.42.fr>

RUN mkdir -pv /tmp/psql_data

# timezone
RUN apt-get install -y tzdata
ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN dpkg-reconfigure -f noninteractive tzdata

# locales
RUN apt-get install -y locales
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
RUN dpkg-reconfigure -f noninteractive locales
RUN update-locale LANG=en_US.UTF-8
ENV LANG en_US.UTF-8


ADD src/00_postgres_schema.sql  /tmp/psql_data/
ADD src/01_postgres_data.sql    /tmp/psql_data/
ADD src/init_database.sh /docker-entrypoint-initdb.d/

RUN chmod -R 777 /tmp/psql_data
