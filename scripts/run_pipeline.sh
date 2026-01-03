#!/bin/bash

echo "Pipeline started"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

INPUT_FASTQ=$1

bash "$SCRIPT_DIR/fastqc.sh" "$INPUT_FASTQ"
bash "$SCRIPT_DIR/align.sh" "$INPUT_FASTQ"
bash "$SCRIPT_DIR/variant_call.sh"
bash "$SCRIPT_DIR/annotate.sh"

echo "Pipeline completed successfully"



