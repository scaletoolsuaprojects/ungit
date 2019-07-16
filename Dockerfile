FROM node:10
RUN apt-get update -qq && apt-get install -y nano   \
                                    build-essential \
                                    libpq-dev       \
                                    curl
RUN npm install -g ungit
RUN mkdir /etc/ungit
WORKDIR /etc/ungit

CMD ["ungit"]