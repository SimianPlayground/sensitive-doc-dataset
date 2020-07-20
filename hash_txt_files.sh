#!/bin/bash
for i in */*.txt; do
  sum=$(md5sum "$i" | head -c 6)
  echo "$i" "->" "${i}.$sum"
  mv "$i" "${i}.$sum"
done
