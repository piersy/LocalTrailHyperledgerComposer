#! /usr/bin/env bash
set -e
composer archive create -t dir -n .
composer network install --card PeerAdmin@hlfv1 --archiveFile grownyc@0.0.1.bna
composer network start --networkName grownyc --networkVersion 0.0.1 --networkAdmin admin --networkAdminEnrollSecret adminpw --card PeerAdmin@hlfv1 --file networkadmin.card 
