CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `credicel_mysql_estudiantes_ago24`@`%` 
    SQL SECURITY DEFINER
VIEW `v_listado_vehiculos` AS
    SELECT 
        CONCAT('VEH-', `v`.`idvehiculo`) AS `Idv`,
        `v`.`placa_vehiculo` AS `Placa`
    FROM
        `vehiculos` `v`