<!DOCTYPE html>
<html>
<head>
    <title>Информация о продавце</title>
</head>
<body>
<h1>Информация о продавце</h1><hr>
<b>Имя:</b> ${seller.first_name} ${seller.last_name}<br>
<b>Телефон:</b> ${seller.phone_number}<br>
<b>Email:</b> ${seller.email}<br>
<hr>
<form action="/sellers/delete/${seller.id}" method="post">
    <input type="submit" value="Удалить продавца"/>
</form>
</body>
</html>
