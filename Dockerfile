FROM node:8
RUN mkdir -p /src
RUN npm i nodemon -g
COPY app/src /src
WORKDIR /src

# Add package.json
#ADD app/src/package.json /src/package.json

#install node modules
RUN npm install

#Add the source code
#ADD app/src /src
CMD ["npm", "run","watch"]

