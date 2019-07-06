<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 01.07.19
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="header.jsp"></jsp:include>
</head>
<body>
<center>
    <p>Id użytkownika: ${user.id}</p>
    <p>Użytkownik: ${user.userName}</p>
    <p>Email: ${user.email}</p>
    <table style="border-collapse: collapse">
        <tr>
            <td style="border: 1px solid">Nr zadania</td>
            <td style="border: 1px solid">Tytuł zadania</td>
            <td style="border: 1px solid">Opis zadania</td>
        </tr>
        <c:forEach items="${exercises}" var="exercise">
            <tr>
                <td style="border: 1px solid">${exercise.id}</td>
                <td style="border: 1px solid">${exercise.title}</td>
                <td style="border: 1px solid">${exercise.description}</td>
            </tr>
        </c:forEach>
    </table>
    <jsp:include page="footer.jsp"></jsp:include>
</center>
</body>
</html>
