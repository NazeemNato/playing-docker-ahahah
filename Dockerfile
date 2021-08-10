FROM node:14-alpine

WORKDIR /src
COPY package.json package-lock.json /src/
RUN npm install --production

COPY . /src

EXPOSE 8000
CMD ["node","index.js"]