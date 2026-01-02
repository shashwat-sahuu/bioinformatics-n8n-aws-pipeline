FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    bwa \
    samtools \
    freebayes \
    bcftools \
    fastqc \
    openjdk-11-jre \
    wget \
    unzip

# Install SnpEff
RUN wget https://snpeff.blob.core.windows.net/versions/snpEff_latest_core.zip \
    && unzip snpEff_latest_core.zip \
    && mv snpEff /opt/snpeff

ENV PATH="/opt/snpeff:$PATH"
 
WORKDIR /pipeline

CMD ["bash", "scripts/run_pipeline.sh"]

