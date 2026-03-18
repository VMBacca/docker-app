FROM node:20-alpine
WORKDIR /app
COPY package*.json . 
RUN apk add --no-cache python3 g++ make
RUN npm ci
COPY . .
CMD ["node", "src/index.js"]
EXPOSE 3000