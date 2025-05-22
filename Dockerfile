# Dockerfile
FROM node:18-alpine
WORKDIR /app
COPY app/ .
RUN npm install express
CMD ["node", "index.js"]
