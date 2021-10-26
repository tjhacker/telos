#!/bin/bash

mkdir -p mspoke/certbundle/centos8
cp spoke/Vagrantfile.vm mspoke/Vagrantfile
cp -r spoke/* mspoke/certbundle
cp -r common/* mspoke/certbundle
#??rm mspoke/certbundle/Vagrantfile
cp pam_duo.conf mspoke/certbundle
cd mspoke
vagrant up
vagrant ssh 
