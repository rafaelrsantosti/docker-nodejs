FROM debian

RUN apt-get update && \
    apt-get install npm -y

ADD src/ /src
WORKDIR /src

RUN npm install

EXPOSE 80

CMD ["nodejs", "index.js"]
