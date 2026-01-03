#!/bin/bash
set -e

echo "Running alignment..."

bwa mem reference/genome.fa data/sample_R1.fastq data/sample_R2.fastq > results/aligned.sam

samtools view -Sb results/aligned.sam > results/aligned.bam
samtools sort results/aligned.bam -o results/aligned_sorted.bam
samtools index results/aligned_sorted.bam

echo "Alignment completed"

