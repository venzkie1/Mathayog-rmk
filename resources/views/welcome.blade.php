<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mathayog</title>
    <link rel="icon" href={{asset('images/mathayog-kite.png')}} type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href={{asset('/css/welcome.css')}}>
</head>
<body>
    <div class="container">
        <div class="row mathayog_logo1">
            <div class="mathayog_blue_logo" style="background-color: white; padding: 20px;">
                <img src="{{ asset('images/mathayog_blue.png') }}" class="mathayog_logo" alt="mathayog">
            </div>
        </div>
        <div class="dialog-container">
            <div class="dialog">
                <h3 id="title">
                    @auth
                        <?php
                        $firstName = Auth::user()->firstname;
                        $lastName = Auth::user()->lastname;
                        $capitalizedFirstName = ucfirst($firstName);
                        $capitalizedLastName = ucfirst($lastName);
                        ?>
                        Maligayang pagdating {{ $capitalizedFirstName }} {{ $capitalizedLastName }}, mga batang manlalakbay sa Mathayog!
                    @else
                        Maligayang pagdating, mga batang manlalakbay sa Mathayog!
                    @endauth
                </h3>
                <p id="dialog-text">Ang pinakamahusay na paglalakbay puno ng matematika sa puso ng Pilipinas! Maghanda ka na upang buksan ang mahika ng mga numero habang iniikot ang kamangha-manghang mga tanawin at isinasanay ang iyong sarili sa masiglang kultura ng magandang bansang ito.</p>
                <button id="tara" class="btn tara">Mag-patuloy</button>
            </div>
            <div class="guide">
                <img src="{{ asset('images/guide.png')}}" class="guide_image animated" alt="guide_image">
            </div>
        </div>
    </div>

    <script>
        var currentText = 0;
        var dialogText = document.getElementById('dialog-text');
        var greeting = document.getElementById('title');
        var isLastClick = false;
    
        function changeDialogText() {
            var newText = document.createElement('h3');
            newText.style.fontWeight = '700'; 
            newText.style.fontSize = '50px'; 
    
            switch (currentText) {
                case 0:
                    newText.textContent = 'Ako ang magiging gabay mo sa pakikipagsapalarang pang-matematika na ito.';
                    document.querySelector('.dialog').style.height = '450px';
                    currentText = 1;
                    break;
                case 1:
                    newText.textContent = 'Magbubukas ka ng mga lihim ng lungsod at magkakalap ng ginto.';
                    currentText = 2;
                    document.querySelector('.dialog').style.height = '380px';
                    break;
                case 2:
                    newText.textContent = '"Una, pumili tayo ng iyong anyo."';
                    currentText = 3;
                    document.querySelector('.dialog').style.height = '260px';
                    break;
                case 3:
                if (currentText === 3) {
                    window.location.href = 'avatar';
                    return;
                }
            }
    
            if (currentText === 1 || currentText === 2 || currentText === 3) {
                greeting.style.display = 'none';
            } else {
                greeting.style.display = 'block';
            }
    
            dialogText.replaceWith(newText);
            dialogText = newText;
        }
    
        document.getElementById('tara').addEventListener('click', changeDialogText);
    </script>
    
</body>
</html>
