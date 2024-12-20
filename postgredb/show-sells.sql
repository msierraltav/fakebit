SELECT p.Codigo, p.Nombre, COUNT(*) as NumeroVentas
FROM PRODUCTOS p
JOIN VENTA v ON p.Codigo = v.Producto
GROUP BY p.Codigo, p.Nombre
ORDER BY NumeroVentas DESC;