#!/bin/bash
# Deploy DeepClaw updates

# SSH into server and pull latest changes
ssh root@138.201.141.53 << 'ENDSSH'
cd /home/deepclaw/app
git pull
pm2 restart deepclaw
ENDSSH

echo "Deployed!"
