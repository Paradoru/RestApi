<!DOCTYPE html>
<html>
<head>
    <title>Продажи</title>
</head>
<body>
<h1>Продажи</h1><hr>
<h4>Список продаж</h4>
<#list sales as sale>
    <div>
        <p><b>Продукт:</b> ${sale.product} | <b>Покупатель:</b> ${sale.buyers_id} | <b>Продавец:</b> ${sale.sellers_id} | <b>Дата продажи:</b> ${sale.date_sell?string("yyyy-MM-dd HH:mm:ss")} | <b>Количество:</b> ${sale.quantity_sell} | <b>Цена:</b> ${sale.price} руб.</p>
    </div>
</#list>
<hr>
<h3>Добавить новую продажу</h3>
<form action="/sales/create" method="post">
    Продукт: <input type="text" name="product"/><br><br>
    Покупатель: <input type="text" name="buyer"/><br><br>
    Продавец: <input type="text" name="seller"/><br><br>
    Дата продажи: <input type="datetime-local" name="date_sell"/><br><br>
    Количество: <input type="number" name="quantity_sell"/><br><br>
    Цена: <input type="number" name="price"/><br><br>
    <input type="submit" value="Добавить продажу"/>
</form>
</body>
</html>
