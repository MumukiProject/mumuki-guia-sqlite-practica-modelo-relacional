Fotogram es una aplicación donde cada usuario puede hacer publicaciones de fotos y videos.

Solo con esa información, ya podemos armar un modelo inicial como este:

<div
  class='mu-erd'
  data-entities='{
    "publicaciones": {
      "id_publicacion": {
        "type": "Integer",
        "pk": true
      },
      "foto_video_url": {
        "type": "Text"
      },
      "id_duenio": {
        "type": "Integer",
        "pk": false,
        "fk": {
          "to": { "entity": "usuarios", "column": "id_usuario" },
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
    "usuarios": {
      "id_usuario": {
        "type": "Integer",
        "pk": true
      },
      "nombre_usuario": {
        "type": "Text"
      },
      "foto_perfil_url": {
        "type": "Text"
      }
    }
  }'>
</div>

Podemos observar distintas cosas del DER:

1. Cada usuario tiene un nombre y una foto de perfil. (laal... :stuck_out_tongue_winking_eye:) 
2. Un usuario puede tener muchas publicaciones, pero hay de dos tipos:
  * publicaciones temporales, más conocidas como "historias", que solo duran un día.
  * publicaciones fijas, que obviamente no son temporales y perduran por siempre (a menos que el dueño las borre... :stuck_out_tongue_winking_eye:)
  
