<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 01.07.19
  Time: 00:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="header.jsp"></jsp:include>
</head>
<body>
<center>
    <table>
        <c:forEach items="${groups}" var="group">
        <tr>
            <td style="border: 1px solid">${group.name}</td>
            <td style="border: 1px solid"><a href="groupUsers?id=${group.id}">Wyświetl Grupę</a> </td>
        </tr>
        </c:forEach>

    </table>
</center>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
