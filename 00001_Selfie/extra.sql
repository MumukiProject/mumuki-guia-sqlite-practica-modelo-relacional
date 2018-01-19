CREATE TABLE usuarios (id_usuario INTEGER PRIMARY KEY, 
  nombre_usuario TEXT, 
  foto_perfil_url TEXT);

CREATE TABLE seguidores (id_seguidor INTEGER NOT NULL, 
  id_seguido INTEGER NOT NULL, 
  FOREIGN KEY (id_seguidor) REFERENCES usuarios(id_usuario), 
  FOREIGN KEY (id_seguido) REFERENCES usuarios(id_usuario), 
  PRIMARY KEY (id_seguidor, id_seguido));

CREATE TABLE publicaciones (id_publicacion INTEGER PRIMARY KEY, 
  foto_video_url TEXT, 
  id_duenio INTEGER NOT NULL, 
  es_temporal BOOLEAN NOT NULL CHECK (es_temporal IN (0,1)),
  FOREIGN KEY (id_duenio) REFERENCES usuarios(id_usuario));

CREATE TABLE likes (id_publicacion INTEGER NOT NULL, 
  id_stalker INTEGER NOT NULL, 
  FOREIGN KEY (id_publicacion) REFERENCES publicaciones(id_publicacion), 
  FOREIGN KEY (id_stalker) REFERENCES usuarios(id_usuario), 
  PRIMARY KEY (id_publicacion, id_stalker));

CREATE TABLE comentarios (id_publicacion INTEGER NOT NULL, 
  id_stalker INTEGER NOT NULL, 
  comentario TEXT,
  FOREIGN KEY (id_publicacion) REFERENCES publicaciones(id_publicacion), 
  FOREIGN KEY (id_stalker) REFERENCES usuarios(id_usuario), 
  PRIMARY KEY (id_publicacion, id_stalker));

INSERT INTO usuarios 
  VALUES (1, "valen_s", ""),
  (2, "stephanie_d", ""), 
  (3, "mariano_di", ""),
  (4, "an_she", ""),
  (5, "yon_g", "");
  
INSERT INTO seguidores 
  VALUES (1, 2),
  (1,3),
  (1,5),
  (2,1), 
  (2,5),
  (5,1),
  (5,4);

INSERT INTO publicaciones (foto_video_url, id_duenio, fecha, es_temporal)
  VALUES ("", 1, "20170117", 0),
  ("", 1, "20170119", 1),
  ("", 1, "20170119", 0),
  ("", 2, "20170119", 1),
  ("", 5, "20170118", 0),
  ("", 5, "20170118", 0),
  ("", 5, "20170119", 1),
  ("", 5, "20170119", 0),
  ("", 5, "20170119", 1),
  
  
INSERT INTO publicaciones (foto_video_url, id_duenio, es_temporal) VALUES ("lalala", 1, 0);

  