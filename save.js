const addWebsiteButton = document.getElementById('add-website-button');
const addWebsiteForm = document.getElementById('add-website-form');
const confirmAddButton = document.getElementById('confirm-add-button');
const cancelAddButton = document.getElementById('cancel-add-button');
const newWebsiteInput = document.getElementById('new-website-input');

// Show the input form
addWebsiteButton.addEventListener('click', () => {
    addWebsiteForm.classList.toggle('active'); // Toggle visibility
    newWebsiteInput.focus(); // Focus on input when form opens
});

// Cancel adding a website
cancelAddButton.addEventListener('click', () => {
    addWebsiteForm.classList.remove('active'); // Hide form
    newWebsiteInput.value = '';
});

// Function to get the favicon URL
function getFaviconUrl(url) {
    const hostname = new URL(url).hostname;
    return `https://www.google.com/s2/favicons?domain=${hostname}&size=64`; // Adjust the size as needed
}

// Confirm adding a new website
confirmAddButton.addEventListener('click', () => {
    const input = newWebsiteInput.value.trim();
    
    if (input) {
        // Format the URL
        let url;
        if (input.startsWith('http://') || input.startsWith('https://')) {
            url = input;
        } else {
            url = 'http://' + input; // Default to http if no protocol is provided
        }

        // Save the website
        const name = input.replace('www.', '').replace('http://', '').replace('https://', ''); // Clean up the name

        try {
            const validUrl = new URL(url); // Validate the URL

            savedWebsites.push({ 
                url: validUrl.href, 
                name, 
                logo: getFaviconUrl(validUrl.href) // Use the function to get favicon
            });
            saveToLocalStorage(); // Save updated websites
            updateSavedWebsites();
            
            // Clear input field and hide the form
            newWebsiteInput.value = '';
            addWebsiteForm.classList.remove('active');
        } catch (error) {
            alert('Please enter a valid website URL.');
        }
    } else {
        alert('Please enter a website URL.');
    }
});