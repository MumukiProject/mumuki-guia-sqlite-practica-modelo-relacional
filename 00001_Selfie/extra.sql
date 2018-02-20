UPDATE publicaciones 
SET fecha = date("2017-12-27") 
WHERE id_publicacion NOT BETWEEN 3 AND 6;

UPDATE publicaciones 
SET fecha = date("2018-02-27") 
WHERE id_publicacion BETWEEN 3 AND 6;


/*
DELETE FROM likes;
DELETE FROM comentarios;
*/