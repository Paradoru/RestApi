<!DOCTYPE html>
<html>
<head>
    <title>Товары</title>
</head>
<body>
<h1>Товары</h1><hr>
<h4>Список товаров</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> | Цена: ${product.price} руб. | Наличие: ${product.quantity} шт. | <a href="/products/${product.id}">Подробнее...</a></p>
    </div>
</#list>
<hr>
<h3>Добавить новый товар</h3>
<form action="/products/create" method="post">
    Название товара: <input type="text" name="title"/><br><br>
    Описание товара: <input type="text" name="description"/><br><br>
    Цена: <input type="number" name="price"/><br><br>
    Количество: <input type="number" name="quantity"/><br><br>
    <input type="submit" value="Добавить товар"/>
</form>
</body>
</html>
