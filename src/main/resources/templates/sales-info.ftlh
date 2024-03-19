<!DOCTYPE html>
<html>
<head>
    <title>Информация о продаже</title>
</head>
<body>
<h1>Информация о продаже</h1><hr>
<b>Продукт:</b> ${sale.product}<br>
<b>Покупатель:</b> ${sale.buyers_id}<br>
<b>Продавец:</b> ${sale.sellers_id}<br>
<b>Дата продажи:</b> ${sale.date_sell?string("yyyy-MM-dd HH:mm:ss")}<br>
<b>Количество:</b> ${sale.quantity_sell}<br>
<b>Цена:</b> ${sale.price} руб.<br>
<hr>
<form action="/sales/delete/${sale.id}" method="post">
    <input type="submit" value="Удалить продажу"/>
</form>
</body>
</html>
