FROM nginx:alpine

# Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

WORKDIR /opt/app

# Create the server and location configuration
COPY docker/conf/nginx/default.conf /etc/nginx/conf.d/default.conf

# Install tools
RUN apk update \
  && apk add supervisor jq

ADD docker/conf/supervisor.d/default.ini /etc/supervisor.d/

COPY docker/start.sh /opt/app/start.sh

# From ‘builder’ stage copy over the artifacts in dist folder to default nginx public folder
COPY --from=fe-builder /opt/invapp/ /opt/app

CMD ["./start.sh", "INVALID_ENV_NAME"]
