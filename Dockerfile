FROM node:14-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . ./

ENV PORT 8001
EXPOSE $PORT

CMD ["npm", "run" ,"dev"]