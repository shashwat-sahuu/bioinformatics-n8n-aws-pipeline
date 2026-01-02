FROM ubuntu:22.04

LABEL maintainer="Shashwat Sahu"

RUN apt-get update && apt-get install -y \
    bwa \
    samtools \
    bcftools \
    fastqc \
    wget \
    unzip \
    python3 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /pipeline

CMD ["bash"]

