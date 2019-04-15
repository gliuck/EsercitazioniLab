<%-- 
    Document   : registrazione
    Created on : 15-apr-2019, 9.01.07
    Author     : Luca Lussu
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- aggiungo questa libreria -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
	<head>
		<title>Sign up</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="Laerte Frongia">
        <meta name="keywords" content="FPW, Progetto, HTML, CSS, Java">
        <meta name="description" content="Pagina di registrazione delle esercitazioni di FPW">
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
	</head>
    <body>
        <!--Includere header qui  -->
        <jsp:include page="header.jsp" />
        <!--Includere nav qui  -->
        <jsp:include  page="nav.jsp"/>
        
        <div id="main_content"> <!-- questo div contiene gli articoli, e voglio usare slide 75-->
        <aside>
            <div>
                <ol>
                    <li>Articolo 1</li>
                    <li>Articolo 2</li>
                    <li>Articolo 3</li>
                    <li>Articolo 4</li>
                </ol> 
            </div> 
        </aside>
        
        <main>
            <form action="registrazione" method="post"> <!--devo far arrivare la richiesta form alla SERVLET!!!
                per adesso la richiesta arriva in index.html, è lui che gestisce questa richiesta, dobbiamo mandarlo
                a qualcosa si aprire la richiesta hhtp, cambio index.html, con "registrazione" -->
                
                
                <!--  jstl, condizione a un pezzo html, voglio nella pagina registrazione.jsp, se vi arrivo premendo submit,
                 voglio arrivarci submit,la tag if prende l' attributo test., quindi se test è true, allora 
                   il parametro c'è (il nostro paramentro è username, e voglio controllare se cè)
                -->
                
                <c:if  test="${param[\"userName\"] != null } "> <!--attenzioni doppi apici, non va bene devo mettere
                    \  \ per risolvere e far capire al programma che è roba interna-->
                    
                    <!-- -->
                    
                    <p>Lo username inserito è  ${param["userName"]} </p>
                                                 
                                                 
                </c:if>
                
                
                <label class="importante" for="id_nomeutente">Nome: </label>
                <input type="text" name="nomeUtente" id="id_nomeutente" value="Mario Rossi"/>
                
                <br/>
                
                <label for="id_username">Username: </label>
                <input type="text" name="userName" id="id_username" value="username"/>
                
                <br/> 
                
                <label for="id_password">Password: </label>
                <input type="password" name="password" id="id_password" value="oscurato"/>
                <br/>

                <label for="scrittore">Scrittore: </label>
                <input type="radio" name="tipo_utente" id="scrittore" value="scrittore">
                
                <br/>
                
                <label for="autore">Autore: </label>
                <input type="radio" name="tipo_utente" id="autore" value="autore">
                
                <p class="importante">Colore preferito</p>
                <select size="5" multiple>
                    <option value="red">Rosso</option>
                    <option value="white">Bianco</option>
                    <option value="grey">Grigio</option>
                    <option value="yellow">Giallo</option>
                    <option value="green">Verde</option>
                </select>
                <br/>
                <input type="submit" value="Submit"/>
            </form>
        </main>
        </div>
        <footer>
            <p>Developed by Luca Lussu</p>
        </footer>
    </body>
</html>

<!--float = attaccare ad esempio  tutto a sx -->