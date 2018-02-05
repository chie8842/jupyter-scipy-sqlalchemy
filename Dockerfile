# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/scipy-notebook

LABEL maintainer="chie-hayashida <chie8842@gmail.com>"

USER root

# install sqlalchemy
RUN apt-get update && \
    apt-get install -y postgresql

RUN conda install --quiet --yes -c sodre -c conda-forge \
    'SQLAlchemy' \
    'sqlalchemy-redshift' \
    'PyMySQL' \
    'psycopg2' \
    'pyspark' \
    'ipython-sql=0.3*'

USER $NB_USER
