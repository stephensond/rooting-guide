#!/bin/sh -l

export HOST=$1
export DATABASE=$2
export DB_USER=$3
export PASSWORD=$4
export PORT=$5

python graph.py