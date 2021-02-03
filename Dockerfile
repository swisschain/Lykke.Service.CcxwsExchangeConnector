FROM node:15
WORKDIR /app
COPY package.json /app
RUN npm install npm@latest -g
RUN npm install
npx electron-rebuild
npm rebuild
COPY . /app
CMD node app.js
EXPOSE 5000