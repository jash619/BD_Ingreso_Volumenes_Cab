CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `credicel_mysql_estudiantes_ago24`@`%` 
    SQL SECURITY DEFINER
VIEW `v_total_producto_ingresado_X_Dpto` AS
    SELECT 
        `d`.`departamento` AS `Departamento`,
        SUM(`iv`.`cantidad_ingreso`) AS `Total_Productos_Ingresados`
    FROM
        (((`ingreso_volumenes` `iv`
        JOIN `productos` `p` ON (`iv`.`producto_id` = `p`.`id_producto`))
        JOIN `municipios` `m` ON (`iv`.`municipio_id` = `m`.`id_municipio`))
        JOIN `departamentos` `d` ON (`m`.`departamento_id` = `d`.`id_departamento`))
    GROUP BY `d`.`departamento`
    ORDER BY SUM(`iv`.`cantidad_ingreso`) DESC