
#!/usr/bin/env bash
set -e

bash -c "echo \"${DOCKER_PASSWORD}\" | docker login --username \"${DOCKER_USERNAME}\" --password-stdin ;"
docker pull gastonmr/monolithic-shop
docker tag gastonmr/monolithic-shop:latest ${DOCKER_USERNAME}/monolithic:latest
docker push ${DOCKER_USERNAME}/monolithic:latest
