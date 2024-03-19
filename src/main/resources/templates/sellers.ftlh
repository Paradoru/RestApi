<!DOCTYPE html>
<html>
<head>
    <title>Продавцы</title>
</head>
<body>
<h1>Продавцы</h1><hr>
<h4>Список продавцов</h4>
<#list sellers as seller>
    <div>
        <p><b>Имя:</b> ${seller.first_name} ${seller.last_name} | <b>Телефон:</b> ${seller.phone_number} | <b>Email:</b> ${seller.email}</p>
    </div>
</#list>
<hr>
<h3>Добавить нового продавца</h3>
<form action="/sellers/create" method="post">
    Имя: <input type="text" name="first_name"/><br><br>
    Фамилия: <input type="text" name="last_name"/><br><br>
    Телефон: <input type="text" name="phone_number"/><br><br>
    Email: <input type="email" name="email"/><br><br>
    <input type="submit" value="Добавить продавца"/>
</form>
</body>
</html>
