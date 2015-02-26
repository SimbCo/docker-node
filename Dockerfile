FROM simbco/dev
MAINTAINER Simeon Bateman <simeon@simb.co>

ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN npm install
ONBUILD COPY . /usr/src/app

CMD [ "npm", "start" ]
