# Secrets Management

Secrets like database credentials and API keys should be stored securely using AWS Secrets Manager.

Example in Node.js:
```js
const AWS = require('aws-sdk');
const secretsManager = new AWS.SecretsManager();

async function getSecrets() {
  const secret = await secretsManager.getSecretValue({ SecretId: 'prod/db-credentials' }).promise();
  return JSON.parse(secret.SecretString);
}
