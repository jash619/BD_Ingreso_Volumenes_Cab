CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `credicel_mysql_estudiantes_ago24`@`%` 
    SQL SECURITY DEFINER
VIEW `v_Resumen_Mensual_de_Ingresos` AS
    SELECT 
        MONTH(`iv`.`fecha_ingreso`) AS `Mes`,
        `cp`.`nombre_categoria_producto` AS `Categoria`,
        SUM(`iv`.`cantidad_ingreso`) AS `Total_Productos_Ingresados`
    FROM
        ((`ingreso_volumenes` `iv`
        JOIN `productos` `p` ON (`iv`.`producto_id` = `p`.`id_producto`))
        JOIN `categoria_productos` `cp` ON (`p`.`categoria_producto_id` = `cp`.`idcategoria_producto`))
    GROUP BY MONTH(`iv`.`fecha_ingreso`) , `cp`.`nombre_categoria_producto`
    ORDER BY MONTH(`iv`.`fecha_ingreso`) , SUM(`iv`.`cantidad_ingreso`) DESC