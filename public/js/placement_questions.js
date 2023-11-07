function enableAnswerChoices() {
    answerChoiceEls.forEach((choice) => {
        choice.classList.remove('disabled');
    });
}

// get and display the selected avatar
let selectedAvatarInfo = sessionStorage.getItem('selectedAvatar');

if (selectedAvatarInfo) {
    // Parse the JSON data
    selectedAvatarInfo = JSON.parse(selectedAvatarInfo);

    // Display the selected avatar on the profile page
    let profileImage = document.getElementById('profileImage');
    profileImage.src = selectedAvatarInfo.src;
    profileImage.alt = selectedAvatarInfo.alt;
}

const submitBtn = document.getElementById("submit");
const container = document.querySelector('.container');
const dialog = document.getElementById(`dialog`);
const guideImg = document.querySelector('.guide_image');
const answerChoiceEls = document.querySelectorAll('.answer-choice');


let currentQuestion = 0;
let selectedChoice = false;

answerChoiceEls.forEach((choice) => {
    choice.addEventListener('click', () => {
        if (!selectedChoice) {
            // Remove the "selected" class from previously selected choices
            answerChoiceEls.forEach((choice) => {
                choice.classList.remove('selected');
            });

            // Add the "selected" class to the clicked choice
            choice.classList.add('selected');

            selectedChoice = true;
            // Handle the answer selection and button visibility
            handleAnswerSelection();
        }
    });
});


enableAnswerChoices();

function handleAnswerSelection() {
    const selectedChoice = document.querySelector('.answer-choice.selected');
    const isAnswerSelected = selectedChoice !== null;

    if (isAnswerSelected) {

        container.style.transition = 'height 1.5s';
        document.body.style.overflow = 'hidden';
        container.style.height = '75vh';

        // Apply the same transition properties to the button
        submitBtn.style.transition = 'height 1.5s, opacity 1.5s';
        submitBtn.style.display = 'inline-block';
        submitBtn.style.opacity = 1;

        guideImg.style.transition = 'height 1.5s, opacity 1.5s';
        guideImg.style.display = 'inline-block';
        guideImg.style.opacity = 1;

        dialog.style.transition = 'height 1.5s, opacity 1.5s';
        dialog.style.display = 'inline-block';
        dialog.style.opacity = 1;

        // Check if the selected answer is correct
        const selectedAnswer = selectedChoice.getAttribute('data-answer');

        document.getElementById('title').innerText = selectedAnswer === correctAnswer ? 'Good Job!' : 'Nice Try';

        const body = document.body;
        body.style.backgroundColor = selectedAnswer === correctAnswer ? '#FFD15B' : '#E3E3E3';

        console.log('Selected Answer:', selectedAnswer);
        console.log('Correct Answer-----:', correctAnswer);
        console.log('correctAnswers---', correctAnswers);

        enableAnswerChoices();
    }
}



function nextQuestion() {

    selectedChoice = false;
    // Hide dialog, guideImg, and submitBtn
    dialog.style.display = 'none';
    guideImg.style.display = 'none';
    submitBtn.style.display = 'none';

    // Reset the container's height to its original state with a transition
    container.style.transition = 'height 1.5s'; // Adjust the transition duration as needed
    container.style.height = '100vh';

    // Reset the background color to its original state with a transition
    const body = document.body;
    body.style.transition = 'background-color 1.5s'; // Adjust the transition duration as needed
    body.style.backgroundColor = '#E3E3E3';

    // Check if there are more questions to display
    if (currentQuestion < questionsToShow.length - 1) {
        currentQuestion++;
        correctAnswer  = currentQuestionIndex++;


        // Get the current question and choices
        const currentQuestionData = questionsToShow[currentQuestion];
        console.log('questionsToShow:', questionsToShow);
        console.log('Current Question Data:', currentQuestionData);

        const choices = currentQuestionData.place_questions;
        console.log('Choices:', choices);

        // Update the question title
        document.getElementById('question').innerText = currentQuestionData.place_question_title;

        // Update the question number
        document.getElementById('numbered_question').innerText = `Question ${currentQuestion + 1} of ${questionsToShow.length}`;

        // Clear any previous selections
        const answerChoices = document.querySelectorAll('.answer-choice');
        answerChoices.forEach(choice => {
            choice.classList.remove('selected');
        });

        // Display the choices for the current question
        // const choiceElements = document.querySelectorAll('.answer-choice');
        // choiceElements.forEach((element, index) => {
        //     const choiceData = choices[index];
        //     element.setAttribute('data-answer', choiceData.choices_letter);
        
        //     const choiceText = choiceData.choices ? `${choiceData.choices_letter}. ${choiceData.choices}` : `${choiceData.choices_letter}. ${choiceData.choices_img}`;
        //     document.getElementById(`${choiceData.choices_letter}_text`).innerText = choiceText;
        // });





        const choiceElements = document.querySelectorAll('.answer-choice');
        choiceElements.forEach((element, index) => {
            const choiceData = choices[index];
            element.setAttribute('data-answer', choiceData.choices_letter);
        
            let choiceText = "";
            
            console.log('choiceData:', choiceData);
            if (choiceData.choices !== null) {
                console.log('naay choices:');

                
            // Remove all <iframe> elements with a specific class
            let iframeElements = document.querySelectorAll(".iframe-link");
                iframeElements.forEach(function(iframe) {
                    iframe.remove();
            });


                choiceText = `${choiceData.choices_letter}. ${choiceData.choices}`;
            } else {
                console.log('wala choices:');
                choiceText = `${choiceData.choices_letter}. ${choiceData.choices_img}`;
                
                // Check if choices are null and choices_img is present
            
                    console.log('choceData', choiceData);
                    const iframeElement = document.createElement('iframe');
                    iframeElement.src = choiceData.choices_img;
                    iframeElement.style.width = '100%'; // Set the initial width
                    iframeElement.style.height = '100%'; // Set the initial height
                    iframeElement.title = 'Embedded Content';
                    iframeElement.className = 'iframe-link';
                    element.appendChild(iframeElement);
        
                    // Make the iframe expandable on hover
                    iframeElement.addEventListener('mouseenter', () => {
                        iframeElement.style.width = '200px'; // Adjust the width as needed
                        iframeElement.style.height = '200px'; // Adjust the height as needed
                    });
        
                    iframeElement.addEventListener('mouseleave', () => {
                        iframeElement.style.width = '100%'; // Reset the width on mouse leave
                        iframeElement.style.height = '100%'; // Reset the height on mouse leave
                    });
                
            }
        
            document.getElementById(`${choiceData.choices_letter}_text`).innerText = choiceText;
        });       


        // Update the correct answer for the current question
        correctAnswer = correctAnswers[currentQuestionIndex];

        enableAnswerChoices();
    } else {
        // Handle the end of the quiz
    }
}

