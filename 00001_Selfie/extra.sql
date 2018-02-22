/*UPDATE publicaciones 
SET fecha = date("2017-12-27") 
WHERE id_publicacion NOT BETWEEN 3 AND 6;

UPDATE publicaciones 
SET fecha = date("2018-02-27") 
WHERE id_publicacion BETWEEN 3 AND 6;
*/
UPDATE publicaciones 
SET fecha =
  CASE
    WHEN id=1 || id=2 || id=8 || id=9 THEN date("2017-12-27") 
    WHEN id=5 THEN date("2017-01-06") 
    ELSE date("2017-03-15")  
  END;
      
/*
DELETE FROM likes;
DELETE FROM comentarios;
*/