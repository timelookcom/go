
document.addEventListener("DOMContentLoaded", function() {
const searchInput = document.getElementById("searchInput");
const searchButton = document.querySelector(".search-icon");
const searchEngineSelect = document.getElementById("searchEngine");
const iframe = document.getElementById("resultsFrame");
const menuButton = document.getElementById("menuBtn");
const dropdownMenu = document.getElementById("dropdownMenu");
const header = document.getElementById("header");
const footer = document.getElementById("footer");

// Load the saved search engine from localStorage (if available)
let currentEngine = localStorage.getItem("selectedEngine") || "google";  // Default to google if no saved engine

// Set the dropdown value based on the loaded engine
searchEngineSelect.value = currentEngine;

// Update search engine when user selects a different one
searchEngineSelect.addEventListener("change", function() {
currentEngine = searchEngineSelect.value;
localStorage.setItem("selectedEngine", currentEngine);  // Save the selected engine
});

// Check if input is a valid URL
function isValidURL(url) {
const regex = /^(http:\/\/|https:\/\/|www\.)[a-z0-9.-]+\.[a-z]{2,}/i;
return regex.test(url);
}

// Format URL to add http:// if missing
function formatURL(url) {
if (!url.startsWith('http://') && !url.startsWith('https://')) {
    return 'http://' + url;
}
return url;
}

// Function to detect if the user is in dark mode
function isDarkMode() {
return window.matchMedia('(prefers-color-scheme: dark)').matches;
}

// Perform search or load URL in iframe
function performSearch() {
const query = searchInput.value.trim();

if (query === "") return;

// Hide the iframe and close button before starting a new search
resetIframeAndButton();

// Hide both header and footer
header.classList.add("hide-header-footer");
footer.classList.add("hide-header-footer");

if (isValidURL(query)) {
    const formattedURL = formatURL(query);
    fetchProxiedContent(formattedURL);
} else {
    let searchURL = "";
    switch (currentEngine) {
        case "google":
        case "duckduckgo":
            window.location.href = `https://www.${currentEngine}.com/search?q=${encodeURIComponent(query)}`;
            break;
        case "bing":
            searchURL = `https://www.bing.com/search?q=${encodeURIComponent(query)}`;
            iframe.src = searchURL;
            iframe.style.display = 'block';
            document.title = "Tulu - search";  // Change tab title when iframe is shown
            addCloseButton();  // Add the close button when iframe is shown
            adjustIframeBackground();  // Adjust iframe background based on dark mode
            break;
    }
}
}

// Function to fetch and load content from the proxy API
function fetchProxiedContent(url) {
fetch(`http://localhost:3000/proxy?url=${encodeURIComponent(url)}`)
    .then(response => response.text())
    .then(data => {
        iframe.srcdoc = data;
        iframe.style.display = 'block';
        document.title = "Tulu - search";  // Change tab title when iframe is shown
        addCloseButton();  // Add the close button when iframe is shown
        adjustIframeBackground();  // Adjust iframe background based on dark mode
    })
    .catch(error => {
        console.error("Error fetching content: ", error);
    });
}

// Adjust iframe background based on the user's dark/light mode preference
function adjustIframeBackground() {
const isDark = isDarkMode();

// Apply dark mode background for iframe
iframe.style.backgroundColor = isDark ? "#181818" : "#ffffff";  // Dark mode or light mode background

// If you want to inject CSS specifically for search engines, you can do it here
const iframeDocument = iframe.contentDocument || iframe.contentWindow.document;

if (iframeDocument) {
    const style = iframeDocument.createElement("style");

    // Inject a general dark mode style if the user prefers dark mode
    style.innerHTML = `
        body {
            background-color: ${isDark ? '#181818' : '#ffffff'} !important;
            color: ${isDark ? '#f0f0f0' : '#000000'} !important;
        }

        /* Specifically for Bing to adjust its background color */
        .b_searchbox { background-color: ${isDark ? '#333' : '#fff'} !important; }
        .b_algo { background-color: ${isDark ? '#333' : '#fff'} !important; }
        .b_header { background-color: ${isDark ? '#222' : '#fff'} !important; }
        .b_footer { background-color: ${isDark ? '#222' : '#fff'} !important; }
    `;
    iframeDocument.head.appendChild(style);
}
}

// Add a close button to the bottom-left of the screen
function addCloseButton() {
// Check if the button already exists to prevent adding duplicates
if (document.getElementById("closeButton")) {
    return;
}

const closeButton = document.createElement("button");
closeButton.id = "closeButton";  // Give it an ID for reference

// Using a simple ❌ for the close icon
closeButton.innerHTML = "❌"; 

// Set styles for the button
closeButton.style.position = "fixed";  // Fixed positioning
closeButton.style.bottom = "20px";  // Move it closer to the bottom
closeButton.style.left = "20px";  // Move it closer to the left
closeButton.style.backgroundColor = "#ff4081";  // A more visible color (pinkish tone)
closeButton.style.color = "white";
closeButton.style.border = "none";
closeButton.style.padding = "10px";
closeButton.style.cursor = "pointer";
closeButton.style.zIndex = "9999";  // Ensure it's on top of other elements

// Round the button and make it a circle
closeButton.style.width = "40px";
closeButton.style.height = "40px";
closeButton.style.borderRadius = "50%";  // Makes it round

// Add transition for smooth hover effect
closeButton.style.transition = "background-color 0.3s, transform 0.3s";

// Hover effect: slightly enlarge button and change color
closeButton.addEventListener("mouseenter", function() {
    closeButton.style.backgroundColor = "#ff007f";  // Slightly darker pink
    closeButton.style.transform = "scale(1.1)";
});

closeButton.addEventListener("mouseleave", function() {
    closeButton.style.backgroundColor = "#ff4081";  // Original color
    closeButton.style.transform = "scale(1)";
});

// Append the button to the body (so it's fixed on the screen)
document.body.appendChild(closeButton);

// Close the iframe when the button is clicked
closeButton.addEventListener("click", function() {
    resetIframeAndButton();
});
}

// Reset iframe and close button visibility
function resetIframeAndButton() {
iframe.style.display = 'none';  // Hide the iframe
const closeButton = document.getElementById("closeButton");
if (closeButton) {
    closeButton.remove();  // Remove the close button
}
// Show the header and footer again
header.classList.remove("hide-header-footer");
footer.classList.remove("hide-header-footer");
}

// Change the title temporarily when a link opens in a new tab
iframe.addEventListener('load', function() {
const iframeDocument = iframe.contentDocument || iframe.contentWindow.document;

// Listen for clicks inside the iframe
iframeDocument.addEventListener('click', function(event) {
    if (event.target.tagName === 'A' && event.target.target === '_blank') {
        // Change tab title temporarily for 3 seconds
        const originalTitle = document.title; // Store original tab title
        document.title = "Tulu - search";

        // After 3 seconds, reset the tab title
        setTimeout(() => {
            document.title = originalTitle;
        }, 3000);
    }
});
});

// Trigger search on button click or Enter key press
searchButton.addEventListener("click", performSearch);
searchInput.addEventListener("keypress", function(event) {
if (event.key === "Enter") {
    performSearch();
}
});

// Menu button and dropdown toggle
// Menu button and dropdown toggle
menuButton.addEventListener("click", function() {
dropdownMenu.style.display = dropdownMenu.style.display === "block" ? "none" : "block";
});

// Close dropdown if clicked outside
document.addEventListener("click", function(event) {
if (!menuButton.contains(event.target) && !dropdownMenu.contains(event.target)) {
    dropdownMenu.style.display = "none";
}
});
});
document.addEventListener("DOMContentLoaded", function () {
    const addWebsiteContainer = document.getElementById("addWebsiteContainer");
    const websiteNameInput = document.getElementById("websiteNameInput");
    const circleButtons = document.querySelector(".circle-buttons");
    const deleteOption = document.getElementById("deleteOption"); // The delete option button
    const alertContainer = document.getElementById("alertContainer");
    const closeAlertButton = document.getElementById("closeAlertButton"); // The button to close the alert

    // Predefined popular websites (including Facebook and Instagram)
    const popularWebsites = [
        "https://www.facebook.com",
        "https://www.instagram.com"  // Add more popular websites here if necessary
    ];

    // To keep track of added websites (using localStorage to persist across sessions)
    const addedWebsites = new Set(JSON.parse(localStorage.getItem('addedWebsites')) || []);

    let deleteTimer; // Timer for hiding delete icons after 10 seconds

    // Initialize the page with predefined popular websites (Facebook, Instagram, etc.)
    function initializePopularWebsites() {
        // Add the predefined websites (Facebook, Instagram) if not already added
        popularWebsites.forEach(url => {
            if (!addedWebsites.has(url)) {
                addedWebsites.add(url);
                createWebsiteButton(url);  // Create button for Facebook and Instagram
            }
        });

        // Initialize any websites that have already been added by the user
        addedWebsites.forEach(url => {
            createWebsiteButton(url);  // Create the button for each saved website
        });

        // Save the updated list of websites to localStorage
        localStorage.setItem('addedWebsites', JSON.stringify(Array.from(addedWebsites)));
    }

    // Function to open the Add Website container
    function openAddWebsiteContainer() {
        addWebsiteContainer.style.display = "block"; // Show the container
    }

    // Function to add a new website manually
    function addWebsite() {
        // Check if there are already 11 websites saved
        if (addedWebsites.size >= 11) {  // Trigger the alert if there are 11 websites already
            openAlertContainer(); // Show the custom alert container when the limit is exceeded
            addWebsiteContainer.style.display = "none"; // Hide the add website container when alert is triggered
            return;
        }

        let websiteName = websiteNameInput.value.trim();

        if (websiteName === "") {
            alert("Please enter a website URL.");
            return;
        }

        // Normalize the URL and ensure it's valid
        websiteName = formatWebsiteURL(websiteName);

        // Check if this website has already been added
        if (addedWebsites.has(websiteName)) {
            alert("This website is already saved.");
            return;
        }

        // Mark this website as added
        addedWebsites.add(websiteName);

        // Save the updated list of websites to localStorage
        localStorage.setItem('addedWebsites', JSON.stringify(Array.from(addedWebsites)));

        // Create a button for the new website
        createWebsiteButton(websiteName);

        // Hide the input container and reset the input field
        addWebsiteContainer.style.display = "none";
        websiteNameInput.value = ""; // Clear the input field
    }

    // Function to create a website button with logo and name
    function createWebsiteButton(websiteURL) {
        const displayName = extractWebsiteName(websiteURL);
        let websiteLogo = getLogo(websiteURL);
        let imgSrc = websiteLogo;

        // Check if the website button already exists
        const existingButton = document.querySelector(`[data-url="${websiteURL}"]`);
        if (existingButton) {
            return; // Prevent duplicate buttons from being created
        }

        // Create the new button container
        const newButtonContainer = document.createElement("div");
        newButtonContainer.classList.add("circle-btn-container");
        newButtonContainer.style.position = "relative";  // Ensure positioning for delete icon

        // Create the button itself (circle with icon inside)
        const newButton = document.createElement("div");
        newButton.classList.add("circle-btn");
        newButton.setAttribute("data-url", websiteURL);

        // Create the image (logo)
        const img = document.createElement("img");
        img.src = imgSrc;
        img.alt = `${displayName} Logo or Profile Picture`;
        img.style.width = "100%";
        img.style.height = "100%";
        img.style.objectFit = "cover";  // Ensure it fits well inside the circle
        img.style.borderRadius = "50%";   // Ensure the logo is fully round

        img.onerror = function () {
            img.src = "https://via.placeholder.com/128?text=No+Logo";  // Fallback to a default logo
        };

        newButton.appendChild(img);

        // Create the text (website name) outside the button
        const text = document.createElement("span");
        text.classList.add("button-text");
        text.innerText = displayName;

        // Create the delete icon
        const deleteIcon = document.createElement('span');
        deleteIcon.classList.add('delete-icon');
        deleteIcon.innerHTML = '&#10006;';
        deleteIcon.style.display = 'none'; // Initially hidden
        deleteIcon.style.position = 'absolute';
        deleteIcon.style.top = '-10px';
        deleteIcon.style.right = '-10px';
        deleteIcon.style.cursor = 'pointer';

        newButtonContainer.appendChild(deleteIcon);

        let clickCount = 0;
        let clickTimer;

        // Function to handle button click/hold behavior for showing delete icon
        newButton.addEventListener("mousedown", function () {
            clickCount++;
            if (clickCount === 1) {
                clickTimer = setTimeout(() => {
                    deleteIcon.style.display = "block"; // Show delete icon on hold
                    clickCount = 0;
                }, 500);
            }
        });

        newButton.addEventListener("mouseup", function () {
            clearTimeout(clickTimer);
            if (clickCount === 1) {
                loadWebsite(websiteURL);
            }
            clickCount = 0;
        });

        // Delete icon click event with fade-out effect
        deleteIcon.addEventListener("click", function (event) {
            event.stopPropagation(); // Prevent click from propagating to the circle button

            // Trigger fade-out animation by adding a class
            newButtonContainer.classList.add("fade-out");

            // After the fade-out transition ends, remove the button from the DOM
            newButtonContainer.addEventListener('transitionend', function () {
                newButtonContainer.remove();
            });

            addedWebsites.delete(websiteURL);
            localStorage.setItem('addedWebsites', JSON.stringify(Array.from(addedWebsites)));

            // Reset the delete timer since we deleted an item
            resetDeleteTimer();
        });

        // Append the button and text to the new container
        newButtonContainer.appendChild(newButton);
        newButtonContainer.appendChild(text);

        // Prepend the new button container to the circle buttons container
        circleButtons.insertBefore(newButtonContainer, circleButtons.firstChild);
    }

    // Function to format website URL if necessary
    function formatWebsiteURL(input) {
        if (input.startsWith('http://') || input.startsWith('https://')) {
            return input;
        }

        if (input.match(/^[a-zA-Z0-9.-]+$/)) {
            const tlds = ['.com', '.org', '.net', '.co', '.io', '.gov', '.edu'];
            let formattedURL = input;

            if (!formattedURL.startsWith('www.')) {
                formattedURL = 'www.' + formattedURL;
            }

            if (!tlds.some(tld => formattedURL.endsWith(tld))) {
                formattedURL += '.com';
            }

            return 'https://' + formattedURL;
        }

        return 'https://' + input;
    }

    // Function to extract the website name
    function extractWebsiteName(url) {
        const hostname = url.replace(/^https?:\/\//, '').replace(/^www\./, '').split('/')[0];
        const parts = hostname.split('.');
        return parts[0].charAt(0).toUpperCase() + parts[0].slice(1);
    }

    // Function to get the logo from Clearbit
    function getLogo(websiteURL) {
        const domain = new URL(websiteURL).hostname;
        const logoURL = `https://logo.clearbit.com/${domain}?size=128`;
        return logoURL;
    }

    // Function to load a website when the button is clicked
    function loadWebsite(url) {
        window.open(url, "_blank");
    }

    // Function to show all delete icons when in "delete mode"
    function showDeleteIcons() {
        const deleteIcons = document.querySelectorAll('.delete-icon');
        deleteIcons.forEach(icon => {
            icon.style.display = 'block'; // Show all delete icons
        });

        resetDeleteTimer();
    }

    // Function to hide all delete icons when out of "delete mode"
    function hideDeleteIcons() {
        const deleteIcons = document.querySelectorAll('.delete-icon');
        deleteIcons.forEach(icon => {
            icon.style.display = 'none'; // Hide all delete icons
        });
    }

    // Function to reset the delete timer (for auto-hiding after 10 seconds)
    function resetDeleteTimer() {
        clearTimeout(deleteTimer); // Clear any existing timer
        deleteTimer = setTimeout(() => {
            hideDeleteIcons(); // Hide delete icons after 10 seconds
        }, 10000); // 10 seconds
    }

    // Click outside to hide delete icons
    document.addEventListener('click', function (e) {
        if (!circleButtons.contains(e.target) && !deleteOption.contains(e.target)) {
            hideDeleteIcons();
            clearTimeout(deleteTimer); // Clear the timer if clicked outside
        }
    });

    // Delete Option button click event
    deleteOption.addEventListener('click', function () {
        addWebsiteContainer.style.display = 'none'; // Close the Add Website container
        showDeleteIcons(); // Show all delete icons when in delete mode
    });

    // Close the alert container when the closeAlertButton is clicked
    closeAlertButton.addEventListener('click', function () {
        closeAlertContainer(); // Close the alert container
    });

    // Function to open the alert container when the website limit is reached
    function openAlertContainer() {
        alertContainer.style.display = "block"; 
    }

    // Function to close the alert container
    function closeAlertContainer() {
        alertContainer.style.display = "none"; 
        addWebsiteContainer.style.display = "block"; // Show the add website container again
    }

    // Initialize the page with popular websites
    initializePopularWebsites();

    window.addWebsite = addWebsite;
    window.openAddWebsiteContainer = openAddWebsiteContainer;
});



  if ('webkitSpeechRecognition' in window) {
    const recognition = new webkitSpeechRecognition();
    recognition.continuous = false;  // Stop automatically after one phrase
    recognition.interimResults = false;  // Do not show partial results

    // Elements
    const microphoneIcon = document.getElementById('microphoneIcon');
    const searchInput = document.getElementById('searchInput');
    const statusDiv = document.getElementById('status');

    // When the user clicks the microphone icon
    microphoneIcon.onclick = () => {
        recognition.start();
        statusDiv.innerHTML = "Listening...";
        microphoneIcon.style.color = 'green'; // Change icon color while listening
    };

    // When speech is recognized
    recognition.onresult = (event) => {
        const transcript = event.results[0][0].transcript;
        searchInput.value = transcript;  // Insert the speech text into the input
        statusDiv.innerHTML = `You said: "${transcript}"`;
        microphoneIcon.style.color = ''; // Reset icon color
    };

    // Handle errors
    recognition.onerror = (event) => {
        statusDiv.innerHTML = "Error occurred while recognizing speech.";
        microphoneIcon.style.color = ''; // Reset icon color
    };

    // When speech recognition ends
    recognition.onend = () => {
        statusDiv.innerHTML = "Click to speak again.";
        microphoneIcon.style.color = ''; // Reset icon color
    };
} else {
    alert("Speech recognition is not supported in this browser.");
}
window.onload = function () {
    const themeButton = document.getElementById('themeBtn');
    const currentTheme = localStorage.getItem('theme');

    // Apply saved theme if exists
    if (currentTheme) {
        if (currentTheme === 'dark') {
            document.body.classList.add('dark-mode');
        } else {
            document.body.classList.remove('dark-mode');
        }
    } else {
        // Fallback to system preference
        const mediaQuery = window.matchMedia('(prefers-color-scheme: dark)');
        if (mediaQuery.matches) {
            document.body.classList.add('dark-mode');
        } else {
            document.body.classList.remove('dark-mode');
        }
    }

    // Toggle theme on button click
    themeButton.addEventListener('click', function () {
        document.body.classList.toggle('dark-mode');
        if (document.body.classList.contains('dark-mode')) {
            localStorage.setItem('theme', 'dark');
        } else {
            localStorage.setItem('theme', 'light');
        }
    });

    // Listen for system theme changes
    const mediaQuery = window.matchMedia('(prefers-color-scheme: dark)');
    mediaQuery.addEventListener('change', () => {
        if (!localStorage.getItem('theme')) {
            if (mediaQuery.matches) {
                document.body.classList.add('dark-mode');
            } else {
                document.body.classList.remove('dark-mode');
            }
        }
    });
};


     // Get elements
     const signInBtn = document.getElementById('signInBtn');
     const modalContainer = document.getElementById('modalContainer');
     const closeBtn = document.getElementById('closeBtn');
     
     // Open the modal when the button is clicked
     signInBtn.addEventListener('click', () => {
       modalContainer.style.display = 'flex';
     });
     
     // Close the modal when the "x" is clicked
     closeBtn.addEventListener('click', () => {
       modalContainer.style.display = 'none';
     });
     
     // Close the modal if the user clicks outside the modal content
     window.addEventListener('click', (e) => {
       if (e.target === modalContainer) {
         modalContainer.style.display = 'none';
       }
     });
     


