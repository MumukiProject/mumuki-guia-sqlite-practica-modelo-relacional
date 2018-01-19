Fotogram es una aplicación donde cada usuario puede hacer publicaciones de fotos y videos.

**A la vez, se puede seguir a otros contactos y darle me gusta a sus publicaciones.**dejar para más adelante

Tenemos un modelo inicial:

<div
  class='mu-erd'
  data-entities='{
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
      }
    }
  }'>
</div>