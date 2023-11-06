<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mathayog</title>
    <link rel="icon" href={{asset('images/mathayog-kite.png')}} type="image/x-icon">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href={{asset('/css/companion.css')}}>
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
                <h3 id="title">Kunti nalang!</h3>
                <button id="tara" class="btn tara">Mag-patuloy</button>
            </div>
            <div class="guide">
                <img src="{{ asset('images/guide.png')}}" class="guide_image animated" alt="guide_image">
            </div>
        </div>
    </div>

    <script>
        var currentText = 0;
        var greeting = document.getElementById('title');
    
        function changeDialogText() {
            switch (currentText) {
                case 0:
                    greeting.textContent = 'Ngayon, bawat manlalakbay ay nangangailangan ng kasama.';
                    currentText = 1;
                    document.querySelector('.dialog').style.height = '420px';
                    break;
                case 1:
                    greeting.textContent = 'Pumili ng iyong alagang hayop na tagapayo.';
                    currentText = 2;
                    document.querySelector('.dialog').style.height = '360px';
                    break;
                case 2:
                    window.location.href = 'pet';
                    break;
            }
        }
    
        document.getElementById('tara').addEventListener('click', changeDialogText);
    </script>
    
</body>
</html>
