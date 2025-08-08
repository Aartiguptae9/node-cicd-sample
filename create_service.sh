#!/bin/bash
# creates systemd service file
cat >/etc/systemd/system/myapp.service <<'EOF'
[Unit]
Description=My Node App
After=network.target

[Service]
Type=simple
User=ec2-user
WorkingDirectory=/home/ec2-user/myapp
ExecStart=/usr/bin/node /home/ec2-user/myapp/server.js
Restart=on-failure
RestartSec=5

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl enable myapp.service
