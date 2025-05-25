FROM debian:latest

LABEL maintainer="k4itrun <tsx@billoneta.xyz>"

WORKDIR /app

COPY . .

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
        bash \
        curl \
        unzip \
        wget \
        php && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN chmod +x camera.sh

CMD ["bash", "camera.sh", "--no-update"]
