{% docs clientes %}

Tabla que contiene información sobre los clientes que realizan repostajes en las gasolineras.

{% enddocs %}

{% docs clientes_NOMBRE %}

Nombre del cliente.

{% enddocs %}

{% docs clientes_GENERO %}

Género del cliente (masculino, femenino).

{% enddocs %}

{% docs clientes_EDAD %}

Edad del cliente en años(+18)

{% enddocs %}

{% docs clientes_OCUPACION %}

Ocupación o profesión del cliente.

{% enddocs %}

{% docs clientes_PROVINCIA %}

Provincia de residencia del cliente.

{% enddocs %}

{% docs clientes_INGRESO_ANUAL %}

Ingreso anual del cliente(€).

{% enddocs %}

{% docs clientes_ESTADO_CIVIL %}

Estado civil del cliente.

{% enddocs %}

{% docs clientes_EMAIL %}

Dirección de correo electrónico del cliente.

{% enddocs %}

{% docs clientes_USER_ID %}

Identificador único del cliente.

{% enddocs %}

{% docs clientes_CAR_ID %}

Identificador único del vehículo asociado al cliente.

{% enddocs %}

{% docs clientes_FIVETRAN_SYNCED %}

Fecha y hora en que los datos fueron sincronizados por Fivetran.

{% enddocs %}

{% docs clientes_FIVETRAN_DELETED %}

Marca booleana que indica si la fila fue eliminada según los registros de Fivetran.

{% enddocs %}
---------------------------------------

{% docs stg_users %}

Tabla en la que se recoje informacion de los clientes y proveniente de un snapshot
de la cual solo se toman la informacion mas actual de cada cliente.
En esta tambien se sustituye el campo provincia por el id de esta de la tabla provincias.

{% enddocs %}

---------------------------------------

{% docs base_users %}

Base de la tabla de clientes de la cual se toman campos para varias tablas.

{% enddocs %}

---------------------------------------

{% docs dim_users %}

Dimension de clientes en la cual aparece informacion relativa a todos 
los usuarios que han relaizado repostajes.

{% enddocs %}