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

## Release new version

This is the workflow we are using to release a new version to Docker

- Update the Ghost version in `Dockerfile`
- Build and push using the version as tag for the image, ex: `make build tag=3.22.2 && make push tag=3.22.2`
- Tag image as latest and push to Dockerhub, `make build && make push`
- Create a Git tag and push it to GitHub, `git tag 3.22.2 && git push origin --tags`
- Use the new version