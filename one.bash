#!/bin/bash

# Print a welcome message
echo "Welcome to the Bash script example!"

# Take user input
read -p "Please enter your name: " name
echo "Hello, $name!"

# Perform a simple calculation
read -p "Enter a number: " num1
read -p "Enter another number: " num2

# Add the two numbers
sum=$((num1 + num2))
echo "The sum of $num1 and $num2 is $sum."

# List files in the current directory
echo "Here are the files in the current directory:"
ls

# End of script
echo "Thank you for using the script!"




const express = require('express');
const axios = require('axios');
const cors = require('cors');

const app = express();
const port = 3000; // Your desired port

app.use(cors()); // Allow CORS
app.get('/fetch', async (req, res) => {
    const { url } = req.query;

    try {
        const response = await axios.get(url);
        res.send(response.data);
    } catch (error) {
        console.error('Error fetching URL:', error);
        res.status(500).send('Error fetching URL');
    }
});

app.listen(port, () => {
    console.log(`Server running at http://localhost:${port}`);
});







   <div class="links-container" id="links-container">
            <div class="links-content">
                <span class="close-links" id="close-links-button">✖</span>
                <h4>Your Saved Links</h4>
                <div class="links-buttons">
                    <!-- Create 20 buttons -->
                    <script>
                        for (let i = 1; i <= 20; i++) {
                            document.write(`<button class="link-button">Link ${i}</button>`);
                        }
                    </script>
                </div>
            </div>
        </div>

        <div class="tabs" id="tabs"></div>
    </header>

    <script>
        // Function to open the links container
        function openLinksContainer() {
            const linksContainer = document.getElementById('links-container');
            linksContainer.style.display = 'flex'; // Show the container
        }

        // Function to close the links container
        function closeLinksContainer() {
            const linksContainer = document.getElementById('links-container');
            linksContainer.style.display = 'none'; // Hide the container
        }

        // Event listener for the links button
        document.getElementById('links-button').addEventListener('click', openLinksContainer);

        // Event listener for the close button
        document.getElementById('close-links-button').addEventListener('click', closeLinksContainer);

        // Close the container when clicking outside of it
        document.getElementById('links-container').addEventListener('click', function(event) {
            if (event.target === this) {
                closeLinksContainer();
            }
        });