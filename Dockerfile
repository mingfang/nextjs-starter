FROM node:14

WORKDIR /app

COPY package*.json ./
RUN npm ci --only=production

COPY . .
RUN npm run build

ENV PORT 3000
CMD [ "npm", "start" ]

