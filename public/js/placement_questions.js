// get and display the selected avatar
var selectedAvatarInfo = sessionStorage.getItem('selectedAvatar');

    if (selectedAvatarInfo) {
        // Parse the JSON data
        selectedAvatarInfo = JSON.parse(selectedAvatarInfo);

        // Display the selected avatar on the profile page
        var profileImage = document.getElementById('profileImage');
            profileImage.src = selectedAvatarInfo.src;
            profileImage.alt = selectedAvatarInfo.alt;
    }


    // _______________________________________________________________________________
    // const quizData = [
    //     {
    //         question: "Write 34,296 in expanded place values notation.",
    //         a: "3 thousands 4 hundreds 2 tens 6 ones ", 
    //         b: "3 ten thousands 4 thousands 9 hundreds 2 tens 6 ones  ",
    //         c: "3 ten thousands 4 thousands 2 hundreds 9 tens 6 ones ",
    //         d: "4 ten thousands 3 thousands 2 hundreds 9 tens 6 ones ",
    //         answer: "c"
    //     },
    //     {
    //         question: "What is the next number in the sequence 307, 315, 323, 331, …?",
    //         a: "338", 
    //         b: "339", 
    //         c: "340", 
    //         d: "341",
    //         answer: "b"
    //     },
    //     {
    //         question: "Arrays in JavaScript can be used to store ____.",
    //         a: "numbers and strings", 
    //         b: "other arrays",
    //         c: "booleans",
    //         d: "all of the above",
    //         answer: "d"
    //     },
    //     {
    //         question: "String values must be enclosed within ____ when being assigned to variables.",
    //         a: "commas",
    //         b: "curly brackets",
    //         c: "quotes",
    //         d: "parentheses",
    //         answer: "c"
    //     },
    //     {
    //         question: "A very useful tool used during development and debugging for printing content to the debugger is:",
    //         a: "JavaScript",
    //         b: "terminal / bash",
    //         c: "for loops",
    //         d: "console.log",
    //         answer: "d"
    //     },
    //     {
    //         question: "What is the purpose of HTML?",
    //         a: "To define the presentation of a webpage",
    //         b: "To define the structure and content of a webpage",
    //         c: "To style the webpage with colors and fonts",
    //         d: " To add interactivity to the webpage",
    //         answer: "b"
    //     },
    //     {
    //         question: "HTML Question: Which attribute is used to specify the target of a hyperlink?",
    //         a: "href",
    //         b: "target",
    //         c: "link",
    //         d: "rel",
    //         answer: "b"
    //     },
    //     {
    //         question: "What is the purpose of JavaScript?",
    //         a: "To define the structure and content of a webpage",
    //         b: "To style the webpage with colors and fonts",
    //         c: "To add interactivity to the webpage",
    //         d: "To create animations and graphics",
    //         answer: "c"
    //     },
    //     {
    //         question: "Which JavaScript function is used to add an event listener to an element?",
    //         a: "addEventListener()",
    //         b: "getElementById()",
    //         c: "appendChild()",
    //         d: "removeChild()",
    //         answer: "a"
    //     },
    //     {
    //         question: 'What is the purpose of the "this" keyword in JavaScript?',
    //         a: "It refers to the current HTML element",
    //         b: "It refers to the current CSS property",
    //         c: "It refers to the current JavaScript function",
    //         d: "It refers to the current JavaScript object",
    //         answer: "d"
    //     },
    // ];
    // const quiz = document.getElementById('quiz');
    // const answerEls = document.querySelectorAll('.answer');
    // const number_questions = document.getElementById("numbered_question");
    // const questionEl = document.getElementById("question");
    // const a_text = document.getElementById("a_text");
    // const b_text = document.getElementById("b_text");
    // const c_text = document.getElementById("c_text");
    // const d_text = document.getElementById("d_text");
    const submitBtn = document.getElementById("submit");
    const container = document.querySelector('.container');
    const dialog = document.getElementById(`dialog`);
    const guideImg = document.querySelector('.guide_image');
    
    // let currentQuiz = 0;
    
    // loadQuiz();
    
    // function loadQuiz() {
    //     // deselectAnswers();
    
    //     const currentQuizData = quizData[currentQuiz];
    
    //     console.log(currentQuizData);
    
    //     number_questions.innerText = `Question ${currentQuiz + 1} of ${quizData.length}`;
    //     questionEl.innerText = `${currentQuizData.question}`;
    //     a_text.innerText = `A. ${currentQuizData.a}`;
    //     b_text.innerText = `B. ${currentQuizData.b}`;
    //     c_text.innerText = `C. ${currentQuizData.c}`;
    //     d_text.innerText = `D. ${currentQuizData.d}`;
    // }
    
    // function getSelected() {
    //     let answer = undefined;
    
    //     answerEls.forEach((answerEl) => {
    //         if (answerEl.checked) {
    //             answer = answerEl.id;
    //         }
    //     });
    
    //     return answer;
    // }
    
    // function deselectAnswers() {
    //     answerEls.forEach((answerEl) => {
    //         answerEl.checked = false;
    //     });
    // }

    const answerChoiceEls = document.querySelectorAll('.answer-choice');

    answerChoiceEls.forEach((choice) => {
        choice.addEventListener('click', () => {
            // Remove the "selected" class from previously selected choices
            answerChoiceEls.forEach((choice) => {
                choice.classList.remove('selected');
            });

            // Add the "selected" class to the clicked choice
            choice.classList.add('selected');

            // Handle the answer selection and button visibility
            handleAnswerSelection();
        });
    });
    
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
            // const selectedAnswer = selectedChoice.getAttribute('data-answer');
            // document.getElementById('title').innerText = selectedAnswer === quizData[currentQuiz].answer ? 'Good Job!' : 'Nice Try!';

            // Update background color based on the selected answer
            // const body = document.body;
            // body.style.backgroundColor = selectedAnswer === quizData[currentQuiz].answer ? '#FFD15B' : '#E3E3E3';

        }
    }
    
    
    submitBtn.addEventListener("click", () => {
        const selectedChoice = document.querySelector('.answer-choice.selected');
        if (selectedChoice) {
            const selectedAnswerText = selectedChoice.querySelector('p').textContent;
            console.log(selectedAnswerText);
        } else {
            console.log("No answer selected");
        }
    
        // Reset button, guideImg, and dialog to their initial state
        submitBtn.style.opacity = 0;
        guideImg.style.opacity = 0;
        dialog.style.opacity = 0;
        container.style.height = '100vh';
    
        currentQuiz++;
        if (currentQuiz < quizData.length) {
            loadQuiz();
        } else {

        }
    });
    
    