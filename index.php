<?php
    $HWData = simplexml_load_file("G1C4HW.xml");
?>

<html>
    <head>
        <title>SFLS G1C4 Homework System</title>
    </head>
    <body>
        <h1>SFLS G1C4 Homework System</h1>
        <?php
            foreach($HWData->HWRecord as $x) {
                echo "<hr>";
                echo "<b>".$x["data"]."</b> </br>";
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
        <a href="/teachersClient.php">add homework</a>
    </body>
</html>