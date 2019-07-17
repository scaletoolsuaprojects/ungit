#!/bin/bash
docker run -it -d -p "127.0.0.1:8448:8448" -v /opt/ungit/git:/ungit -v $(dirname $SSH_AUTH_SOCK):$(dirname $SSH_AUTH_SOCK) -e SSH_AUTH_SOCK=$SSH_AUTH_SOCK cloudbroker/ungit