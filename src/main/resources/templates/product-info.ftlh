<!DOCTYPE html>
<html>
<head>
    <title>Информация о товаре</title>
</head>
<body>
<h1>Информация о товаре</h1><hr>
<b>Название товара: </b>${product.title}<br>
<b>Описание товара: </b>${product.description}<br>
<b>Цена: </b>${product.price} руб.<br>
<b>Количество: </b>${product.quantity} шт.<br>
<hr>
<form action="/products/delete/${product.id}" method="post">
    <input type="submit" value="Удалить товар"/>
</form>
</body>
</html>
