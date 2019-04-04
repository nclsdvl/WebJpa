<%-- 
    Document   : Modification
    Created on : 4 mars 2019, 14:26:50
    Author     : Utilisateur
--%>
<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modification de ${param.prenom} ${param.nom}</title>
    </head>
    <body><center>
        
        <h1>Modification de ${param.prenom} ${param.nom}</h1></br>
        
        <form id="createPersonForm" action="Modification" method="post">
            <table id="personListTable" border="3" width="600px" >
                <tr>
                <th bgcolor="lightgrey">Prénom</th>
                    <th bgcolor="lightgrey">Nom</th>
                </center></tr>

                <tr>
                
                    <td bgcolor="lightgreen"><span>Nouveau prénom : </span><input placeholder="" name="prenom" id="inputPrenom"><br/><br/><span >Prénom actuel :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong id="prenom">${param.prenom}</strong></span></td>  
                    <td bgcolor="lightyellow"><span>Nouveau nom : </span><input placeholder="" name="nom" id="inputNom"><br><br/><span>Nom actuel :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong id="nom"> ${param.nom}</strong></span></td>
                  
                </tr> 
            </table></br></br>
            <input onclick="monCheckInput()" type="button" id="CreateRecord" value="Valider les modifications"><br/><br/><br/>
            <a href="ListPerson"><strong>Retour à la liste des personnes</strong></a>
        </form>
    </center>

                    <script>
                        
                        console.log("ya");

                            var inputPrenom = document.getElementById("inputPrenom");
                            let inputNom = document.getElementById("inputNom");
                            

                            let ancienPrenom = document.getElementById("prenom");
                            let ancienNom = document.getElementById("nom");
                        
                    
                        console.log(inputPrenom);
                        
                        function monCheckInput (){

                            event.preventDefault();

                            if (inputPrenom.value === ""){
                                inputPrenom.value = ancienPrenom.innerHTML;
                            }
                            
                            if (inputNom.value === ""){
                                inputNom.value = ancienNom.innerHTML;
                            }
                            
                            document.location.href="Modification?id=${param.id}&prenom="+inputPrenom.value+"&nom="+inputNom.value
                            
                        }
                        
                    
                    
                    </script>
</body>
</html>