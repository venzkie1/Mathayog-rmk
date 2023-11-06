<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mathayog</title>
    <link rel="icon" href={{asset('images/mathayog-kite.png')}} type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href={{asset('/css/flight.css')}}>
</head>
<body>
    <div class="container">
        <div class="row mathayog_logo1">
            <div class="mathayog_blue_logo" style="background-color: white; padding: 20px;">
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
        <div class="animation-container">
            <div class="dialog-container">
                <div class="dialog">
                    <h3 id="title">
                        Alright, let’s start. I’ll be asking you 10 math questions. Take all the time you need to answer them.
                    </h3>
                    <button id="tara" class="btn tara" onclick="goToPlacementQuestion()">Mag-patuloy</button>
                </div>
                <div class="guide">
                    <img src="{{ asset('images/guide.png')}}" class="guide_image animated" alt="guide_image">
                </div>
            </div>
        </div>
    </div>

    <script>

        function goToPlacementQuestion() {
                    window.location.href = '/placement_question';
                }
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

        // animation
        window.addEventListener('load', function() {
            setTimeout(function() {
                var animationContainer = document.querySelector('.animation-container');
                animationContainer.style.opacity = 1;
            }, 1000); // Delay the animation for 3 seconds (adjust the duration as needed)
        });


    </script>
    
</body>
</html>
