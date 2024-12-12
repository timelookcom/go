<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tulu</title>
    <link rel="icon" href="https://www.facebook.com/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="style.css"> <!-- Link to your external CSS file -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<header id="header">
    <div class="header-left">
        <img src="https://upload.wikimedia.org/wikipedia/commons/5/51/Facebook_f_logo_%282019%29.svg" alt="Facebook Logo" class="logo">
        <h1 class="cool-text">Toolu</h1>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const logo = document.querySelector(".logo");
            const heading = document.querySelector(".cool-text");

            // Reload the page when the logo or heading is clicked
            logo.addEventListener("click", function() {
                location.reload();  // Reload the app/page
            });

            heading.addEventListener("click", function() {
                location.reload();  // Reload the app/page
            });
        });
    </script>

    <div class="header-buttons">
        <button id="signInBtn"><i class="fas fa-search"></i></button>
        
        <!-- Modal Trigger (hidden until activated) -->
        <div id="modalContainer" class="modal">
            <div class="modal-content">
                <span class="close-btn" id="closeBtn">&times;</span>
                <h2>Choose Your Action</h2>
                <img src="C:\Users\k153f_qqpvs8e\Pictures\Documents\Module 2/gogo.png" alt="Example Image" class="modal-image">
                <div class="modal-buttons">
                    <button class="modal-btn" id="actionOneBtn">Safe Search</button>
                    <button class="modal-btn" id="actionTwoBtn">Regular Search</button>
                </div>
            </div>
        </div>

        <button class="Notifications" id="notify you" aria-label="Show Saved Links" style="border: none; background: none; cursor: pointer;">
            <i class="fas fa-bell" id="bell-icon" style="font-size: 20px;"></i>
        </button>
        <span id="notification-badge" style="position: absolute; top: 0; right: 0; background-color: red; color: white; padding: 5px 10px; border-radius: 50%; font-size: 12px; display: none;">3</span>
    </div>
    
    <!-- Menu Button -->
    <button id="menuBtn" class="menu-button">
        <i class="fas fa-ellipsis-v"></i>
    </button>
</header>

<!-- Dropdown Menu -->
<div id="dropdownMenu" class="dropdown-menu">
    <button>Settings</button>
    <button id="themeBtn">Theme</button>
    <button>Privacy</button>
    <button id="languageBtn">Language</button>
    <button>Security</button>
    <button>Help & Support</button>
    <div id="languageOptions" class="language-options">
        <ul id="languageList">
            <!-- Language options will go here -->
        </ul>
    </div>
</div>

<!-- Search Bar -->
<div class="search-bar" id="searchBar">
    <div class="search-input-container">
        <i class="fas fa-search icon search-icon"></i> 
        <input type="text" id="searchInput" placeholder="Search" autocomplete="off">
        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAACXBIWXMAAAsTAAALEwEAmpwYAAABd0lEQVR4nO1VzUrDQBBePPt3V/AH9SwKeuihaLPb4sE30ryEB012GsGTlmjbndRDFXyIgvgK/qHxAZRJsjGK26a0eMrAsDDMzjfz7cwsYzmk5nTmhcQGBwxjVb5VV6t57uYKzkG9CMDPrJJt91TNjQwgJDZ+B09BpDofGYADhiYAAept9ArAFDzWAoAVFP0vRQLwgy7ty+aUtnGp3vPMQe2sMx1POIZ9ANRD5OThegoAyjcCSGxov2q9vRFPN94bATigk+yZA22rOMGakPj81y4SbmslTU6inVR1bK5A4k6yYx6pZG2npUZ7h+iKKKP9lAle9q5mdRIWtMtGgATkLsnQt217oq8zY4x8uFTNmDJ1O8ifVb3rRQ74mnB8aZ10Z0y+lLkOTpTtSVxgeYQDbmf+gCcBeEiPWD66mKQOEy5uRpzrt6HTVVtsGKkALgvAm0FzwCV2udNaGir4j2rcoETdxQF73x2EvcjmBiU2ThHj+gMKAJaRL4qT422+ypnLAAAAAElFTkSuQmCC" alt="Microphone " class="mic-icon" id="microphoneIcon">

        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAAsTAAALEwEAmpwYAAABpUlEQVR4nO2ZX04CMRDGm0A4gR7Ae5CsGmbwAnse3hAPoAHpeIC+uR185SjgHxRelcQQTTSVVQtEze66yzbpL+nLPnz9ZqbdtFMhPB6Pp9Qc0dUuku4C6VuQ/IrEb8uhX1ByO6s+Sm5/aMW6Zg4zF0ruwfnlXiZxuBgcotSzb9NrQ+p59gD0/Ed94ifsDyB95n8zn1MFcDNJs6AX7SQXJt39KivpcYOiIFSqInImVKrSoKgOUo+sZXWWWAgk33wKGPOiYFDygZ3AxAL2hi0i8+sErWHV3tgiKfY6FFsCs3hwPgCQvIjLt8jFXd4e0PzepH7+j19lWrAEHjwej4uEStVQ8gmQvkfiCRB3zDfhCkDcWT9Vmm/CFWCZ+dUApH4QroDEk81zPd8Jp5eQ1MfCFUKlanEQEyc3scfjKQFYgssEZvHg/pWSHL/Uo+sBgOuNLVhtLdZzcflXZzxLa9H0562D2Mj0KouoRNAaVmPz11Yn/DSxkHlcAOLHrbfXiaep2uuGJnFjyw8c02Zf72eawERv+vOmpAU+MY3NskmdeY/H4xFF8Q6f+1L5OyWU1gAAAABJRU5ErkJggg==" alt="square-border" class="images-icon">
    </div>
</div>

<!-- Search Results Container (hidden by default) -->
<div id="searchResultsContainer" class="search-results-container" style="display: none;">
    <ul id="searchResultsList">
        <li>Search Suggestion 1</li>
        <li>Search Suggestion 2</li>
        <li>Search Suggestion 3</li>
    </ul>
</div>

<!-- Circle button and text container -->
<div class="circle-buttons" id="circleButtonsContainer">
    <div class="circle-btn-container" onclick="openAddWebsiteContainer()">
        <div class="circle-btn">
            <i class="fas fa-plus"></i>
        </div>
        <span class="button-text">Add</span>
    </div>  
</div>

<!-- Image that replaces the circle buttons when they are hidden -->
<img id="circleImage" src="C:\Users\k153f_qqpvs8e\Pictures\Documents\Module 2/fire.png" alt="Circle Button Image" style="display:none;">

<!-- Small buttons -->
<div class="small-buttons">
    <button class="small-btn" id="fireButton"><i class="fas fa-fire"></i></button>
    <button class="small-btn"><i class="fas fa-store"></i></button>
    <button class="small-btn"><i class="fas fa-ad"></i></button>
</div>

<div id="addWebsiteContainer" class="add-website-container">
    <input type="text" id="websiteNameInput" placeholder="Web Name">
    <button onclick="addWebsite()">Add</button>
</div>

<div class="search-engine-selector">
    <select id="searchEngine">
        <option value="google">Google</option>
        <option value="bing">Bing</option>
        <option value="duckduckgo">DuckDuckGo</option>
    </select>
</div>

<div id="iframe-container" style="position: relative;">
    <iframe id="resultsFrame" style="display: none; width: 100%; height: 100%;"></iframe>
</div>

<div class="footer" id="footer">
    <a href="#">Privacy Policy</a>
    <a href="#">About</a>
    <a href="#">Contact</a>
</div>

<script src="inlow.js"></script> <!-- Link to your external JavaScript file -->

<script>

document.addEventListener("DOMContentLoaded", function() {
    const fireButton = document.getElementById("fireButton");
    const circleButtonsContainer = document.getElementById("circleButtonsContainer");
    const circleImage = document.getElementById("circleImage");
    const modalContainer = document.getElementById("modalContainer");
    const actionOneBtn = document.getElementById("actionOneBtn");
    const searchResultsContainer = document.getElementById('searchResultsContainer');
    const searchInput = document.getElementById('searchInput');
    
    // Initially set visibility to visible for the circle buttons, and hide the image
    circleButtonsContainer.style.opacity = 1; // Circle buttons are visible
    circleImage.style.display = "none";  // Ensure the image is hidden initially
    circleImage.style.opacity = 0;  // Hide the image initially with opacity

    // Add smooth transition to opacity on both elements
    circleButtonsContainer.style.transition = "opacity 0.5s ease";
    circleImage.style.transition = "opacity 0.5s ease, display 0s 0.5s"; // Add delay for display change after opacity transition

    // Add event listener for the "fire" button click
    fireButton.addEventListener("click", function() {
        // If the circle buttons are visible, hide them and show the image
        if (circleButtonsContainer.style.opacity == 1) {
            circleButtonsContainer.style.opacity = 0;  // Fade out the circle buttons
            setTimeout(function() {
                circleImage.style.display = "block";  // Show the image
                setTimeout(function() {
                    circleImage.style.opacity = 1;  // Fade in the image
                }, 50);  // Small delay for the opacity transition to start
            }, 500);  // Wait for the fade-out transition to finish (0.5s)
        } else {
            // If the image is visible, hide the image and show the circle buttons
            circleImage.style.opacity = 0;  // Fade out the image
            setTimeout(function() {
                circleImage.style.display = "none";  // Actually hide the image after fading out
            }, 500);  // Wait for the fade-out transition to finish
            circleButtonsContainer.style.opacity = 1;  // Fade in the circle buttons
        }
    });

    // Add event listener for the search input to show/hide results
    searchInput.addEventListener("input", function() {
        const query = searchInput.value.trim();
        
        if (query.length > 0) {
            searchResultsContainer.style.display = "block";  // Show search results container
        } else {
            searchResultsContainer.style.display = "none";  // Hide it when input is empty
        }
        
        // Optional: You can modify the list based on the query (e.g., fetching from an API)
        // For now, we are just displaying static suggestions.
    });

    // Add event listener for the "Safe Search" button click
    actionOneBtn.addEventListener("click", function() {
        fireButton.click();  // Simulate a click on the fire button
        modalContainer.style.display = "none";  // Hide the modal
    });
});
</script>

<style>
    .circle-buttons.hidden {
        visibility: hidden;
        opacity: 0;
    }

    #circleImage {
        margin-top: -60px;
        width: 150px;
        height: 150px;
        display: block;
        margin: 0px;
    }

    .search-results-container {
        border: 1px solid #ccc;
        max-width: 300px;
        margin-top: 5px;
        padding: 10px;
        background-color: #fff;
        position: absolute;
        width: 100%;
        z-index: 1000;
        display: none;
    }

    .search-results-container ul {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .search-results-container li {
        padding: 8px 12px;
        cursor: pointer;
    }

    .search-results-container li:hover {
        background-color: #f0f0f0;
    }
</style>

</body>
</html>
