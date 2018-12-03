#!/bin/sh -eu
# run Ansible from VirtualEnv folder named 'ansible'
# input:
#   inventory folder - it has to exist and it has to be a folder
#   everything else is fed to ansible-playbook
inventory="$1"; shift

test ! -e "${inventory}" && echo "Inventory doesn't exist!" && exit 75
test ! -d "${inventory}" && echo "Inventory is not a folder!" && exit 75

# ansible from this virtualenv folder
if [ x${VIRTUAL_ENV:-} = x ]
then
  # make sure Ansible is synced with the requirements.txt file
  make -s -f Makefile.ansible ansible roles

  set +eu
  . ansible/bin/activate
  set -eu
fi

ansible-playbook -i "${inventory}" ${1+"$@"}
