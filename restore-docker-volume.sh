#!/bin/bash
docker run --rm -v $(basename $1 .tar.gz):/restore-dest -v $(dirname $1):/restore-src ubuntu bash -c "cd /restore-dest && find . -name . -o -prune -exec rm -rf -- {} + && tar -xvf /restore-src/$(basename $1 .tar.gz).tar.gz"
