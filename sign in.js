document.addEventListener("DOMContentLoaded", function() {
    const signInForm = document.getElementById('signInForm');
    const signUpForm = document.getElementById('signUpForm');
    const backBtn = document.querySelector('.back-btn');
    const logo = document.querySelector('.logo');  // Target the logo element

    // Check if the URL has the query parameter to show the sign-up form
    const urlParams = new URLSearchParams(window.location.search);
    const showSignUp = urlParams.get('signUp') === 'true';

    if (showSignUp) {
        // Hide the sign-in form and show the sign-up form
        signInForm.classList.remove('show');
        signInForm.classList.add('hidden');
        signUpForm.classList.remove('hidden');
        signUpForm.classList.add('show');
        
        // Hide the back button when on the sign-up form
        if (backBtn) {
            backBtn.style.display = 'none';
        }

        // Hide the logo when on the sign-up form
        if (logo) {
            logo.style.display = 'none';
        }
    }

    // Show Sign Up form and hide Sign In form
    const showSignUpBtn = document.getElementById('showSignUpBtn');
    const showSignInBtn = document.getElementById('showSignInBtn');

    showSignUpBtn.addEventListener('click', () => {
        signInForm.classList.remove('show');
        signInForm.classList.add('hidden');
        signUpForm.classList.remove('hidden');
        signUpForm.classList.add('show');

        // Hide the back button when signing up
        if (backBtn) {
            backBtn.style.display = 'none';
        }

        // Hide the logo when on the sign-up form
        if (logo) {
            logo.style.display = 'none';
        }
    });

    // Show Sign In form and hide Sign Up form
    showSignInBtn.addEventListener('click', () => {
        signUpForm.classList.remove('show');
        signUpForm.classList.add('hidden');
        signInForm.classList.remove('hidden');
        signInForm.classList.add('show');

        // Show the back button when going back to sign in
        if (backBtn) {
            backBtn.style.display = 'block';
        }

        // Show the logo again when going back to sign-in
        if (logo) {
            logo.style.display = 'block';
        }
    });
});
