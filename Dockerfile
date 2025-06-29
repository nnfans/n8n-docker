FROM n8nio/n8n:latest
USER root
RUN npm install -g drizzle-orm pg cheerio jsdom json-bigint puppeteer
RUN node /usr/local/lib/node_modules/puppeteer/install.mjs
RUN apk add --no-cache \
  chromium \
  nss \
  freetype \
  harfbuzz \
  ca-certificates \
  ttf-freefont \
  alsa-lib \
  bash \
  udev \
  dumb-init \
  curl
USER node