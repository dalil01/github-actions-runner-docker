FROM debian:bullseye

RUN apt-get update -y \
    && apt-get install -y \
        curl \
        build-essential \
        apt-transport-https \
        ca-certificates \
        gnupg-agent \
        software-properties-common

RUN curl -fsSL https://get.docker.com -o get-docker.sh \
    && sh get-docker.sh

WORKDIR /actions-runner

ARG ARCH=x64
ARG RUNNER_VERSION=2.312.0

RUN curl -o "actions-runner-linux-${ARCH}-${RUNNER_VERSION}.tar.gz" -L \
    "https://github.com/actions/runner/releases/download/v${RUNNER_VERSION}/actions-runner-linux-${ARCH}-${RUNNER_VERSION}.tar.gz" \
    && tar xzf "actions-runner-linux-${ARCH}-${RUNNER_VERSION}.tar.gz" \
    && ./bin/installdependencies.sh

COPY start.sh ./

RUN chmod +x start.sh

CMD ["./start.sh"]