#!/bin/bash
set -e

echo "Running variant calling..."

READS1="${1:-${READS1:-sample_data/test1.fastq}}"
READS2="${2:-${READS2:-sample_data/test2.fastq}}"
REFERENCE="${3:-${REFERENCE:-sample_data/reference.fasta}}"

freebayes -f "$REFERENCE" results/aligned_sorted.bam > results/variants.vcf

echo "Variant calling completed"
