<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 30.06.19
  Time: 19:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="header.jsp"></jsp:include>
</head>
<body>
<center>
    <p>ID zadania: ${exercise.id}</p>
    <p>Tytuł zadania: ${exercise.title}</p>
    <p>Opis Zadania: ${exercise.description}</p>

    <jsp:include page="footer.jsp"></jsp:include>
</center>
</body>
</html>
