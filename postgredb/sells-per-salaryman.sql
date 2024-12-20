SELECT 
    c.Codigo,
    c.NomApels,
    SUM(p.Precio) as ImporteTotal
FROM CAJEROS c
JOIN VENTA v ON c.Codigo = v.Cajero
JOIN PRODUCTOS p ON v.Producto = p.Codigo
GROUP BY c.Codigo, c.NomApels;