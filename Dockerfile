FROM ruby:2.2.4
RUN apt-get update -qq \
 		&& apt-get install -y build-essential libpq-dev \
 		&& apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN mkdir /www
WORKDIR /www
CMD /www/startup.sh