
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create a Person Record</title>
    </head>
    <body><center>

    <h1>Create a Person record</h1>
    <form id="createPersonForm" action="CreatePerson" method="post">
    <table>
        <tr><td>FirstName : </td><td><input type="text" id = "firstName" name="firstName" /></td></tr>
        <tr><td>LastName : </td><td><input type="text" id = "lastName" name="lastName" /></td></tr>
    </table><br/><br/>
        <p><strong>Veuillez choisir les technologie de la personne :</strong></p>

    <input type="checkbox" id="js"
     name="techno1" value="js">
    <label for="technoChoice1">Javascript</label><br/>

    <input type="checkbox" id="java"
     name="techno" value="java">
    <label for="technoChoice2">Java</label><br/>

    <input type="checkbox" id="PHP"
     name="techno" value="PHP">
    <label for="technoChoice3">PHP</label><br/>
    
     <input type="checkbox" id="Python"
     name="techno" value="Python">
    <label for="technoChoice4">Python</label><br/>   

        
        <br/><br/><br/>
    <input type="submit" id="CreateRecord" value="CreateRecord" />
    </form><br/>
<a href="ListPerson"><strong>Go to List of persons</strong></a>
        </center></body>
</html>
