#!/bin/bash
set -e

echo "Running FastQC..."

mkdir -p results/fastqc

fastqc data/*.fastq -o results/fastqc

echo "FastQC completed"

