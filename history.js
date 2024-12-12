
    function updateImageVisibility() {
        const tabs = document.querySelectorAll('.tab');
        const image = document.getElementById('my-image');

        // Show the image if there are no tabs, hide it if there are tabs
        image.style.display = tabs.length === 0 ? 'block' : 'none';
    }

    function addTab() {
        // Get the tabs container
        const tabsContainer = document.getElementById('tabs');
        
        // Check if the container exists
        if (tabsContainer) {
            const newTab = document.createElement('div');
            newTab.className = 'tab';
            newTab.textContent = `Tab ${tabsContainer.children.length + 1}`;

            // Set the onclick event for the new tab
            newTab.onclick = function() {
                selectTab(this);
            };

            // Append the new tab to the tabs container
            tabsContainer.appendChild(newTab);
            updateImageVisibility(); // Update the image visibility after adding a tab
        }
    }

    function selectTab(tab) {
        const tabs = document.querySelectorAll('.tab');
        
        // Remove the active class from all tabs
        tabs.forEach(t => t.classList.remove('active'));
        
        // Add the active class to the selected tab
        tab.classList.add('active');

        // Update the image visibility
        updateImageVisibility();
    }

    // Call this function to ensure the image is shown initially
    updateImageVisibility();

