<?php
    $HWData = simplexml_load_file("database/G1C4HW.xml");
?>

<html>
    <head>
        <title>SFLS G1C4 Homework System</title>
        <link rel="stylesheet" href="https://unpkg.com/purecss@0.6.1/build/base-min.css">
        <link rel="stylesheet" href="https://unpkg.com/purecss@0.6.1/build/pure-min.css">
        <link rel="stylesheet" href="https://unpkg.com/purecss@0.6.1/build/grids-min.css">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style type="text/css">
        .c1 {
                background-color: #1abc9c;
                color: #FFF;
            }
        .ph-500 {
                min-height: 100px;
            }
        .main {
                max-width: 1000px;
                margin: 0 auto;
            }
        </style>
    </head>
    <body>
        <h1>SFLS G1C4 Homework System</h1>
        <div class="pure-g">
            <div class="pure-u-1-3"><p><div class="c1 ph-500">asdfasdf</div></p></div>
            <div class="pure-u-1-3"><p>start</p></div>
            <div class="pure-u-1-3"><p>start</p></div>
        </div>
        <form class="pure-form">
            <fieldset>
                <legend>A compact inline form</legend>
                <input type="email" placehold="Email">
                <button type="submit" class="pure-button pure-button-primary">Sign in</button>
            </fieldset>
        </form>
        <?php
            foreach($HWData->HWRecord as $x) {
                echo "<hr>";
                echo "<b>".$x["date"]."</b> </br>";
                foreach($x->subject as $y){
                    echo "<b>".$y['sub']."</b><br>";
                    foreach($y->record as $z) {
                        echo "<li>";
                        echo $z->description." </br>";
                        echo "</li>";
                    }
                }
            }
        ?>
        <a href="/teachersClient.php">add homework</a></br>
        <a href="/login.php">login</a>
        <a href="/index.html">exam</a>
    </body>
</html>