#!/bin/bash
set -e

echo "Running variant calling..."

freebayes -f reference/genome.fa results/aligned_sorted.bam > results/variants.vcf

echo "Variant calling completed"

