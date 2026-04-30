SELECT p.prod_name, o.qty
FROM Tbl_Products p
INNER JOIN Tbl_Orders o
ON p.prod_id = o.prod_id;
