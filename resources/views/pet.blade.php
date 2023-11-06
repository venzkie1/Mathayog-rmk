<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mathayog</title>
    <link rel="icon" href={{asset('images/mathayog-kite.png')}} type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href={{asset('/css/pet.css')}}>
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
                            {{-- <img src="{{ asset('images/profile.png') }}" class="profile" alt="profile"> --}}
                        </div>
                    </div>                    
                </div>
            </div>
        <div class="row align-items-center pili_pet_container">
            <div class="col-md-6 mt-5">
                <img src="{{ asset('images/pili-pet.png') }}" class="pili_pet" alt="pumili_pet">
            </div>
            <div class="col-md-6 mt-5 dialog-box">
                <div class="arrow"></div>
                <div class="dialog-content">
                    <h5>Pumili ng alaga!</h5>
                    <p>Ang pinakamahusay na paglalakbay puno ng matematika sa puso ng Pilipinas!</p>
                </div>
            </div>
        </div>        
        <div class="row mt-5 justify-content-center align-items-center card-background">
            <div class="col-md-2">
                <div class="card">
                    <img src="{{ asset('images/cat.png') }}" class="card-img-top" alt="kuting">
                    <div class="card-body">
                        <h5 class="card-title">Kuting</h5>
                        <p class="card-text">Ang pinakamahusay na paglalakbay puno ng matematika sa puso ng Pilipinas!</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 offset-md-0.5">
                <div class="card">
                    <img src="{{ asset('images/dog.png') }}" class="card-img-top" alt="bantay">
                    <div class="card-body">
                        <h5 class="card-title">Bantay</h5>
                        <p class="card-text">Ang pinakamahusay na paglalakbay puno ng matematika sa puso ng Pilipinas!</p>
                    </div>
                </div>
            </div>
            <div class="col-md-2">
                <div class="card">
                    <img src="{{ asset('images/chicken.png') }}" class="card-img-top" alt="tandang">
                    <div class="card-body">
                        <h5 class="card-title">Tandang</h5>
                        <p class="card-text">Ang pinakamahusay na paglalakbay puno ng matematika sa puso ng Pilipinas!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <button class="btn patuloy">Mag-patuloy</button>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script>
        // This JavaScript code runs after the document has been fully loaded
        $(document).ready(function () {
            // When a card element is clicked
            $('.card').click(function () {
                if ($(this).hasClass('selected')) {
                    // If the clicked card is already selected, deselect it
                    $(this).removeClass('selected');
                    $('.container').removeClass('show-button');
                } else {
                    // If a card is clicked and it's not selected, select it
                    // and add a class to the container to show the "continue" button
                    $('.card').removeClass('selected'); // Deselect all other cards
                    $(this).addClass('selected'); // Select the clicked card
                    $('.container').addClass('show-button'); // Show the "continue" button
                    $('.patuloy').css('opacity', '1'); // Make the "continue" button opaque
                }
    
                // If at least one card is selected, animate the container height
                if ($('.card.selected').length > 0) {
                    $('.container').css('transition', 'height 1.5s');
                    $('body').css('overflow', 'hidden');
                    $('.container').css('height', '88vh');
                    $('.patuloy').show();
                } else {
                    // If no card is selected, reset the container height and hide the "continue" button
                    $('.container').css('height', '100vh');
                    $('.patuloy').hide('transition', '1.5s');
                }
            });
            $('.patuloy').click(function () {
            window.location.href = "/questions";
        });
        });

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
    </script>
    
    

</body>
</html>
