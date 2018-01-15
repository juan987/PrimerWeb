<%-- 
    Document   : webmultiplicar
    Created on : 15-ene-2018, 17:13:10
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="beans.BeanMultiplicar"
             id="multi"
             scope="page"/>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tabla de Multiplicar!</h1>
        <form>
            <label>Introduzca un número</label> 
            <input type='text' name='txtnumero'/>
            <button type='submit'>
                Mostrar tabla
            </button>
        </form>
        <%
            String dato = request.getParameter("txtnumero");
            if (dato != null){
                int numero = Integer.parseInt(dato);
                %>
                <%=multi.mostrarTabla(numero)%>
                <%
            }
        %>

    </body>
</html>
