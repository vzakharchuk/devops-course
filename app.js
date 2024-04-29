const express = require('express');

// Create an Express application
const app = express();

// Define a route to handle GET requests to the root URL
app.get('/', (req, res) => {
    res.send('Hello, World!!!!!!');
});

// Start the server listening on port 3000
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server listening on port ${PORT}`);
});