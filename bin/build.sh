#!/bin/sh
pandoc_version=2.2.2.1
image_revision=1
docker build -t kazusato/pandoc:${pandoc_version}-${image_revision} \
	--force-rm .
