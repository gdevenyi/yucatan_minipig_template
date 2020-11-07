#!/bin/bash

tmpdir=$(mktemp -d)

output=$1
shift
inputs="$@"

AverageImages 3 ${output} 1 ${inputs}

for file in "$@"; do
  echo ./quick-com-align.sh ${file} ${output} ${tmpdir}/$(basename ${file})
done | parallel -j$(nproc)

AverageImages 3 ${output} 1 ${tmpdir}/*

for file in "$@"; do
  echo ./quick-com-align.sh ${file} ${output} ${tmpdir}/$(basename ${file})
done | parallel -j$(nproc)

AverageImages 3 ${output} 1 ${tmpdir}/*

rm -rf ${tmpdir}
