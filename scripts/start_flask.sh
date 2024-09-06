#!/bin/bash
cd /home/ubuntu/BasicCI-CD
nohup python3 app.py > app.log 2>&1 &

