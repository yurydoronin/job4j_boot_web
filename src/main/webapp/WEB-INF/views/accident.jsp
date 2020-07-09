<%@ page contentType="text/html;charset=UTF-8" %>
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
    <title>Edit accidents</title>
</head>
<body style="background-color:powderblue;">
<div class="container pt-3">
    <div class="row">
        <div class="card" style="width: 100%">
            <div class="card-header">
                <h4>Новое нарушение</h4>
            </div>
            <div class="card-body">
                <form action=${pageContext.servletContext.contextPath}/add.do method="post">
                    <div class="form-group">
                        <label>ID:</label>
                        <label>
                            <input type="text" class="form-control" name="id">
                        </label>
                        <label>Название:</label>
                        <label>
                            <input type="text" class="form-control" name="name">
                        </label>
                        <label>Текст:</label>
                        <label>
                            <input type="text" class="form-control" name="text">
                        </label>
                        <label>Адрес:</label>
                        <label>
                            <input type="text" class="form-control" name="address">
                        </label>
                    </div>
                    <button type="submit" class="btn btn-primary">Сохранить</button>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>
