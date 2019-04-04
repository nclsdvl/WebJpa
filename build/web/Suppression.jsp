<%-- 
    Document   : suppression
    Created on : 5 mars 2019, 16:32:15
    Author     : Utilisateur
--%>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>Donnée supprimée!!!</h1>
        
        <h2>Vous allez être redirigé à l'acceuil dans </h2> <strong id="count"></strong><br/>
            
        
        
        
        </center>
        <script>
            let monCount = document.getElementById("count");
            let count = 3;
            console.log('count en entrée js = '+count);
            window.onload = decompte;
            
            
            function decompte(){


                monCount.style.fontSize = "40px";
                monCount.style.color = "red";
                monCount.innerHTML="yyyyyyyyy";
                
               
               function decrementCount(){
                    monCount.innerHTML = count;
                    count--;
                    if (count>=0){
                        setTimeout(decrementCount,1000);
                    }
                    else {
                        document.location.href="./";
                    }
               }
               
               decrementCount();
               
              }  
//                
//                
//                    console.log('count entreé dans fonction = '+count);
//                    setTimeout( function(){
//                        if (count>=0){
//                        console.log('count entreé dans setTimeout = '+count);
//                        monCount.innerHTML = count;
//                        count--;}
//                        else{
//                            //document.location.href="WebJpa/WebJpa"
//                        }
//                    }
//                    ,1000);
           
        
                

                    
                    

                  
                       
                

                
            
            
            
        </script>
    </body>
</html>
