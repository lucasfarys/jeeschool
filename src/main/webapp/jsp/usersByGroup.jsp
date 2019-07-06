<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 01.07.19
  Time: 20:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="header.jsp"></jsp:include>
</head>
<body>
<center>
    <table style="border-collapse: collapse">
        <tr>
            <td style="border: 1px solid">Id</td>
            <td style="border: 1px solid">username</td>
            <td style="border: 1px solid">Szczegóły</td>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td style="border: 1px solid">${user.id}</td>
                <td style="border: 1px solid">${user.userName}</td>
                <td style="border: 1px solid"><a href="userDetails?id=${user.id}">Szczegóły</a> </td>
            </tr>

        </c:forEach>

    </table>
    <jsp:include page="footer.jsp"></jsp:include>
</center>
</body>
</html>
