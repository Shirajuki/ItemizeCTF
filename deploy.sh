#!/bin/bash
find -name docker-compose.yml | head -n -1 | xargs -n 1 -I DC sh -c 'cd $(dirname DC); docker-compose up -d; cd -'
