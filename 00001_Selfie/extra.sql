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

INSERT INTO usuarios VALUES (1, "pepe", "url_pepe");

INSERT INTO publicaciones (foto_video_url, id_duenio, es_temporal) VALUES ("lalala", 1, 0);

  