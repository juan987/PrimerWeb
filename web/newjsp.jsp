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
        <a href="newjsp.jsp?nombre=Soy un GET">
           Peticion GET
        </a>
        <br>
        <%=bean.getSaludo()%>
        
        <form method="post">
            Nombre:
            <input type="text" name="nombre"/>
            <button type="submit">
                Enviar datos
            </button>
        </form>
        
        <%
            //CODIGO JAVA
            //PARA RECUPERAR DATOS DE LOS FORMULARIOS
            //UTILIZAMOS request.getParamenter("NAME")
            //el request es un formulario de la pagina, el parametro es el
            //elemento del form
            String nombre = request.getParameter("nombre");
            //Siempre debemos capturar la peticion
            String peticion = request.getMethod();
            //DEBEMOS SIEMPRE COMPROBAR EL TIPO
            //DE PETICION EN FORMULARIOS
            if (peticion.equalsIgnoreCase("GET") 
                    && nombre != null){
                //SI ESTAMOS RECIBIENDO UN VALOR
                //Y NO ES POR FORMULARIO
                response.sendRedirect("SinPeticion.jsp");
            }

            //Debemos comprobar si se ha enviado un dato
            //para hacer la peticion al bean
            if(nombre != null){
                //Aqui ha pulsado el submit, lo ha recibido el bean
                %>
                <h1>
                    <%=bean.mostrarNombre(nombre)%>
                </h1>
                <%
            }
            
        %>
        
    </body>
</html>
