<html>
    <head>
        <title>TeachersClient</title>
    </head>
    <body>
        <h1>TeachersClient</h1>
        <h5>Warning: you don't have the permission to add homework</h5>
        <hr>
        <form action="add.php" method="post">
            the subject:
            <select name="subject">
                <option value="Eng">Eng</option>
                <option value="EcoChi">Eco Chinese</option>
                <option value="EcoFor">Eco Foreign</option>
                <option value="MathsChi">Maths Chinese</option>
                <option value="MathsFor">Maths Foreign</option>
                <option value="PhyChi">Physics Chiense</option>
                <option vlaue="PhyFor">Physics Foreign</option>
                <option value="ChemChi">Chemistry Chinese</option>
                <option value="ChemFor">Chemistry Foreign</option>
            </select></br>
            due:<input type="text" name="due"></br>
            description:<input type="text" name="des"></br>
            <input type="submit" name="submit">
        </form>
    </body>
</html>