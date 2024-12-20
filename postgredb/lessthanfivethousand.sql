SELECT DISTINCT
    c.Codigo,
    c.NomApels
FROM CAJEROS c
JOIN VENTA v ON c.Codigo = v.Cajero
JOIN PRODUCTOS p ON v.Producto = p.Codigo
JOIN MAQUINAS_REGISTRADORAS m ON v.Maquina = m.Codigo
WHERE m.Piso IN (
    SELECT m2.Piso
    FROM VENTA v2
    JOIN PRODUCTOS p2 ON v2.Producto = p2.Codigo
    JOIN MAQUINAS_REGISTRADORAS m2 ON v2.Maquina = m2.Codigo
    GROUP BY m2.Piso
    HAVING SUM(p2.Precio) < 5000
);