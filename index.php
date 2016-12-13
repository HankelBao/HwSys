<?php
    $HWData = simplexml_load_file("test.xml");
?>

<html>
    <head>
        <title>SFLS G1C4 Homework System</title>
    </head>
    <body>
        <h1>SFLS G1C4 Homework System</h1>
        <?php
            foreach($HWData->HWRecord as $x) {
                print($x->due.": ".$x->description." </br>");
                print($x->picture);
                print("</br>");
            }
        ?>
    </body>
</html>