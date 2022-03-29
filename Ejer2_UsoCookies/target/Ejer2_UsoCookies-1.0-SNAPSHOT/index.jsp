<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.ejer2_usocookies.Tarea"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("Tareas") == null)
    {
        ArrayList<Tarea> lisTareas = new ArrayList<Tarea>();
        session.setAttribute("Tareas", lisTareas);
    }
    ArrayList<Tarea> tareas = (ArrayList<Tarea>)session.getAttribute("Tareas");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <body>
        <div class="container">
                    <h1>Tareas pendientes</h1>
        <a href="ServletTarea?op=nuevo">Nueva Tarea</a>
        <br><br>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Completado</th>
                <th></th>
            </tr>
            <%
                if(tareas !=null)
                {
                    for(Tarea T : tareas){
             
            %>
            <tr>
                <td><%=T.getId() %></td>
                <td><%=T.getDescripcion()%></td>
                <td><input type="checkbox"></td>
                <td><button><a href="ServletTarea?op=eliminar&id=<%=T.getId()%>">Eliminar</a></button></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
        </div>
    </body>
</html>
