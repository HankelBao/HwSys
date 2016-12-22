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
        
        <!--My Theme(CSS & JS)-->
        <link rel="stylesheet" href="theme/frame.css">
        <script src="theme/frame.js"></script>
        
        <!--css for this web-->
        <link rel="stylesheet" href="theme/costume.css">
        
        <script type="text/javascript">
            $(document).ready(function(){
                $(".div-res").click(function(){
                    date = $(this).attr("name");
                    sub = $(this).attr("id");
                    
                    xhr = new XMLHttpRequest();
                    url = "quote.php?date=" + date + "&sub=" + sub;
                    xhr.onreadystatechange = function(){
                        if (xhr.readyState == 4) {
                            if (xhr.status == 200) {
                                document.getElementById("contentDiv").innerHTML = xhr.responseText;
                            }
                        }
                    }
                    xhr.open("GET", url, true);
                    xhr.send(null);
                });
            });
        </script>
    </head>
    
    <body>
        <div class="row"><nav class="navbar navbar-default" role="nagivation" style="border:0; margin: 0px; background-color: #000000; border-radius: 0!important;">
            <div class="navbar-header">
                <a class="navbar-brand" href="html.php" style="color:#FFFFFF;"><strong>SFLS Homework System</strong></a>
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
        </nav></div>

        <!--<ul>
            <li class="dropmenu">
                <strong class="dropmenu-title">title</strong>
                <ul class="dropmenu-list">
                    <li>test</li>
                </ul>
            </li>
        </ul>-->
        
        <div class="row"><div class="col-md-3"style="height:100%; margin:0px; border:1px solid #000000;">
        <?php
            echo "</br><ul>";
            foreach($HWData->HWRecord as $x) {
                echo "<li class='dropmenu'><strong class='dropmenu-title'>".$x["date"]."</strong>";
                echo "<ul class='dropmenu-list'>";
                foreach($x->subject as $y){
                    echo "<li class='div-res' name='".$x['date']."' id='".$y['sub']."'>".$y['sub']."</li>";
                }
                echo "</ul></li>";
            }
            echo "</ul>";
        ?>
        </div>
        <div id="contentDiv" class="col-md-9" style="height:100%; border:1px solid #000000;margin:0px;">
            
        </div></div>
        
    </body>
</html>
