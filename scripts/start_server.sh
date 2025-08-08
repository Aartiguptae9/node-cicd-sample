#!/bin/bash
systemctl restart myapp.service || systemctl start myapp.service
