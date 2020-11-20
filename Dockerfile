FROM nginx:1.16.0

RUN rm -rf /usr/share/nginx/html/*
RUN rm -rf /etc/nginx/conf.d/default.conf

COPY conf.d/frontend.conf /etc/nginx/conf.d/
COPY proxy.d/backend.conf /etc/nginx/proxy.d/
COPY node_modules/@molgenis-ui /usr/share/nginx/html/@molgenis-ui
COPY node_modules/@molgenis-ui/components-library/styleguide /usr/share/nginx/html/styleguide