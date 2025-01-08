FROM python:3.11-slim-bookworm

LABEL maintainer "Chris Bensch <chris.bensch@gmail.com>"

ARG GOGGLE_VER=v0.3.0

RUN apt-get update && apt-get -y dist-upgrade && apt-get -y install git

RUN useradd --create-home --shell /bin/bash scuba

USER scuba

WORKDIR /home/scuba

RUN git config --global advice.detachedHead false && \
    git clone --depth 1 --branch $GOGGLE_VER https://github.com/cisagov/ScubaGoggles.git

RUN cd ScubaGoggles && \
    pip install --upgrade pip && \
    pip install .

ENV PATH="/home/scuba/.local/bin:${PATH}"

ENTRYPOINT ["/home/scuba/.local/bin/scubagoggles"]

CMD ["-h"]
