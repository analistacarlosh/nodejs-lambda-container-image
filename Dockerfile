FROM node:12.13.0

WORKDIR /app
COPY . .

RUN echo 'npm run handler'
CMD [ "npm", "run", "handler" ]