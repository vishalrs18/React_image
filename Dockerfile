FROM node

LABEL maintainer=vishal

WORKDIR /code

COPY package.json .

COPY package-lock.json .

COPY . .

RUN npm i

ENTRYPOINT ["npm", "run", "start"]

EXPOSE 8080
