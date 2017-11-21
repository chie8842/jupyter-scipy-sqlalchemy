# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/scipy-notebook

LABEL maintainer="chie-hayashida <chie8842@gmail.com>"

USER root

# install sqlalchemy
RUN apt-get update && \
    apt-get install -y postgresql

RUN conda install --quiet --yes \
    'SQLAlchemy' \
    'sqlalchemy-redshift' \
    'psycopg2'

USER $NB_USER
