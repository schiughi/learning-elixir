FROM elixir

ENV APP_ROOT /myapp
ENV APP_HONE issues
ENV LANG C.UTF-8

RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN mkdir ${APP_ROOT}
RUN mkdir ${APP_ROOT}/${APP_HONE}
WORKDIR ${APP_ROOT}/${APP_HONE}

ADD . /${APP_ROOT}

RUN yes | mix local.hex
RUN yes | mix local.rebar
