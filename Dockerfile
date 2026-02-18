FROM node:25.6.1@sha256:75c416c7d966e4684e58afa091a86c9a01b16c610e46d8e40c5563df18e9623a

COPY . /ro-crate-html-lite
WORKDIR /ro-crate-html-lite
RUN npm install

# Don't run as root user
RUN useradd app
USER app

ENTRYPOINT ["node", "index.js"]