CREATE DEFINER=`root`@`localhost` FUNCTION `contador_genero`(ingresar_genero varchar(20)) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE count_g INT;
    SELECT count(g.tipo_genero) INTO count_g
    FROM genero as g
    join albumes as a on g.id_artist=a.id_artist
    where g.tipo_genero like ingresar_genero;
    RETURN count_g;
END