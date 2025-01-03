FROM node:16-alpine

WORKDIR /usr/src/app

COPY ./src ./src
COPY ./public ./public
COPY ./package-lock.json ./package-lock.json
COPY ./package.json ./package.json 

RUN npm install

RUN npm run build

RUN npm install -g serve

ENV REACT_APP_BACKEND_URL=http://localhost:5000/api/ping

RUN adduser -D appuser
USER appuser

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
