FROM ubuntu:14.04.1

RUN apt-get -y --force-yes install curl
RUN curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
RUN apt-get install -y nodejs

ADD . /app
WORKDIR /app

# Add any custom env vars here
# ENV FOO=foo \
#     BAR=bar
ENV NODE_ENV=production

# If you change the port, remember to set the proper ENV var to match.
EXPOSE 80

CMD ["npm","start"]
