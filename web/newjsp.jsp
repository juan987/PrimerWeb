<%-- 
    Document   : newjsp
    Created on : 12-ene-2018, 20:31:53
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean  id="bean"
              class="beans.PrimerBean"
              scope="page"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Primer JSP!</h1>
        <%=bean.getSaludo()%>
        
        <form>
            Nombre:
            <input type="text" name="nombre"/>
            <button type="submit">
                Enviar datos
            </button>
        </form>
        
        <%
            //CODIGO JAVA
        %>
    </body>
</html>
