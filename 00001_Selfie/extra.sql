UPDATE publicaciones 
SET fecha = date("2017-12-27") 
WHERE id_publicacion NOT BETWEEN 3 AND 6;
/*
DELETE FROM likes;
DELETE FROM comentarios;
*/