FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    bwa \
    samtools \
    freebayes \
    bcftools \
    fastqc \
    openjdk-11-jre \
    wget \
    unzip \
    git \
    && apt-get clean

# Install SnpEff
RUN wget https://snpeff.blob.core.windows.net/versions/snpEff_latest_core.zip \
    && unzip snpEff_latest_core.zip \
    && mv snpEff /opt/snpeff \
    && rm snpEff_latest_core.zip

ENV PATH="/opt/snpeff:$PATH"

WORKDIR /pipeline

COPY . .

RUN chmod +x scripts/*.sh

CMD ["bash", "scripts/run_pipeline.sh"]
