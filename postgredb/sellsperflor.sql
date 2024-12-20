SELECT 
    m.Piso,
    COUNT(*) as NumeroVentas,
    SUM(p.Precio) as TotalVentas
FROM VENTA v
JOIN MAQUINAS_REGISTRADORAS m ON v.Maquina = m.Codigo
JOIN PRODUCTOS p ON v.Producto = p.Codigo
GROUP BY m.Piso;