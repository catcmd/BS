#!/usr/bin/env bash

#(a) Which users exist on your system? (nur usr ausgeben durch cut)
cat /etc/passwd

#(b) Which groups exist on you rsystem?(cut)
cat /etc/group

#(c) Create a new user test.
sudo adduser test
    #to check cat /etc/passwd

#(d) In which group  is your new user?
groups test

#(e) Create a new Group dev_data.
sudo addgroup dev_data

#(f) Add the user test to the group dev_data
sudo usermod -a -G dev_data test
groups test

#(g) Inspect the passwd and group files on your system
cat /etc/passwd
cat /etc/group

