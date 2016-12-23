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
    </head>
    
    <body>
       <div class="container"> 
       <div class="row"> 
           <div class="span4 offset4 well"> 
            <legend>Please Sign In</legend> 
            <div class="alert alert-error"> 
                <a class="close" data-dismiss="alert" href="#">¡Á</a>Incorrect Username or Password! 
            </div> 
            <form method="POST" action="" accept-charset="UTF-8"> 
            <input type="text" id="username" class="span4" name="username" placeholder="Username"> 
            <input type="password" id="password" class="span4" name="password" placeholder="Password"> 
            <label class="checkbox"> 
                <input type="checkbox" name="remember" value="1"> Remember Me 
            </label> 
            <button type="submit" name="submit" class="btn btn-info btn-block">Sign in</button> 
            </form>     
        </div> 
    </div> 
</div> 

    </body>
</html>
