FROM n8nio/n8n:latest
USER root
RUN npm install -g drizzle-orm pg cheerio jsdom json-bigint puppeteer
RUN apk add --no-cache \
  udev \
  ttf-freefont \
  chromium \
  nss \
  freetype \
  freetype-dev \
  harfbuzz \
  ca-certificates \
  fontconfig \
  curl
USER node
RUN node /usr/local/lib/node_modules/puppeteer/install.mjs