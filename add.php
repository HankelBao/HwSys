<html>
<head></head>
<body>
<?php
    $newdate=$_POST["dat"];
    echo "date:".$newdate;
    $newsub=$_POST["sub"];
    echo "</br>subject:".$newsub;
    $newdue=$_POST["due"];
    echo "</br>due time:".$newdue;
    $newdes=$_POST["des"];
    echo "</br>description:".$newdes;
    
    $HWDataN = simplexml_load_file("G1C4HW.xml");
    foreach($HWDataN->HWRecord as $x) {
        if ($x["date"] == $newdate) {
            foreach($x->subject as $y) {
                if ($y["sub"] == $newsub) {
                    $z = $y->addChild("record","test");
                    $z->addChild("due",$newdue);
                    $z->addChild("description",$newdes);
                }
            }
        }
    }
    $save_xml = $HWDataN->asXML();
    $file = fopen("G1C4HW.xml","w");
    fwrite($file,$save_xml);
    fclose($file);
?>
</body>