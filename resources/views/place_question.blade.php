<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mathayog</title>
    <link rel="icon" href={{asset('images/mathayog-kite.png')}} type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href={{asset('/css/place_question.css')}}>
</head>
<body>
        <div class="container">
            <div class="row mathayog_logo1">
                <div class="mathayog_blue_logo">
                    <img src="{{ asset('images/mathayog_blue.png') }}" class="mathayog_logo" alt="mathayog">
                    <div class="profile_container">
                        <div class="profile_name">
                            <h5>
                                @auth
                                    <?php
                                    $firstName = Auth::user()->firstname;
                                    $lastName = Auth::user()->lastname;
                                    $capitalizedFirstName = ucfirst($firstName);
                                    $capitalizedLastName = ucfirst($lastName);
                                    ?>
                                {{ $capitalizedFirstName }} {{ $capitalizedLastName }}
                                @endauth
                            </h5>
                        </div>
                        <div class="profile_image">
                            <img id="profileImage" class="profile" alt="profile">
                        </div>
                    </div>                    
                </div>
            </div>
            <div class="quiz-container" id="quiz">
                <div class="quiz-header">
                    @if ($placeQuestions->count() > 0)
                        @php
                            $questionsToShow = $placeQuestions;
                        @endphp
                        <h5 id="numbered_question">Question 1 of {{ $questionsToShow->count() }}</h5>
            
                        <h2 id="question">{{ $questionsToShow[0]->place_question_title }}</h2>
                        <div class="answer-choices">
                            @foreach ($questionsToShow[0]->placeQuestions as $choice)
                                <div class="answer-choice" id="{{ $choice->choices_letter }}_choice" data-answer="{{ $choice->choices_letter }}">
                                    @if ($choice->choices !== null)
                                        <p id="{{ $choice->choices_letter }}_text">{{ $choice->choices_letter }}. {{ $choice->choices }}</p>
                                    @else
                                        {{-- <h1>TEST</h1>
                                        <p id="{{ $choice->choices_letter }}_text">{{ $choice->choices_letter }}. {{ $choice->choices_img }}</p>
                                        <iframe src="{{ $choice->choices_img }}" width="100%" height="100%" title="Embedded Content" class="iframe-link"></iframe> --}}
                                    @endif
                                </div>
                            @endforeach
                        </div>
                    @endif
                </div>
            </div>
                                
        </div>
        <img src="{{ asset('images/guide.png')}}" class="guide_image animated" id="guide_image" alt="guide_image">
        <div class="dialog" id="dialog">
            <h3 id="title"></h3>
        </div>
        <button class="btn patuloy" id="submit" onclick="nextQuestion()">Mag-patuloy</button>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="{{asset('js/placement_questions.js')}}"></script>
    <script>
        let currentQuestionIndex = 0;
        let questionsToShow = @json($placeQuestions);
        console.log('questions to show:',questionsToShow)
        let correctAnswers = @json($placeQuestions->pluck('correct_answer'));
        let correctAnswer = correctAnswers[currentQuestionIndex];
        console.log('currentQuestionIndex:',currentQuestionIndex);
        console.log('correctAnswers:',correctAnswers);
    </script>
</body>
</html>
