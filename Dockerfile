FROM node:lts-alpine

RUN mkdir -p /app
WORKDIR /app
COPY . .

RUN npm install --force
RUN npm run build

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

EXPOSE 3000 

ENTRYPOINT ["node", ".output/server/index.mjs"]
