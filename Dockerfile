FROM node:8.16  AS build

WORKDIR /build

COPY package.json package-lock.json ./
RUN npm install

COPY . .
EXPOSE 80
CMD ["npm", "start"]
