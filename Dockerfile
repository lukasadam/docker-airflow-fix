FROM puckel/docker-airflow

USER root
RUN groupadd --gid 999 docker \
    && usermod -aG docker airflow
USER airflow
