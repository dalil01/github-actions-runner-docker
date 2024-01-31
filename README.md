# Github Runner Docker

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/dalil01/github-runner-docker/blob/main/LICENSE)

## Docker hub

- https://hub.docker.com/repository/docker/dalil01/github-actions-runner

## Build

```
docker build -t dalil01/github-actions-runner:1.0.0-<arch> --build-arg ARCH=<arch> --build-arg RUNNER_VERSION=<version> .
```

## Run

```
docker run -d --rm --name <container-name> -e RUNNER_NAME=<RUNNER_NAME> -e REPOSITORY_URL=<REPOSITORY_URL> -e TOKEN=<TOKEN> -e RUNNER_ALLOW_RUNASROOT="1" -v /var/run/docker.sock:/var/run/docker.sock dalil01/github-actions-runner:1.0.0-<arch>
```

## Resources

- To find the newest runner version: https://github.com/actions/runner/