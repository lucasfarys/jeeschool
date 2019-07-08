<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 25.05.19
  Time: 15:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="header.jsp"></jsp:include>
</head>
<body>
<center>
    <H1> Ostatnie rozwiązania</H1>
    <table>
        <tr>
            <td style="border: 1px solid">Tytuł zadania</td>
            <td style="border: 1px solid">Autor zadania</td>
            <td style="border: 1px solid">Utworzono dnia</td>
            <td style="border: 1px solid">Szczegóły</td>
        </tr>
        <c:forEach items="${solutions}" var="solution">
        <tr>
            <td style="border: 1px solid">${solution.exerciseTitle}</td>
            <td style="border: 1px solid">${solution.exerciseAuthor}</td>
            <td style="border: 1px solid">${solution.created}</td>
            <td style="border: 1px solid"><a href="exerciseDetails?exercise_id=${solution.exercise_id}&user_id=${solution.user_id}">Szczegóły</a> </td>
        </tr>
    </c:forEach>
    </table>
    <%--<c:forEach items="${solutions}" var="solution">--%>
    <%--${solution.id}--%>
    <%--</c:forEach>--%>
    <jsp:include page="footer.jsp"></jsp:include>
</center>
</body>
</html>