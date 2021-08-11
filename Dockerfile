FROM node:14-alpine

WORKDIR /app

COPY package.json .

ARG NODE_ENV

RUN if [ "$NODE_ENV" = "production" ]; \
        then npm install --production; \
        else npm install; \
        fi

COPY . ./

ENV PORT 8000
EXPOSE $PORT

CMD ["node","index.js"]