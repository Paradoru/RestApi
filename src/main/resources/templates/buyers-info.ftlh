<!DOCTYPE html>
<html>
<head>
    <title>Информация о покупателе</title>
</head>
<body>
<h1>Информация о покупателе</h1><hr>
<b>Имя покупателя: </b>${buyer.first_name}<br>
<b>Фамилия покупателя: </b>${buyer.last_name}<br>
<b>Телефон: </b>${buyer.phone_number}<br>
<b>Email: </b>${buyer.email}<br>
<hr>
<form action="/buyers/delete/${buyer.id}" method="post">
    <input type="submit" value="Удалить покупателя"/>
</form>
</body>
</html>
