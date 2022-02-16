#!/bin/bash
echo 'enter new user name: '
read NEW_USER
echo 'enter password to elevate to root'
read -s MY_PASS
echo "creating new user ${NEW_USER} now"
echo ${MY_PASS} | sudo -S useradd -m  ${NEW_USER}
