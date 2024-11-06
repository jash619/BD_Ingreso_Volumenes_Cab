CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `credicel_mysql_estudiantes_ago24`@`%` 
    SQL SECURITY DEFINER
VIEW `v_listado_productos` AS
    SELECT 
        `productos`.`id_producto` AS `Codigo_Producto`,
        `productos`.`nombre_producto` AS `Producto`,
        `categoria_productos`.`nombre_categoria_producto` AS `Categoria_Producto`
    FROM
        (`productos`
        JOIN `categoria_productos` ON (`productos`.`categoria_producto_id` = `categoria_productos`.`idcategoria_producto`))
    ORDER BY `productos`.`nombre_producto`