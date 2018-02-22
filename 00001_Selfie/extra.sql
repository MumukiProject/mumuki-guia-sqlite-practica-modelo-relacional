/*UPDATE publicaciones 
SET fecha = date("2017-12-27") 
WHERE id_publicacion NOT BETWEEN 3 AND 6;

UPDATE publicaciones 
SET fecha = date("2018-02-27") 
WHERE id_publicacion BETWEEN 3 AND 6;

UPDATE publicaciones 
SET fecha =
  CASE
    WHEN (id_publicacion = 1 || id_publicacion = 2 || id_publicacion = 8 || id_publicacion = 9) THEN date("2017-12-27") 
    WHEN id_publicacion=5 THEN date("2017-01-06") 
    ELSE date("2017-03-15")  
  END;
  */
UPDATE publicaciones SET fecha=date("2017-03-15");
UPDATE publicaciones SET fecha=date("2017-12-27")  WHERE id_publicacion IN('1','2','8', '9');
UPDATE publicaciones SET fecha=date("2017-01-06")  WHERE id_publicacion = 5;

/*
DELETE FROM likes;
DELETE FROM comentarios;
*/