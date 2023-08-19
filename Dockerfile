# FROM node:14

# WORKDIR /app

# COPY package*.json ./
# RUN npm install

# COPY . .

# EXPOSE 3000

# CMD ["npm", "start"]


FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

# ENV PATH /app/node_modules/.bin:$PATH

RUN npm install

EXPOSE 3000

CMD ["npm", "run", "dev"]