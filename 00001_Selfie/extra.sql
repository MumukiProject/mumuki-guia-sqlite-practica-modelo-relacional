CREATE TABLE publicaciones (es_efimero BOOLEAN NOT NULL CHECK (es_efimero IN (0,1)));

INSERT INTO publicaciones VALUES (1);