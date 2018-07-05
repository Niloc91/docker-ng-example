FROM node:9.11.1-alpine as fe-builder
#as invapp-builder tag

COPY package.json ./


#RUN npm global add @angular/cli
RUN yarn global add @angular/cli

# Storing node modules on a separate layer will prevent unnecessary npm installs at each build
RUN npm install \
  && mkdir -p /opt/invapp/source \
  && cp -R ./node_modules ./opt/invapp/source

WORKDIR /opt/invapp/source

COPY . .

RUN  ng build  && mv dist /opt/invapp/dist


WORKDIR /opt/invapp/

RUN rm -rf source/
