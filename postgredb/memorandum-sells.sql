SELECT 
    c.NomApels as Cajero,
    p.Nombre as Producto,
    p.Precio,
    m.Piso
FROM VENTA v
JOIN CAJEROS c ON v.Cajero = c.Codigo
JOIN PRODUCTOS p ON v.Producto = p.Codigo
JOIN MAQUINAS_REGISTRADORAS m ON v.Maquina = m.Codigo;