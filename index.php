<?php
    $HWData = simplexml_load_file("database/G1C4HW.xml");
?>

<html lang="zh-CN">
    <head>
        <title>HwSys Welcome</title>
        <!--device-->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximim-scale=1, user-scalable=no">
        <!--jquery-->
        <script src="https://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
        <!--bootstrap-->
        <link rel="stylesheet" href="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <script type="text/javascript"> 
        $(document).ready(function(){
            $(".drop-parent").click(function(){
                $(this).children(".drop-child").slideToggle("fast");
            });
        });
        </script>
    
        <style type="text/css">
        li.drop-parent, ul.drop-child {
        }
        ul.drop-child{
            display:none;
        }
        </style>
    </head>
    
    <body>
        <nav class="navbar navbar-default" role="nagivation" style="margin: 0px;">
            <div class="navbar-header">
                <a class="navbar-brand" href="html.php"><strong>SFLS Homework System</strong></a>
            </div>
            <ul class="nav navbar-nav">
                <li><a href="#">G1C1</a></li>
                <li><a href="#">G1C2</a></li>
                <li><a href="#">G1C3</a></li>
                <li class="active"><a href="#">G1C4</a></li>
            </ul>
            <form class="navbar-form navbar-right form-inline" role="form">
                <div class="form-group">
                    <input type="test" class="form-control" placeholder="Username">
                    <input type="password" class="form-control" placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary">sign in</button>
            </form>
        </nav>

        <ul class="list-group">
            <li class="drop-parent list-group-item">
                <strong>2016/12/12</strong>
                <ul class="drop-child">
                    <li class="list-group-item">Eng</li>
                </ul>
            </li>
        </ul>
        <?php
            foreach($HWData->HWRecord as $x) {
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
        
    </body>
</html>
