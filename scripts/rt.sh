#!/bin/sh
ssh -a -N -f -L 3333:rabbitmq:15672 bastion
