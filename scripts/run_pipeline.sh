#!/bin/bash

echo "Pipeline started"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

READS1="${1:-${READS1:-sample_data/test1.fastq}}"
READS2="${2:-${READS2:-sample_data/test2.fastq}}"
REFERENCE="${3:-${REFERENCE:-sample_data/reference.fasta}}"

bash "$SCRIPT_DIR/fastqc.sh" "$READS1" "$READS2" "$REFERENCE"
bash "$SCRIPT_DIR/align.sh" "$READS1" "$READS2" "$REFERENCE"
bash "$SCRIPT_DIR/variant_call.sh" "$READS1" "$READS2" "$REFERENCE"
bash "$SCRIPT_DIR/annotate.sh"

echo "Pipeline completed successfully"


