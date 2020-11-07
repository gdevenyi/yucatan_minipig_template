#!/bin/bash

set -euo pipefail

tmpdir=$(mktemp -d)

moving=$1
fixed=$2
output=$3


antsAI -d 3 --convergence 0 --verbose 1 -m Mattes[${fixed},${moving},32,None] -o ${tmpdir}/transform.mat -t AlignCentersOfMass

antsApplyTransforms -d 3 -r ${fixed} -i ${moving} -t ${tmpdir}/transform.mat -o ${output} --verbose

rm -rf ${tmpdir}
