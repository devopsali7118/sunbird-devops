#!/bin/sh
# Build script
# set -o errexit

ansible-playbook --version
ansible-playbook -i ansible/inventory/dev ansible/deploy.yml --tags "stack-monitor" --vault-password-file /run/secrets/vault-pass
