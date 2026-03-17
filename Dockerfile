FROM node:16-alpine
WORKDIR /app
# RUN addgroup dev && adduser -S -G vini dev
# USER vini
COPY package.json . 
RUN apk add --no-cache python3 g++ make
RUN yarn install --force
COPY . .
CMD ["node", "src/index.js"]
EXPOSE 3000
