# Fetching the minified node image on alpine linux
FROM node:slim

# Setting up the work directory
# WORKDIR /nodejs-Project

# Copying all the files in our project
COPY . .

# Copiem pachetul de dependențe și fișierul package-lock.json
COPY package*.json ./

# Installing dependencies
RUN npm install

# Expunem portul pe care rulează aplicația
EXPOSE 8080

# Starting our application
CMD [ "node", "app.js" ]

# COMENZI rulate IN TERMINAL:

# Build the image, run in terminal:
# docker build -t my-app .

# Run the image
# docker run -dp 127.0.0.1:8080:8080 my-app  