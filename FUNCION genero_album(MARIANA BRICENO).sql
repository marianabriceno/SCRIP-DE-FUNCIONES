CREATE DEFINER=`root`@`localhost` FUNCTION `genero_album`(id_artista INT) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE nombre_album VARCHAR(50);

    SELECT `tipo_genero`
    INTO nombre_album
    FROM `genero`
    WHERE `id_artist` = id_artista;

    RETURN nombre_album;
END