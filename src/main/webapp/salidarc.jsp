<%@page import="com.emergentes.RegCalif"%>
<%
    RegCalif rc=(RegCalif)request.getAttribute("rcal");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>DATOS RECIBIDOS</h1>
        <fieldset>
        <table>
            <tr> <th>Nombre del Estudiante:</th> 
                 <th><%=rc.getNombre()%></th> 
            </tr>         
            <tr> <th>Materia:</th>
                <th><%=rc.getMateria() %></th>
            </tr>
            <tr> <th>Primer Parcial:</th> 
                <th><%=rc.getPrimero() %></th>
            </tr>
            <tr> <th>Segundo Parcial:</th> 
                <th><%=rc.getSegundo() %></th>
            </tr>
            <tr> <th>Examen Final</th> 
                <th><%=rc.getTercero() %></th>
            </tr>
            <tr> <th>TOTAL:</th> 
                <th><%=rc.getResultado() %></th>
            </tr>
            <tr> <th>Resultado:</th> 
                <th><%=rc.getResul() %></th>
            </tr>
        </table>
            <a href="index.jsp">Volver</a>
        </fieldset>
            <input type="submit" name="name">Enviar</input>
    </body>
</html>
