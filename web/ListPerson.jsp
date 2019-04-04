

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Liste des personnes</title>
    </head>
    <body><center>

            <h1><u>Liste des personnes actuellement en base de données :</u></h1></br></br>
    
<table id="personListTable" border="3" width="600px" >
<tr >
    <th bgcolor="lightgrey">ID</th>
    <th bgcolor="lightgrey">Prénom</th>
    <th bgcolor="lightgrey">Nom</th>
    <th bgcolor="lightgrey">Action</th>
</tr>
<c:forEach var="person" begin="0" items="${requestScope.personList}">
<tr>
    <td bgcolor="pink">${person.id}&nbsp;&nbsp;</td> 
    <td bgcolor="lightgreen">${person.firstName}&nbsp;&nbsp;</td> 
    <td bgcolor="lightyellow">${person.lastName}&nbsp;&nbsp;</td> 
    <td bgcolor="lightblue" >
        <a href="Consultation.jsp?id=${person.id}&prenom=${person.firstName}&nom=${person.lastName}" style="text-decoration:none">Consulter</a> </br> 
        <a style="text-decoration : none" href="Modification.jsp?id=${person.id}&prenom=${person.firstName}&nom=${person.lastName}">Editer</a> </br> 
        <a style="text-decoration : none" href="SuppressionServlet?id=${person.id}">Supprimer</a>
    </td>
</tr> 

</c:forEach>

</table></br></br>
<a href="CreatePerson.jsp"><strong>Creer une nouvelle personne</strong></a>
</center>
</body>
</html>
