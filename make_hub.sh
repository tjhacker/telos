#!/bin/bash

mkdir -p mhub/certbundle/centos8
cp hub/Vagrantfile mhub
cp -r hub/* mhub/certbundle
cp -r common/* mhub/certbundle
#??rm mhub/certbundle/Vagrantfile
cp pam_duo.conf mhub/certbundle
cd mhub
vagrant up
vagrant ssh -- '-p 1234'


