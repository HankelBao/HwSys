<?php
    $HWData = simplexml_load_file("G1C4HW.xml");
?>

<html>
    <head>
        <title>SFLS G1C4 Homework System</title>
    </head>
    <body>
        <h1>SFLS G1C4 Homework System</h1>
        <hr>
        <?php
            foreach($HWData->HWRecord as $x) {
                echo "<b>".$x["data"]."</b> </br>";
                foreach($x->subject as $y){
                    echo "<b>".$y['sub']."</b><br>";
                    foreach($y->record as $z) {
                        echo "record: </br>";
                        echo ">> due: ".$z->due." </br>";
                        echo ">> description: ".$z->description." </br>";
                        echo ">> picture: ".$z->picture." </br>";
                    }
                }
            }
        ?>
    </body>
</html>