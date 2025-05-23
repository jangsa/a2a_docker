FROM ubuntu:24.04

WORKDIR /home/root

RUN apt-get update && apt-get install -y git

RUN apt-get install -y python3-venv

RUN apt-get install -y python3-pip

RUN apt-get install -y curl

RUN curl -LsSf https://astral.sh/uv/install.sh | sh

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

