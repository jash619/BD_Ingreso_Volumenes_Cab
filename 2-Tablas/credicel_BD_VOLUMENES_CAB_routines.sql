CREATE DATABASE  IF NOT EXISTS `credicel_BD_VOLUMENES_CAB` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_spanish_ci */;
USE `credicel_BD_VOLUMENES_CAB`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 190.90.160.172    Database: credicel_BD_VOLUMENES_CAB
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.19-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `v_total_producto_y_vehiculos`
--

DROP TABLE IF EXISTS `v_total_producto_y_vehiculos`;
/*!50001 DROP VIEW IF EXISTS `v_total_producto_y_vehiculos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_total_producto_y_vehiculos` AS SELECT 
 1 AS `Departamento`,
 1 AS `Municipio`,
 1 AS `Total_Productos`,
 1 AS `Vehiculos_Ingresados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_listado_ingreso_volumenes`
--

DROP TABLE IF EXISTS `v_listado_ingreso_volumenes`;
/*!50001 DROP VIEW IF EXISTS `v_listado_ingreso_volumenes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_listado_ingreso_volumenes` AS SELECT 
 1 AS `idingreso_volumen`,
 1 AS `producto`,
 1 AS `Cantidad`,
 1 AS `Tonelada`,
 1 AS `fecha_ingreso`,
 1 AS `Procedencia`,
 1 AS `Departamento`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_listado_productos`
--

DROP TABLE IF EXISTS `v_listado_productos`;
/*!50001 DROP VIEW IF EXISTS `v_listado_productos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_listado_productos` AS SELECT 
 1 AS `Codigo_Producto`,
 1 AS `Producto`,
 1 AS `Categoria_Producto`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `porcentaje_X_productos_X_Dpto`
--

DROP TABLE IF EXISTS `porcentaje_X_productos_X_Dpto`;
/*!50001 DROP VIEW IF EXISTS `porcentaje_X_productos_X_Dpto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `porcentaje_X_productos_X_Dpto` AS SELECT 
 1 AS `Departamento`,
 1 AS `Producto`,
 1 AS `Total_Ingresos_Departamento`,
 1 AS `Porcentaje_Departamental`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_listado_usuarios`
--

DROP TABLE IF EXISTS `v_listado_usuarios`;
/*!50001 DROP VIEW IF EXISTS `v_listado_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_listado_usuarios` AS SELECT 
 1 AS `Documento_Identidad`,
 1 AS `Nombre_y_Apellidos`,
 1 AS `Email`,
 1 AS `Login`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_listado_vehiculos`
--

DROP TABLE IF EXISTS `v_listado_vehiculos`;
/*!50001 DROP VIEW IF EXISTS `v_listado_vehiculos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_listado_vehiculos` AS SELECT 
 1 AS `Idv`,
 1 AS `Placa`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_total_producto_ingresado_X_Dpto`
--

DROP TABLE IF EXISTS `v_total_producto_ingresado_X_Dpto`;
/*!50001 DROP VIEW IF EXISTS `v_total_producto_ingresado_X_Dpto`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_total_producto_ingresado_X_Dpto` AS SELECT 
 1 AS `Departamento`,
 1 AS `Total_Productos_Ingresados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_Resumen_Mensual_de_Ingresos`
--

DROP TABLE IF EXISTS `v_Resumen_Mensual_de_Ingresos`;
/*!50001 DROP VIEW IF EXISTS `v_Resumen_Mensual_de_Ingresos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_Resumen_Mensual_de_Ingresos` AS SELECT 
 1 AS `Mes`,
 1 AS `Categoria`,
 1 AS `Total_Productos_Ingresados`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `porcentaje_X_departamento`
--

DROP TABLE IF EXISTS `porcentaje_X_departamento`;
/*!50001 DROP VIEW IF EXISTS `porcentaje_X_departamento`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `porcentaje_X_departamento` AS SELECT 
 1 AS `Departamento`,
 1 AS `Total_Ingresos_Departamento`,
 1 AS `Porcentaje_Departamental`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_total_producto_y_vehiculos`
--

/*!50001 DROP VIEW IF EXISTS `v_total_producto_y_vehiculos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`credicel_mysql_estudiantes_ago24`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_total_producto_y_vehiculos` AS select `d`.`departamento` AS `Departamento`,`m`.`municipio` AS `Municipio`,sum(`iv`.`cantidad_ingreso`) AS `Total_Productos`,count(distinct `iv`.`vehiculo_id`) AS `Vehiculos_Ingresados` from (((`ingreso_volumenes` `iv` join `productos` `p` on(`iv`.`producto_id` = `p`.`id_producto`)) join `municipios` `m` on(`iv`.`municipio_id` = `m`.`id_municipio`)) join `departamentos` `d` on(`m`.`departamento_id` = `d`.`id_departamento`)) group by `d`.`departamento`,`m`.`municipio` order by sum(`iv`.`cantidad_ingreso`) desc,`m`.`municipio` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_listado_ingreso_volumenes`
--

/*!50001 DROP VIEW IF EXISTS `v_listado_ingreso_volumenes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`credicel_mysql_estudiantes_ago24`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_listado_ingreso_volumenes` AS select `ingreso_volumenes`.`idingreso_volumen` AS `idingreso_volumen`,`productos`.`nombre_producto` AS `producto`,`ingreso_volumenes`.`cantidad_ingreso` AS `Cantidad`,`ingreso_volumenes`.`medida_volumen` AS `Tonelada`,`ingreso_volumenes`.`fecha_ingreso` AS `fecha_ingreso`,`municipios`.`municipio` AS `Procedencia`,`departamentos`.`departamento` AS `Departamento` from (((`ingreso_volumenes` join `productos` on(`ingreso_volumenes`.`producto_id` = `productos`.`id_producto`)) join `municipios` on(`ingreso_volumenes`.`municipio_id` = `municipios`.`id_municipio`)) join `departamentos` on(`municipios`.`departamento_id` = `departamentos`.`id_departamento`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_listado_productos`
--

/*!50001 DROP VIEW IF EXISTS `v_listado_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`credicel_mysql_estudiantes_ago24`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_listado_productos` AS select `productos`.`id_producto` AS `Codigo_Producto`,`productos`.`nombre_producto` AS `Producto`,`categoria_productos`.`nombre_categoria_producto` AS `Categoria_Producto` from (`productos` join `categoria_productos` on(`productos`.`categoria_producto_id` = `categoria_productos`.`idcategoria_producto`)) order by `productos`.`nombre_producto` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `porcentaje_X_productos_X_Dpto`
--

/*!50001 DROP VIEW IF EXISTS `porcentaje_X_productos_X_Dpto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`credicel_mysql_estudiantes_ago24`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `porcentaje_X_productos_X_Dpto` AS select `d`.`departamento` AS `Departamento`,`p`.`nombre_producto` AS `Producto`,sum(`iv`.`cantidad_ingreso`) AS `Total_Ingresos_Departamento`,round(sum(`iv`.`cantidad_ingreso`) / (select sum(`iv2`.`cantidad_ingreso`) from `ingreso_volumenes` `iv2`) * 100,2) AS `Porcentaje_Departamental` from (((`ingreso_volumenes` `iv` join `productos` `p` on(`iv`.`producto_id` = `p`.`id_producto`)) join `municipios` `m` on(`iv`.`municipio_id` = `m`.`id_municipio`)) join `departamentos` `d` on(`m`.`departamento_id` = `d`.`id_departamento`)) group by `d`.`departamento`,`p`.`nombre_producto` order by round(sum(`iv`.`cantidad_ingreso`) / (select sum(`iv2`.`cantidad_ingreso`) from `ingreso_volumenes` `iv2`) * 100,2) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_listado_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `v_listado_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`credicel_mysql_estudiantes_ago24`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_listado_usuarios` AS select `usuarios`.`documento_identidad` AS `Documento_Identidad`,`usuarios`.`nombres_usuario` AS `Nombre_y_Apellidos`,`usuarios`.`email_usuario` AS `Email`,`usuarios`.`login_usuario` AS `Login` from `usuarios` order by `usuarios`.`documento_identidad` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_listado_vehiculos`
--

/*!50001 DROP VIEW IF EXISTS `v_listado_vehiculos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`credicel_mysql_estudiantes_ago24`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_listado_vehiculos` AS select concat('VEH-',`v`.`idvehiculo`) AS `Idv`,`v`.`placa_vehiculo` AS `Placa` from `vehiculos` `v` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_total_producto_ingresado_X_Dpto`
--

/*!50001 DROP VIEW IF EXISTS `v_total_producto_ingresado_X_Dpto`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`credicel_mysql_estudiantes_ago24`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_total_producto_ingresado_X_Dpto` AS select `d`.`departamento` AS `Departamento`,sum(`iv`.`cantidad_ingreso`) AS `Total_Productos_Ingresados` from (((`ingreso_volumenes` `iv` join `productos` `p` on(`iv`.`producto_id` = `p`.`id_producto`)) join `municipios` `m` on(`iv`.`municipio_id` = `m`.`id_municipio`)) join `departamentos` `d` on(`m`.`departamento_id` = `d`.`id_departamento`)) group by `d`.`departamento` order by sum(`iv`.`cantidad_ingreso`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_Resumen_Mensual_de_Ingresos`
--

/*!50001 DROP VIEW IF EXISTS `v_Resumen_Mensual_de_Ingresos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`credicel_mysql_estudiantes_ago24`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_Resumen_Mensual_de_Ingresos` AS select month(`iv`.`fecha_ingreso`) AS `Mes`,`cp`.`nombre_categoria_producto` AS `Categoria`,sum(`iv`.`cantidad_ingreso`) AS `Total_Productos_Ingresados` from ((`ingreso_volumenes` `iv` join `productos` `p` on(`iv`.`producto_id` = `p`.`id_producto`)) join `categoria_productos` `cp` on(`p`.`categoria_producto_id` = `cp`.`idcategoria_producto`)) group by month(`iv`.`fecha_ingreso`),`cp`.`nombre_categoria_producto` order by month(`iv`.`fecha_ingreso`),sum(`iv`.`cantidad_ingreso`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `porcentaje_X_departamento`
--

/*!50001 DROP VIEW IF EXISTS `porcentaje_X_departamento`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`credicel_mysql_estudiantes_ago24`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `porcentaje_X_departamento` AS select `d`.`departamento` AS `Departamento`,sum(`iv`.`cantidad_ingreso`) AS `Total_Ingresos_Departamento`,round(sum(`iv`.`cantidad_ingreso`) / (select sum(`iv2`.`cantidad_ingreso`) from `ingreso_volumenes` `iv2`) * 100,2) AS `Porcentaje_Departamental` from ((`ingreso_volumenes` `iv` join `municipios` `m` on(`iv`.`municipio_id` = `m`.`id_municipio`)) join `departamentos` `d` on(`m`.`departamento_id` = `d`.`id_departamento`)) group by `d`.`departamento` order by round(sum(`iv`.`cantidad_ingreso`) / (select sum(`iv2`.`cantidad_ingreso`) from `ingreso_volumenes` `iv2`) * 100,2) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'credicel_BD_VOLUMENES_CAB'
--

--
-- Dumping routines for database 'credicel_BD_VOLUMENES_CAB'
--
/*!50003 DROP PROCEDURE IF EXISTS `InformeIngresos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
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

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProductosConMayorIngreso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`credicel_mysql_estudiantes_ago24`@`%` PROCEDURE `ProductosConMayorIngreso`(
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
        Total_Ingresado DESC
    LIMIT 5;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ProductosConMenorIngreso` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-05 20:59:29
