#!/bin/bash
set -e

echo "Running alignment..."

READS1="${1:-${READS1:-sample_data/test1.fastq}}"
READS2="${2:-${READS2:-sample_data/test2.fastq}}"
REFERENCE="${3:-${REFERENCE:-sample_data/reference.fasta}}"

bwa mem "$REFERENCE" "$READS1" "$READS2" > results/aligned.sam

samtools view -Sb results/aligned.sam > results/aligned.bam
samtools sort results/aligned.bam -o results/aligned_sorted.bam
samtools index results/aligned_sorted.bam

echo "Alignment completed"
