FROM mysql:8.0
# FROM mysql:5.7

# M1 Mac でapt-getできないのに対処
RUN sed -i s/deb.debian.org/archive.debian.org/g /etc/apt/sources.list
RUN sed -i 's|security.debian.org|archive.debian.org/|g' /etc/apt/sources.list
RUN sed -i '/stretch-updates/d' /etc/apt/sources.list

RUN apt-get update && apt-get install -y --no-install-recommends \
    vim

RUN touch /var/log/mysql/mysqld.log
