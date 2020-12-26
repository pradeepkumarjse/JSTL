<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1>this page is about jstl functions tag</h1
        <!--jstl functions mainly used to manipulate the strings-->
        <c:set var="name" value="PRADEEP KUMAR"></c:set>
        <c:out value="${name}"></c:out>

            <h1>Length of name is : <c:out value="${fn:length(name)}"></c:out></h1>

        <c:out value="${fn:toLowerCase(name)}"></c:out>

    </body>
</html>
