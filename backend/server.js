const express = require('express');
const app = express();
const PORT = process.env.PORT || 5000;

app.get('/', (req, res) => {
  res.send('Hello from API server');
});

app.listen(PORT, () => {
  console.log(`API server is running on port ${PORT}`);
});
