#!/bin/bash
$(dirname "${BASH_SOURCE[0]}")/get-all-docker-volumes.sh | while read line ; do $(dirname "${BASH_SOURCE[0]}")/backup-docker-volume.sh $line $1 ; done
