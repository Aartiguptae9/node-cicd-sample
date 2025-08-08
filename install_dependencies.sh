#!/bin/bash
set -e
cd /home/ec2-user/myapp
# ensure permissions
chown -R ec2-user:ec2-user /home/ec2-user/myapp
# install npm deps
if command -v npm >/dev/null 2>&1; then
  /usr/bin/npm ci || /usr/bin/npm install
fi
