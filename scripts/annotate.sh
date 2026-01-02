#!/bin/bash
set -e

echo "Running QC & annotation..."

mkdir -p results/annotation

bcftools filter -i 'QUAL>30' results/variants.vcf > results/clean.vcf

snpEff hg38 results/clean.vcf > results/annotation/annotated.vcf

echo "Annotation completed"

