FROM ghost:3.22.2

WORKDIR /var/lib/ghost
RUN npm install ghost-storage-adapter-s3 \
  && mkdir -p ./content.orig/adapters/storage \
  && cp -vr ./node_modules/ghost-storage-adapter-s3 ./content.orig/adapters/storage/ghost-s3