<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 01.07.19
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="headerAdmin.jsp"></jsp:include>
</head>
<body>
<center>
<form action="users" method="post">
    <table>
        <tr>
            <td style="border: 1px solid">Id Użytkownika</td>
            <td style="border: 1px solid">Username</td>
        </tr>
        <c:forEach items="${users}" var="user">
            <tr>
                <td style="border: 1px solid">${user.id}</td>
                <td style="border: 1px solid">${user.userName}</td>
            </tr>
        </c:forEach>
    </table>
    <p>Edycja Użytkownika:</p>

    <p>Podaj id Użytkownika</p>
    <input type="number" name="id">
    <p>Podaj username Użytkownika</p>
    <input type="text" name="userName">
    <p>Podaj email Użytkownika</p>
    <input type="text" name="email">
    <p>Podaj hasło</p>
    <input type="text" name="password">
    <input type="submit" value="Edytuj">

    <p>Dodaj Użytkownika</p>

    <p>Podaj username Użytkownika</p>
    <input type="text" name="newUserName">
    <p>Podaj email Użytkownika</p>
    <input type="text" name="newEmail">
    <p>Podaj hasło</p>
    <input type="text" name="newPassword">
    <input type="submit" value="Dodaj">
</form>
    <jsp:include page="footer.jsp"></jsp:include>
</center>
</body>
</html>
