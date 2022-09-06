FROM node:13-alpine

WORKDIR /usr/app

COPY library_front/package.json ./

RUN npm install

RUN npm install react@latest react-dom@latest 

EXPOSE 3000

CMD ["npm", "start"]

