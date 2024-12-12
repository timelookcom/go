document.addEventListener('DOMContentLoaded', () => {
    const micButton = document.getElementById('mic-button');
    const searchInput = document.getElementById('search-input');

    micButton.addEventListener('click', () => {
        if ('webkitSpeechRecognition' in window) {
            const recognition = new webkitSpeechRecognition();
            recognition.continuous = false;
            recognition.interimResults = false;

            recognition.onstart = () => {
                micButton.classList.add('active');
                console.log('Voice recognition started. Speak now.');
            };

            recognition.onresult = (event) => {
                const spokenQuery = event.results[0][0].transcript;
                searchInput.value = spokenQuery;
                console.log('Searching for:', spokenQuery);
            };

            recognition.onerror = (event) => {
                console.error('Error occurred in recognition: ', event.error);
            };

            recognition.onend = () => {
                micButton.classList.remove('active');
                console.log('Voice recognition ended.');
                triggerSearch(searchInput.value);
            };

            recognition.start();
        } else {
            console.log('Speech recognition not supported in this browser.');
        }
    });

    function triggerSearch(query) {
        console.log('Initiating search for:', query);
        // Add search logic here
    }
});