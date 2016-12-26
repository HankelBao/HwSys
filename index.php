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
       
        <!--global css-->
        <link rel="stylesheet" href="theme/global.css">
        
        <!--css for login-->
        <link rel="stylesheet" href="theme/login.css">
        
        <script type="text/javascript">
        function FinishLoading(){
        	$(".picWaitForLoad").fadeIn(1500);
        }
        </script>
    </head>
    
    <body onload="FinishLoading()">
	    <div class="picWaitForLoad" style="position:absolute; width:100%; height:100%; z-index:-1">    
		    <img src="welcome.jpg" height="100%" width="100%"/>    
	    </div> 
        <div class="row">
        	<div class="col-md-12" style="background-color:#FFFFFF; height:auto; opacity:0.65; font-size:1.5em">
        		<strong>Suzhou Foreign Language School Homework System</strong> 
        	</div>
        </div>
        <div style="position:absolute; top:50%; left:50%; transform: translate(-50%, -50%); width:40%; height:30%;">
        	<div class="panel panel-info">
        		<div class="panel-heading" style="text-align:center">
        			<strong><h4>Log In</h4></strong>
        		</div>
        		<div class="panel-body">
        			<form action="studentClient.php">
        				<input style="height: 45px" type="text" class="form-control" placeholder="Username...">
        				<div style="height:10px"></div>
        				<input style="height: 45px" type="password" class="form-control" placeholder="Password...">
        				<div style="height:10px"></div>
        				<div style="text-align:center">
        				<button class="btn btn-info" style="height:45px; width:100%">Log in</button>
        				</div>
        			</form>
        		</div>
        	</div>
        </div>
    </body>
</html>
