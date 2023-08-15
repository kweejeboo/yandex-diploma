FROM node:16 AS builder
WORKDIR /usr/src/app
COPY ./package.json .
COPY . .
ENV NODE_ENV=/
ENV VUE_APP_API_URL=/
RUN npm install --cache .npm --prefer-offline && npm run build 

FROM nginx:1.22.1-alpine
RUN rm -rf /usr/share/nginx/html/*
COPY --from=builder /usr/src/app/dist/ /usr/share/nginx/html/
# COPY ./nginx-conf/nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
ENTRYPOINT ["nginx", "-g", "daemon off;"]