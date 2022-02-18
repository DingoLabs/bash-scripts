#!/bin/bash

#create an account on system, prompts for username password

#ask username
read -p "enter username: " USER_NAME
#ask real name
read -p "enter full name: " COMMENT
#ask for password
read -p "enter password: " PASSWORD
#create user
useradd -c "${COMMENT}" -m ${USER_NAME}
#set password
echo ${PASSWORD} | passwd --stdin ${USER_NAME}
#force password update on login
passwd -e ${USER_NAME}
