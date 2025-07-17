#!/bin/bash
# Fetch secrets from Secrets Manager
SECRET_JSON=$(aws secretsmanager get-secret-value --secret-id ${secrets_arn} --region ${region} | jq -r .SecretString)

# Parse secrets
DB_HOST=$(echo $SECRET_JSON | jq -r .db_host)
DB_PASSWORD=$(echo $SECRET_JSON | jq -r .db_password)
API_KEY=$(echo $SECRET_JSON | jq -r .api_key)

# Create .env file
cat << EOF > /opt/app/.env
DB_HOST=$DB_HOST
DB_PASSWORD=$DB_PASSWORD
API_KEY=$API_KEY
PORT=3000
EOF

# Install dependencies
apt update
apt install -y nodejs npm
npm install -g pm2

# Clone and run app
git clone https://github.com/your-repo /opt/app
cd /opt/app
npm ci
pm2 start app.js
