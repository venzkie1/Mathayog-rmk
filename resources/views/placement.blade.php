<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mathayog</title>
    <link rel="icon" href={{asset('images/mathayog-kite.png')}} type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href={{asset('/css/placement.css')}}>
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
        <div class="dialog-container">
            <div class="dialog">
                <h3 id="title">Alright! Off we go!</h3>
                <button id="tara" class="btn tara" onclick="goToFlight()">Mag-patuloy</button>
            </div>
            <div class="guide">
                <img src="{{ asset('images/guide.png')}}" class="guide_image animated" alt="guide_image">
            </div>
        </div>
    </div>

    <script>

        function goToFlight() {
            window.location.href = '/flight';
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
    </script>
    
</body>
</html>
