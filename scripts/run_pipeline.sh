#!/bin/bash

echo "Starting Variant Calling Pipeline..."

FASTQ1=$1
FASTQ2=$2
REF=$3

bwa index $REF
bwa mem $REF $FASTQ1 $FASTQ2 > aligned.sam

samtools view -Sb aligned.sam > aligned.bam
samtools sort aligned.bam -o sorted.bam
samtools index sorted.bam

bcftools mpileup -f $REF sorted.bam | \
bcftools call -mv -o variants.vcf

echo "Pipeline Completed Successfully"

