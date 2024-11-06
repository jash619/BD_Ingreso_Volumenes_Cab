CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `credicel_mysql_estudiantes_ago24`@`%` 
    SQL SECURITY DEFINER
VIEW `porcentaje_X_departamento` AS
    SELECT 
        `d`.`departamento` AS `Departamento`,
        SUM(`iv`.`cantidad_ingreso`) AS `Total_Ingresos_Departamento`,
        ROUND(SUM(`iv`.`cantidad_ingreso`) / (SELECT 
                        SUM(`iv2`.`cantidad_ingreso`)
                    FROM
                        `ingreso_volumenes` `iv2`) * 100,
                2) AS `Porcentaje_Departamental`
    FROM
        ((`ingreso_volumenes` `iv`
        JOIN `municipios` `m` ON (`iv`.`municipio_id` = `m`.`id_municipio`))
        JOIN `departamentos` `d` ON (`m`.`departamento_id` = `d`.`id_departamento`))
    GROUP BY `d`.`departamento`
    ORDER BY ROUND(SUM(`iv`.`cantidad_ingreso`) / (SELECT 
                    SUM(`iv2`.`cantidad_ingreso`)
                FROM
                    `ingreso_volumenes` `iv2`) * 100,
            2) DESC