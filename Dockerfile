FROM ruby:3.1.2
ARG ROOT="/myapp"
ENV LANG=C.UTF-8
ENV TZ=Asia/Tokyo

WORKDIR ${ROOT}

RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
		  vim tzdata less tig cron
