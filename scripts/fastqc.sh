#!/bin/bash
set -e

echo "Running FastQC..."

READS1="${1:-${READS1:-sample_data/test1.fastq}}"
READS2="${2:-${READS2:-sample_data/test2.fastq}}"
REFERENCE="${3:-${REFERENCE:-sample_data/reference.fasta}}"

mkdir -p results/fastqc

fastqc "$READS1" "$READS2" -o results/fastqc

echo "FastQC completed"
