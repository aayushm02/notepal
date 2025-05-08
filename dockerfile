FROM node:18-alpine 
WORKDIR /app
COPY ./notepal/package.json ./notepal/package-lock.json ./
RUN npm install 
COPY . .

EXPOSE 3000
CMD ["npm","start"]
