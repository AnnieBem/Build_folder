FROM gcr.io/cloud-builders/npm:node-14.10.0
COPY package.json ./
RUN npm install
RUN mkdir vue_npm_modules
COPY vue_package.json vue_npm_modules/package.json
RUN cd vue_npm_modules && npm install
