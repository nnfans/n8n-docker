FROM n8nio/n8n:latest
USER root
RUN npm install -g drizzle-orm pg cheerio jsdom json-bigint playwright
RUN apk add --no-cache chromium
USER node