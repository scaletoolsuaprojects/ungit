FROM node:10
RUN apt-get update -qq && apt-get install -y nano   \
                                    build-essential \
                                    libpq-dev       \
                                    curl
RUN npm install -g ungit
WORKDIR /ungit

CMD ["ungit", "--ungitBindIp", "0.0.0.0"]