<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <jsp:include page="header.jsp"></jsp:include>
</head>
<body>


<main role="main" class="container">

    <div class="starter-template">
        <br>
        <br>
        <br>
        <br>
        <br>
        <H1> Ostatnie rozwiązania </H1>
        <table border="1">
            <c:forEach items="${solutions}" var="solution">
            <tr>
                <td>${solution.exerciseTitle}</td>
                <td>${solution.exerciseAuthor}</td>
                <td>${solution.created}</td>
                <td><a href="exerciseDetails?exercise_id=${solution.exercise_id}&user_id=${solution.user_id}">Szczegóły</a> </td>
            </tr>
        </c:forEach>
        </table>
    </div>

</main><!-- /.container -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="/docs/4.3/assets/js/vendor/jquery-slim.min.js"><\/script>')</script><script src="/docs/4.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" crossorigin="anonymous"></script></body>
</html>
