#!/bin/bash
echo 'pulling latest image'
docker-compose pull
echo 'removing old container'
docker-compose down
echo 'removing old chain data'
docker volume rm rococo_basePath 
echo 'launching new container with new chain data'
docker-compose up -d
echo 'watch the logs and wait until sync is completed'
docker-compose logs -f
echo 'once sync is complete run rotateKey and use generated hash to submit a session/setKeys extrinsics'

