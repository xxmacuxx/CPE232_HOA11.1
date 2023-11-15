FROM ubuntu

MAINTAINER xxmacuxx <jaimaculada08@gmail.com>

# Skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# update packages
RUN apt update; apt dist-upgrade -y

# install packages
RUN apt install -y apache2 mariadb-server

# SEtting teh entrypoint
ENTRYPOINT apache2ctl -D FOREGOUND
ENTRYPOINT mariadb -D FOREGOUND
