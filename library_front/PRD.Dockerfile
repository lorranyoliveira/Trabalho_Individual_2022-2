FROM node

WORKDIR /usr/app

RUN chown -R node:node /usr/app

COPY ./package.json ./

RUN npm install

RUN npm install react@latest react-dom@latest 

EXPOSE 3000

CMD ["npm", "start"]

