<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 01.07.19
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="headerAdmin.jsp"></jsp:include>
</head>
<body>
<center>
<form action="groupUsersAdmin" method="post">
    <table class="tablex2">
        <tr>
            <td style="border: 1px solid">ID grupy</td>
            <td style="border: 1px solid">Nazwa grupy</td>
        </tr>
        <c:forEach items="${groups}" var="group">
            <tr>
                <td style="border: 1px solid">${group.id}</td>
                <td style="border: 1px solid">${group.name}</td>
            </tr>
        </c:forEach>
    </table>

    <p>Edycja grupy:</p>
    <p>ID grupy</p>
    <input type="number" name="id"><br>
    <p>nazwa grupy:</p>
    <input type="text" name="name">
    <input type="submit" value="Edytuj"><br>
    <p>Nowa grupa</p>
    <p>Podaj nazwę grupy</p><input type="text" name="newName">
    <input type="submit">

</form>
</center>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
