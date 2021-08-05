<%-- 
    Document   : unosFilmaP
    Created on : Sep 7, 2020, 7:24:41 PM
    Author     : Korisnik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String str = (String) session.getAttribute("username");
%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
        <link rel="stylesheet" href="style/style.css">
        <title>Unos novog filma - Dashboard</title>

        <style>
            .form-group{
                opacity: 0.91;
                box-shadow: -1px 19px 41px -1px black;
            }
            .btn{
                width: 110px;
                text-align: center;
                padding: 10px;
                margin: 5px;
            }
            .btn:hover{
                color: black;
            }

            h5{

                color: red;
            }
            #forma{
                padding: 30px;
            }
            h2{
                font-weight: bold;
                color: black;
            }
            #forma{
                padding: 30px;
            }
            .btn-warning{
                color: white;
            }
            
            .form-control{
                margin: 5px 10px;
            }
        </style>

    <nav class="navbar navbar-expand-lg navbar-light bg-dark">
        <a style="color:white;" class="navbar-brand" href="admin.jsp">Dobrodosli - Dashboard</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <span class="navbar-text" style="color: white;">
                Ulogovani admin : <% out.print(str);%>                 
            </span>
        </div>
    </nav>
</head>
<body>

    <div style="margin-top: 100px;" class="form-group">
        <center>
            <form id="forma" action="FilmP" method="post">
                <h2 style="color:black;" >Unos novog filma</h2><br>
                <table>
                    <tr>
                        <td>Broj filma</td>
                        <td><input class="form-control" type="text" name="id"></td>
                    </tr>
                    <tr>
                        <td>Godina</td>
                        <td><input class="form-control" type="text" name="godina"></td>
                    </tr>
                    <tr>
                        <td>Naziv</td>
                        <td><input class="form-control" type="text" name="naziv"></td>
                    </tr>
                    <tr>
                        <td>Trajanje</td>
                        <td><input class="form-control" type="text" name="trajanje"></td>
                    </tr>
                    <tr>
                        <td>Opis</td>
                        <td><input class="form-control" type="text" name="opis"></td>
                    </tr>
                   <tr>
                            <td colspan="2" align="center"><br>
                                <input class="btn btn-info" type="submit" value="Unesi"</td>
                        <a class="btn btn-warning" href="admin.jsp">Nazad</a>
                        </tr>
                </table>
                
                <% String msg = (String) request.getAttribute("msg"); %>
                <%
                    if (msg != null) {%>
                    <br><h5><%= msg%></h5>
                <%} else { %>

                <%}
                %>
            </form>
        </center>
    </div>    
</body>
</html>