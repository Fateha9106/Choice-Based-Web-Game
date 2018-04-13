<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css\bootstrap.css">

    <link rel="stylesheet" href="font\HindSiliguri-Bold.ttf">
    <link rel="stylesheet" href="font\HindSiliguri-Light.ttf">
    <link rel="stylesheet" href="font\HindSiliguri-Medium.ttf">
    <link rel="stylesheet" href="font\HindSiliguri-Regular.ttf">
    <link rel="stylesheet" href="font\HindSiliguri-SemiBold.ttf">

</head>

<body style="background-color: #151A1E; color: #D4784C;font-family: 'Hind Siliguri', sans-serif Semibold;">
    <div class="container">
        <div style="padding-top: 10%;  padding-left:30%; padding-right :30%; color: #DBD1B7;">

            <div class="text-center">
                <h1 style="color: #CE4415; font-size:150px"> <b>!</b> </h1>
                <h1 style="color: #CE4415">
                    <b>OPPSSS!!!</b>
                </h1>
                <h1 style="color: #CE4415">You Ran Out of Money
                    <?php if (isset($_GET["day"])){ echo " at day: ".$_GET["day"];} ?>
                </h1>
                <br>

                <h4 style="color:#DBD1B7">Many people loses to poverty such way. Please consider a <a href="donate.html">donation</a>                </h4>
            </div>


        </div>
    </div>


</body>

</html>
