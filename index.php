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
                $x->due = "1999/04/04";
            }
            $save_xml = $HWData->asXML();
            $file = fopen("test.xml","w");
            fwrite($file,$save_xml);
            fclose($file);
        ?>
    </body>
</html>