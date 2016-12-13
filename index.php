<?php
    $HWData = simplexml_load_file("G1C4HW.xml");
?>

<html>
    <head>
        <title>SFLS G1C4 Homework System</title>
    </head>
    <body>
        <h1>SFLS G1C4 Homework System</h1>
        <a href="/teachersClient.php">Add homework</a>
        <?php
            foreach($HWData->HWRecord as $x) {
                echo $x["data"].": ";
                echo "</br>";
                foreach($x->record as $y){
                    echo "description: ".$y->description." </br>";
                    echo "picture: ".$y->picture." </br>";
                }
            }
            $save_xml = $HWData->asXML();
            $file = fopen("test.xml","w");
            fwrite($file,$save_xml);
            fclose($file);
        ?>
    </body>
</html>