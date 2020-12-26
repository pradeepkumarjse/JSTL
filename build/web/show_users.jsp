<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<div class="container">
        <h1>All users are: </h1>
        <sql:setDataSource  var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/youtube" user="root" password="Pradeep@1234"></sql:setDataSource>
        <sql:query dataSource="${ds}" var="rs">select * from user;</sql:query>
            
                <table class="table">
                    <tr>
                        <td>User Id</td>
                        <td>User Name</td>
                        <td>User Email</td>
                    </tr>

                <c:forEach items="${rs.rows}" var="row">

                    <tr>
                        <td><c:out value="${row.id}"></c:out></td>
                        <td><c:out value="${row.name}"></c:out></td>
                        <td><c:out value="${row.email}"></c:out></td>
                        </tr>

                </c:forEach>

            </table>
        </div>

    </body>
</html>
