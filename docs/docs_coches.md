{% docs coches %}

Tabla que contiene información sobre los coches asociados a los clientes.

{% enddocs %}

{% docs coches_KM %}

Cantidad de kilómetros recorridos por el coche.

{% enddocs %}

{% docs coches_MAKE %}

Marca del coche.

{% enddocs %}

{% docs coches_MODEL %}

Modelo del coche.

{% enddocs %}

{% docs coches_FUEL_CATEGORY %}

Categoría de combustible utilizada por el coche:
- Gasoline 
- Diesel

{% enddocs %}

{% docs coches_GEAR %}

Tipo de transmisión del coche:
- Manual
- Automatic

{% enddocs %}

{% docs coches_PRICE %}

Precio del coche (€) .

{% enddocs %}

{% docs coches_HP %}

Potencia del coche en caballos de fuerza (HP).

{% enddocs %}

{% docs coches_YEAR %}

Año de fabricación del coche.

{% enddocs %}

{% docs coches_CAR_ID %}

Identificador único del coche.

{% enddocs %}

{% docs coches_FIVETRAN_SYNCED %}

Fecha y hora en que los datos fueron sincronizados por Fivetran.

{% enddocs %}

{% docs coches_FIVETRAN_DELETED %}

Marca booleana que indica si la fila fue eliminada según los registros de Fivetran.

{% enddocs %}

-----------------------------------

{% docs stg_cars %}

Tabla proveniente del snapshot coches y en la que se han renombrado algunos cambios
y se ha incuido el owner_id del propietario los cuales provinen del snapshot clientes.
La inforacion del snapshot coches solo se obtiene la version mas actual de los datos.

{% enddocs %}


{% docs cars_OWNER_ID %}

ID del propietario del vehiculo el cual tiene relacion con la tabla de cientes.

{% enddocs %}

-----------------------------------

{% docs base_cars %}

Base de la tabal de coches en la cual aparecen datos sobre los vehiculos 
de los clientes de las gasolineras.

{% enddocs %}