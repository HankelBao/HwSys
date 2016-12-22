<?php
$HWData=simplexml_load_file("database/G1C4HW.xml");
$date = $_GET["date"];
$sub = $_GET["sub"];
foreach($HWData->HWRecord as $x) {
    if ($x["date"] == $date) {
        foreach($x->subject as $y) {
            if ($y["sub"] == $sub) {
                echo "</br>";
                foreach($y->record as $z) {
                    echo "<ul>";
                       echo "<li>".$z->description."</li>";
                    echo "</ul>";
                }
            }
        }
    }
}
?>