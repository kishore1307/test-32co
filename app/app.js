const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('Hello from the DevOps assessment app!');
});

app.listen(port, () => {
  console.log(`App running on port ${port}`);
});
