CREATE DEFINER=`credicel_mysql_estudiantes_ago24`@`%` PROCEDURE `ProductosConMenorIngreso`(
    IN fecha_inicio DATE,
    IN fecha_fin DATE
)
BEGIN
    SELECT 
        p.nombre_producto AS Producto,
        cp.nombre_categoria_producto AS Categoria,
        m.municipio AS Municipio,
        SUM(iv.cantidad_ingreso) AS Total_Ingresado
    FROM
        ingreso_volumenes AS iv
    JOIN
        productos AS p ON iv.producto_id = p.id_producto
    JOIN
        categoria_productos AS cp ON p.categoria_producto_id = cp.idcategoria_producto
    JOIN
        municipios AS m ON iv.municipio_id = m.id_municipio
    WHERE 
        iv.fecha_ingreso BETWEEN fecha_inicio AND fecha_fin
    GROUP BY 
        p.nombre_producto, cp.nombre_categoria_producto, m.municipio
    ORDER BY 
        Total_Ingresado ASC
    LIMIT 5;
END