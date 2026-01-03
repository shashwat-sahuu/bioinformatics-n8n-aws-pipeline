#!/bin/bash
set -e

echo "Pipeline started"

bash scripts/fastqc.sh
bash scripts/align.sh
bash scripts/variant_call.sh
bash scripts/annotate.sh

echo "Pipeline completed successfully"

