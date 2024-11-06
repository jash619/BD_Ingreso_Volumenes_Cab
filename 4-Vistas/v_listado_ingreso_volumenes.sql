CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `credicel_mysql_estudiantes_ago24`@`%` 
    SQL SECURITY DEFINER
VIEW `v_listado_ingreso_volumenes` AS
    SELECT 
        `ingreso_volumenes`.`idingreso_volumen` AS `idingreso_volumen`,
        `productos`.`nombre_producto` AS `producto`,
        `ingreso_volumenes`.`cantidad_ingreso` AS `Cantidad`,
        `ingreso_volumenes`.`medida_volumen` AS `Tonelada`,
        `ingreso_volumenes`.`fecha_ingreso` AS `fecha_ingreso`,
        `municipios`.`municipio` AS `Procedencia`,
        `departamentos`.`departamento` AS `Departamento`
    FROM
        (((`ingreso_volumenes`
        JOIN `productos` ON (`ingreso_volumenes`.`producto_id` = `productos`.`id_producto`))
        JOIN `municipios` ON (`ingreso_volumenes`.`municipio_id` = `municipios`.`id_municipio`))
        JOIN `departamentos` ON (`municipios`.`departamento_id` = `departamentos`.`id_departamento`))