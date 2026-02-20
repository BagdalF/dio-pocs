#!/bin/bash
sudo docker swarm init --advertise-addr=IP
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh