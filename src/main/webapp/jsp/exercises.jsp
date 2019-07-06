<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 02.07.19
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="headerAdmin.jsp"></jsp:include>
</head>
<body>
<form action="exercises" method="post">
    <center>
    <table>
        <tr>
            <td style="border: 1px solid">Id zadania</td>
            <td style="border: 1px solid">Tytuł zadania</td>
            <td style="border: 1px solid">Opis Zadania</td>
        </tr>
        <c:forEach items="${exercises}" var="exercise">
            <tr>
                <td style="border: 1px solid">${exercise.id}</td>
                <td style="border: 1px solid">${exercise.title}</td>
                <td style="border: 1px solid">${exercise.description}</td>
            </tr>
        </c:forEach>
    </table>

    <p>Edycja zadania:</p>

    <p>Id zadania</p>
    <input type="number" name="id">
    <p>Tytul zadania</p>
    <input type="text" name="title">
    <p>Opis zadania</p>
    <input type="text" name="description">
    <input type="submit" value="Edytuj">

    <p>Dodaj zadanie:</p>

    <p>Tytul zadania</p>
    <input type="text" name="newTitle">
    <p>Opis zadania</p>
    <input type="text" name="newDescription">
    <input type="submit" value="Dodaj">
    </center>
</form>
    <jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
