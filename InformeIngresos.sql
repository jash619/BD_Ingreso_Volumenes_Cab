CREATE DEFINER=`credicel_mysql_estudiantes_ago24`@`%` PROCEDURE `InformeIngresos`(IN fecha_inicio DATE, IN fecha_final DATE)
BEGIN
    SELECT 
        productos.nombre_producto AS Producto,
        SUM(cantidad_ingreso) AS Volumenes_Totales,
        medida_volumen,
        COUNT(*) AS Total_Vehiculos_Ingresados,
        ingreso_volumenes.fecha_ingreso AS Fecha_Ingreso,
        municipios.municipio AS Procedencia,
        departamentos.departamento AS Departamento
    FROM 
        ingreso_volumenes
    JOIN 
        productos ON ingreso_volumenes.producto_id = productos.id_producto
    JOIN 
        municipios ON ingreso_volumenes.municipio_id = municipios.id_municipio
    JOIN 
        departamentos ON municipios.departamento_id = departamentos.id_departamento
    WHERE 
        ingreso_volumenes.fecha_ingreso BETWEEN fecha_inicio AND fecha_final  
    GROUP BY 
        productos.id_producto  
    ORDER BY 
        Volumenes_Totales DESC;

END