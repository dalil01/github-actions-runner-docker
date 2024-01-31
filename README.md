# Github Runner Docker

This Docker image provides a GitHub Actions runner that can be easily configured and deployed within a Docker environment. It allows you to run GitHub Actions workflows on your own infrastructure.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/dalil01/github-runner-docker/blob/main/LICENSE)

## Docker hub

Find the Docker image on Docker Hub: https://hub.docker.com/repository/docker/dalil01/github-actions-runner

## Build

To build the Docker image, use the following command:

```
docker build -t dalil01/github-actions-runner:1.0.0-<arch> --build-arg ARCH=<arch> --build-arg RUNNER_VERSION=<version> .
```

Replace `<arch>` with the desired architecture (e.g., `amd64`, `arm64`) and `<version>` with the GitHub Actions runner version.

## Run

To run the GitHub Actions runner in a Docker container, use the following command:

```
docker run -d --rm --name <container-name> -e RUNNER_NAME=<RUNNER_NAME> -e REPOSITORY_URL=<REPOSITORY_URL> -e TOKEN=<TOKEN> -e RUNNER_ALLOW_RUNASROOT="1" -v /var/run/docker.sock:/var/run/docker.sock dalil01/github-actions-runner:1.0.0-<arch>
```

Replace `<container-name>`, `<RUNNER_NAME>`, `<REPOSITORY_URL>`, `<TOKEN>`, and `<arch>` with your desired values.

## Resources

Find the newest runner version and additional documentation: https://github.com/actions/runner/