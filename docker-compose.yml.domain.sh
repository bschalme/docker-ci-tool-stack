#!/bin/bash
#
# Run this to set your base domain for all the containers. Replaces domain.com in docker-compose.yml with what you provide.
# 
# Example usage:
# docker-compose.yml.domain.sh demo.megacorp.com
#
if [ $1 = "" ]; then
    echo Usage: $0 yourbasedomain.tld
    exit 1
fi

sed -i '' -e "s/mydomain\.com/$1/g" docker-compose.yml
exit 0
