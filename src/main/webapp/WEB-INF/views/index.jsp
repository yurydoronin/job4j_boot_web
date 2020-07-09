<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"
            integrity="sha384-vk5WoKIaW/vJyUAd9n/wmopsmNhiy+L2Z+SBxGYnUkunIxVxAv/UtMOhba/xskxh"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
            crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>
    <style>
        table, th, td {
            border: 1px solid lightgray;
            border-collapse: collapse;
        }

        th, td {
            padding: 5px;
        }
    </style>
    <title>Accidents</title>
</head>
<body style="background-color:powderblue;">
<div class="container pt-3">
    <div class="row">
        <div class="card" style="width: 100%">
            <div class="card-header">
                <h4>Правонарушения</h4>
            </div>
            <div class="card-body">
                <table class="table">
                    <tbody>
                    <c:forEach items="${accidents}" var="accident">
                        <tr>
                            <td>${accident.id}</td>
                            <td>
                                <a href="<c:url value='/edit.do?id=${accident.id}'/>">
                                        ${accident.name}
                                </a>
                            </td>
                            <td>${accident.text}</td>
                            <td>${accident.address}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <form action="${pageContext.servletContext.contextPath}/accident.do">
                <button type="submit" class="btn btn-primary">Добавить нарушение</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
