CREATE DEFINER=`root`@`localhost` FUNCTION `artista_playlist`(id_artista INT) RETURNS varchar(100) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE nombre_del_playlist VARCHAR(100);

    SELECT `play_list`
    INTO nombre_del_playlist
    FROM `play_list`
    WHERE `id_artist` = id_artista;

    RETURN nombre_del_playlist;
END