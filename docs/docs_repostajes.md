{% docs repostajes %}

Tabla que contiene información sobre los repostajes en diferentes gasolineras.

{% enddocs %}

{% docs repostajes_TIMESTAMP %}

Fecha y hora en que se realizó el repostaje.

{% enddocs %}

{% docs repostajes_USER_ID %}

Identificador único del usuario que realizó el repostaje.

{% enddocs %}

{% docs repostajes_CAR_ID %}

Identificador único del vehículo que realizó el repostaje.

{% enddocs %}

{% docs repostajes_STATION_ID %}

Identificador único de la estación de servicio donde se realizó el repostaje.

{% enddocs %}

{% docs repostajes_FUEL %}

Tipo de combustible utilizado en el repostaje
- Gasolina o Diésel

{% enddocs %}

{% docs repostajes_PRICE %}

Precio por litro del combustible en la estación de servicio al momento del repostaje (€).

{% enddocs %}

{% docs repostajes_LITERS %}

Cantidad de litros repostados en la transacción.

{% enddocs %}

{% docs repostajes_METODO_PAGO %}

Método de pago utilizado para realizar el repostaje (efectivo, tarjeta).

{% enddocs %}

{% docs repostajes_FIVETRAN_SYNCED %}

Fecha y hora en que los datos fueron sincronizados por Fivetran.

{% enddocs %}

{% docs repostajes_FIVETRAN_DELETED %}

Marca booleana que indica si la fila fue eliminada según los registros de Fivetran.

{% enddocs %}

----------------------------------------
{% docs base_repostajes %}

Base construida para formatear algunos campos de la source repostajes y crear
un Identificador de cada transaccion.

{% enddocs %}

{% docs repostajes_TRANSACTION_ID %}

Base construida para formatear algunos campos de la source repostajes y crear
un Identificador de cada transaccion.

{% enddocs %}

----------------------------------------

{% docs stg_gas_repostajes %}

Stage con informacion sobre los repostajes de diferentes gasolineras donde se ha incluido 
el fuel_id del combustible correspondiente a cada repostaje.

{% enddocs %}


