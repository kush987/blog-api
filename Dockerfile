FROM node:18-alpine3.16
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm uninstall bcrypt
RUN npm i bcrypt
COPY . .
EXPOSE 8080
# CMD ["npm", "start"]
CMD ["node", "index.js"]
