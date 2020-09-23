FROM ubuntu:18.04

ENV FLUTTER_ROOT="/flutter"

RUN apt-get update

RUN apt-get install curl -y
RUN apt-get install git -y
RUN apt-get install unzip -y

RUN git clone https://github.com/flutter/flutter.git -b beta

RUN "${FLUTTER_ROOT}/bin/flutter" config --enable-web
RUN "${FLUTTER_ROOT}/bin/flutter" upgrade
RUN "${FLUTTER_ROOT}/bin/flutter" doctor


ENV PATH="${PATH}:${FLUTTER_ROOT}/bin"
