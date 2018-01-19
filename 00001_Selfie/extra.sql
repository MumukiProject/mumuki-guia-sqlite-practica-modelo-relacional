CREATE TABLE usuarios (id_usr INTEGER PRIMARY KEY, nombre_usr TEXT, foto_perfil_url TEXT);

CREATE TABLE publicaciones (id_publicacion INTEGER PRIMARY KEY, 
foto_video_url TEXT, 
duenio INTEGER NOT NULL, 
es_temporal BOOLEAN NOT NULL CHECK (es_temporal IN (0,1)),
FOREIGN KEY (duenio) REFERENCES usuarios(id_usr));

INSERT INTO usuarios (1, "pepe", "url_pepe");

INSERT INTO publicaciones (foto_video_url, duenio, es_temporal) VALUES ("lalala", 1, 0);

  