<!DOCTYPE html>
<html>
<head>
    <title>Покупатели</title>
</head>
<body>
<h1>Покупатели</h1><hr>
<h4>Список покупателей</h4>
<#list buyers as buyer>
    <div>
        <p><b>${buyer.first_name} ${buyer.last_name}</b> | Телефон: ${buyer.phone_number} | <a href="/buyers/${buyer.id}">Подробнее...</a></p>
    </div>
</#list>
<hr>
<h3>Добавить нового покупателя</h3>
<form action="/buyers/create" method="post">
    Имя: <input type="text" name="first_name"/><br><br>
    Фамилия: <input type="text" name="last_name"/><br><br>
    Телефон: <input type="text" name="phone_number"/><br><br>
    Email: <input type="text" name="email"/><br><br>
    <input type="submit" value="Добавить покупателя"/>
</form>
</body>
</html>
