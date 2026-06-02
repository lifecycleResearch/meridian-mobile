FROM nginx:1.27-alpine

COPY index.html /usr/share/nginx/html/index.html
COPY manifest.webmanifest /usr/share/nginx/html/manifest.webmanifest
COPY sw.js /usr/share/nginx/html/sw.js
COPY icon.svg /usr/share/nginx/html/icon.svg

COPY nginx.conf /etc/nginx/conf.d/default.conf

HEALTHCHECK --interval=30s --timeout=3s CMD wget -q -O- http://127.0.0.1:8080/ >/dev/null 2>&1 || exit 1

EXPOSE 8080
