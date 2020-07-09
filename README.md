# Docker Ghost S3

This image uses as base the Official Ghost image and installs the [ghost-storage-adapter-s3](https://github.com/colinmeinke/ghost-storage-adapter-s3), this to store assets in S3 instead of locally.

## Environment Variables

These are the variables you need to provide:

```
storage__active: ghost-s3
storage__ghost-s3__accessKeyId:
storage__ghost-s3__secretAccessKey:
storage__ghost-s3__bucket:
storage__ghost-s3__region:
```

Checkout [ghost-storage-adapter-s3](https://github.com/colinmeinke/ghost-storage-adapter-s3) for more info.
