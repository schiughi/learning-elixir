FROM elixir:1.2

ENV APP_HOME /myapp
ENV LANG C.UTF-8

RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN mkdir ${APP_HOME}
WORKDIR ${APP_HOME}/issues
RUN yes | mix local.hex
ADD . /${APP_HOME}
