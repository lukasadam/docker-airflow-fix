FROM puckel/docker-airflow

USER root
RUN groupadd --gid 999 docker \
    && usermod -aG docker airflow
USER airflow

EXPORT DOCKER_BUILDKIT=0
EXPORT COMPOSE_DOCKER_CLI_BUILD=0
