# build environment
FROM node:9.6.1 as builder
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN npm install 
RUN npm install react-scripts@1.1.1 
RUN npm run build


# production environment


FROM nginx:1.13.10-alpine
COPY ./reactjs.conf /etc/nginx/conf.d/reactjs.conf
RUN mkdir /usr/share/nginx/html/reactjs
COPY --from=builder /usr/src/app/build /usr/share/nginx/html/reactjs/
EXPOSE 8083
CMD ["nginx", "-g", "daemon off;"]
