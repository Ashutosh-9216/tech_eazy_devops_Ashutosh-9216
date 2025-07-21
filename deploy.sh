#!/bin/bash

STAGE=$1
PORT=8080

echo "------ DEPLOYING TEACHEAZY DEVOPS TO STAGE: $STAGE ------"

# Update system
sudo yum update -y

# Install dependencies
sudo yum install -y java-21-amazon-corretto git maven iptables python3

# Clone repo (delete if already exists)
rm -rf techeazy-devops
git clone https://github.com/techeazy-consulting/techeazy-devops.git
cd techeazy-devops

# Build the project
mvn clean package

# Kill any previous Java process
sudo pkill -f techeazy-devops || true

# Run the app in background on port 8080
nohup sudo java -jar target/techeazy-devops-0.0.1-SNAPSHOT.jar --server.port=$PORT > ~/app.log 2>&1 &

# Redirect port 80 to 8080 (optional, comment if you want direct 8080 access)
# sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-port $PORT

echo "------ DEPLOYMENT COMPLETE! APP RUNNING AT http://$(curl -s ifconfig.me):$PORT ------"

