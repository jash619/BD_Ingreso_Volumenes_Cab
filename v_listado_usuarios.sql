CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `credicel_mysql_estudiantes_ago24`@`%` 
    SQL SECURITY DEFINER
VIEW `v_listado_usuarios` AS
    SELECT 
        `usuarios`.`documento_identidad` AS `Documento_Identidad`,
        `usuarios`.`nombres_usuario` AS `Nombre_y_Apellidos`,
        `usuarios`.`email_usuario` AS `Email`,
        `usuarios`.`login_usuario` AS `Login`
    FROM
        `usuarios`
    ORDER BY `usuarios`.`documento_identidad`