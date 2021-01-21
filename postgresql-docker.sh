#!/bin/sh

docker run --detach \
 --name postgresql \
 --env POSTGRES_PASSWORD=password \
 --env POSTGRES_USER=user \
 --env POSTGRES_DB=simple_board_production \
 postgres:12
