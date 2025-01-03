# 1: build the app
FROM node:16-alpine AS builder

WORKDIR /usr/src/app

COPY ./src ./src
COPY ./public ./public
COPY ./package-lock.json ./package-lock.json
COPY ./package.json ./package.json 
RUN npm install
RUN npm run build

FROM node:16-alpine

WORKDIR /usr/src/app

RUN npm install -g serve

# 2: Copy the built app into an enviroment for simply running the compiled program
COPY --from=builder /usr/src/app/build /usr/src/app/build

RUN adduser -D appuser
USER appuser

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]

