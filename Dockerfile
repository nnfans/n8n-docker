FROM n8nio/n8n:latest
USER root
RUN npm install -g drizzle-orm pg cheerio jsdom json-bigint puppeteer
RUN apk add --no-cache \
  nss \
  freetype \
  harfbuzz \
  ca-certificates \
  ttf-freefont \
  alsa-lib \
  libxcomposite \
  libxdamage \
  libxrandr \
  libxinerama \
  libxss \
  libxtst \
  gtk+3.0 \
  dbus \
  libdrm \
  libwebp \
  libxshmfence \
  udev \
  bash \
  dumb-init \
  curl
USER node
RUN node /usr/local/lib/node_modules/puppeteer/install.mjs