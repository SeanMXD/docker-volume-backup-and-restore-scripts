#!/bin/bash
ls $1 | grep .tar.gz | while read line ; do $(dirname "${BASH_SOURCE[0]}")/restore-docker-volume.sh $1/$line ; done
