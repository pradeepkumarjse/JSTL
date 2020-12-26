<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Example</title>
    </head>
    <body>
        <h1>This is Example page of jstl</h1>

        <!--1. our tag-->
        <!--2.set tag-->

        <c:set var="i" value="29" scope="application"> </c:set>

            <h1> <c:out value="${i}"> </c:out> </h1>

            <!--3. remove tag-->
        <%--<c:remove var="i"></c:remove>--%>

        <h1><c:out value="${i}">this is default value...</c:out></h1>

            <hr>
            <!--4. if : condition   true=> print....-->
        <c:if test="${i==29}">
            <h1>yes i is equal to 29 and condition is true....</h1>
        </c:if>


        <!--5. choose, when, otherwise  : java switch-->

        <c:choose>
            <c:when test="${i>0}">
                <h1>This is my first case....</h1> 
                <h1>this is positive value..</h1>
            </c:when>

            <c:when test="${i<0}">
                <h1>This is my second case..</h1>
                <h1>this is negative value...</h1>
            </c:when>

            <c:otherwise>
                <h1>this is default case..</h1>

                <h1>zero value found...</h1>
            </c:otherwise>


        </c:choose>

        <hr>



        <!--6. forEach for repeating and traversing--> 
        <c:forEach var="j" begin="1" end="10">
            <h1>value of j is <c:out value="${j}"></c:out></h1>
        </c:forEach>
            
            
            <!--7. re-direct-->
        <%--<c:redirect url="https://www.google.com"></c:redirect>--%>
        
        
        
        <!--8. url,param-->
        <c:url var="myurl" value="https://www.google.com/search">
            <c:param name="q" value="learn code "></c:param>
        </c:url>
        <h1><c:out value="${myurl}"></c:out></h1>
        
        
        <%--<c:redirect url="${myurl}"> </c:redirect>--%>



    </body>
</html>
