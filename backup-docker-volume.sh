#!/bin/bash
docker run --rm -v $1:/backup-src -v $2:/backup-dest ubuntu bash -c "cd /backup-src && tar -cvf /backup-dest/$(echo $1).tar.gz *"
