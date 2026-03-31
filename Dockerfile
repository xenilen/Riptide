FROM node:alpine

WORKDIR /app
RUN apk add --no-cache git python3 build-base openssl
RUN git clone https://github.com/Real-Fruit-Snacks/Riptide.git /app
RUN npm install

EXPOSE 3000
ENTRYPOINT ["npm"]
CMD ["start"]
