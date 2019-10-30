#!/bin/bash
docker build --rm -f "Dockerfile" -t lazyrecon_docker:latest . \
&& docker run -v $(pwd)/lazyrecon_results:/home/lazyrecon_user/tools/lazyrecon/lazyrecon_results/ lazyrecon_docker -d $1