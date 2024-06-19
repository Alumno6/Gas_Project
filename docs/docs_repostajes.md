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

------------------------------------------

{% docs fct_refueling %}

Tabla de hechos con informacion sobre los repostajes de diferentes gasolineras.

{% enddocs %}

------------------------------------------

{% docs sum_brand %}

Tabla sumatoria que recoje de forma diaria datos relativos a ventas, las compañias que aqui aparecen
con nombre son aquellas mas importantes por numero de repostajes, el resto viene de forma agrupada con el nombre other.

{% enddocs %}

{% docs sum_FECHA %}

Indica la fecha a la cual hace referencia los valores agrupados.

{% enddocs %}

{% docs sum_BRAND %}

Campo que recoje el nombre para las compañias mas importantes y other para el resto.

{% enddocs %}

{% docs sum_TOTAL_AMOUT_SALES %}

Sumatorio de las ventas para esa fecha (€).

{% enddocs %}

{% docs sum_TOTAL_UNIT_SALES %}

Numero de ventas resgistradas en esa fecha.

{% enddocs %}

{% docs sum_LITER_PRICE %}

Precio medio del litro respostado para todos los combustibles (€).

{% enddocs %}

------------------------------------------
{% docs sum_provin_fuel_type %}

Tabla resumen que recoje datos de repostajes agrupados por provincia y tipo de combustible.

{% enddocs %}

{% docs sum_TOTAL_REFUELING %}

Campo que recoje el total vendido para esa fecha, en esa fecha y para ese combustible (€).

{% enddocs %}

{% docs sum_COST_AVG %}

Campo que recoje el coste medio del respostaje (€).

{% enddocs %}
























