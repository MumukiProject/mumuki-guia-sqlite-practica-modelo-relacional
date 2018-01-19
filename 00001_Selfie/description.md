Fotogram es una aplicación donde cada usuario puede hacer publicaciones de fotos y videos.

**A la vez, se puede seguir a otros contactos y darle me gusta a sus publicaciones.**dejar para más adelante

Tenemos un modelo inicial:

<div
  class='mu-erd'
  data-entities='{
    "seguidores": {
      "id_seguidor": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "usuarios", "column": "id_usr" },
          "type": "many_to_one"
        }
      },
      "id_seguido": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "usuarios", "column": "id_usr" },
          "type": "many_to_one"
        }
      }
    },
    "usuarios": {
      "id_usr": {
        "type": "Integer",
        "pk": true
      },
      "nombre_usr": {
        "type": "Text"
      },
      "foto_perfil_url": {
        "type": "Text"
      }
    },
    "publicaciones": {
      "id_publicacion": {
        "type": "Integer",
        "pk": true
      },
      "foto_video_url": {
        "type": "Text"
      },
      "duenio": {
        "type": "Integer",
        "pk": false,
        "fk": {
          "to": { "entity": "usuarios", "column": "id_usr" },
          "type": "many_to_one"
        }
      },
      "fecha": {
        "type": "Text"
      },
      "es_temporal": {
        "type": "Integer"
      }
    },
    "likes": {
      "publicacion": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "publicaciones", "column": "id_publicacion" },
          "type": "many_to_one"
        }
      },
      "stalker": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "usuarios", "column": "id_usr" },
          "type": "many_to_one"
        }
      }
    },
    "comentarios": {
      "publicacion": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "publicaciones", "column": "id_publicacion" },
          "type": "many_to_one"
        }
      },
      "stalker": {
        "type": "Integer",
        "pk": true,
        "fk": {
          "to": { "entity": "usuarios", "column": "id_usr" },
          "type": "many_to_one"
        }
      },
      "comentario": {
        "type": "Text"
      }
    }
  }'>
</div>