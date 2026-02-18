FROM --platform=$BUILDPLATFORM node:25.6.1

COPY . /ro-crate-html-lite
WORKDIR /ro-crate-html-lite
RUN npm install

# Don't run as root user
RUN useradd app
USER app

ENTRYPOINT ["node", "index.js"]