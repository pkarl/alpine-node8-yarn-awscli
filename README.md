# Docker Alpine node8 yarn awscli

It's amazing! I'm using it as a base for circleci builds

Available from docker hub as [steyblind/alpine-node8-yarn-awscli](https://hub.docker.com/r/steyblind/alpine-node8-yarn-awscli/)

## CircleCI config.yml usage

```
...
jobs:
  test:
    docker:
      - image: 'steyblind/alpine-node8-yarn-awscli'
    steps:
      - checkout
      - run: yarn
      - run: yarn test
      - run: aws s3 cp /app s3://some-bucket/some-path --recursive
...
```
