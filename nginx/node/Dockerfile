FROM    ubuntu

# Install Node.js and other dependencies
RUN apt-get update && \
  apt-get -y install curl && \
  apt-get -y install gnupg && \
  curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
  apt-get -y install python build-essential nodejs

# Install nodemon
RUN npm install -g nodemon

# Provides cached layer for node_modules
ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /src && cp -a /tmp/node_modules /src/

# Define working directory
WORKDIR /src
ADD . /src

# Expose port
EXPOSE  8080

# Run app using nodemon
CMD ["nodemon", "/src/index.js"]
