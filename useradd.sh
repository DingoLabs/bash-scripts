#!/bin/bash

#create an account on system, prompts for username password

#root or not
if [[ "${UID}" -eq 0 ]]
then
  echo 'you are root, continue.'
else
  echo 'you are not root.'
  exit
fi

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
