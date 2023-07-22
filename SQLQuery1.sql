SELECT p.name, pr.name
FROM Magazin.dbo.Product p RIGHT JOIN Magazin.dbo.Producer pr ON p.id_producer = pr.id

SELECT p.name, d.date_of_delivery, s.name
FROM Magazin.dbo.Product p JOIN Magazin.dbo.Delivery d ON p.id = d.id_product
RIGHT JOIN Magazin.dbo.Suplier s ON s.id = d.id_suplier

SELECT c.name
FROM Magazin.dbo.Product p JOIN Magazin.dbo.Category c ON p.id_category = c.id
EXCEPT
SELECT c.name
FROM Magazin.dbo.Product p JOIN Magazin.dbo.Category c ON p.id_category = c.id
JOIN Magazin.dbo.Producer pr ON p.id_producer = pr.id
WHERE pr.name = 'ООО "Нли ю"'

SELECT pr.name
FROM Magazin.dbo.Product p JOIN Magazin.dbo.Producer pr ON p.id_producer = pr.id
EXCEPT
SELECT pr.name
FROM Magazin.dbo.Product p JOIN Magazin.dbo.Producer pr ON p.id_producer = pr.id
JOIN Magazin.dbo.Category c ON p.id_category = c.id
WHERE c.name = 'Молочные продукты'