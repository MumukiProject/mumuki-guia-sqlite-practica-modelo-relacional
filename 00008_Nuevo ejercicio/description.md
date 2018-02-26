Ahora queremos armar una lista con los nombres de los seguidores de "valen_s". 

El problema es que no sabemos su ID, por lo que necesitamos hacer un _join_ entre la tabla de usuarios y la de seguidores, sabiendo que es la _seguida_.

Y tampoco conocemos los IDs ni los nombres de sus seguidores, con lo que necesitamos otro _join_ entre las mismas tablas, sabiendo que estos son los _seguidores_.

> Tomate un tiempo para tratar de entender esta resolución, y luego copiala en el editor para ver lo que devuelve.

> ``` sql
> SELECT stalker.nombre_usuario AS tus_seguidores
> FROM seguidores, 
>      usuarios stalker, 
>      usuarios seguido
> WHERE id_seguidor = stalker.id_usuario
>       AND id_seguido = seguido.id_usuario 
>       AND seguido.nombre_usuario = "valen_s";
> ```
