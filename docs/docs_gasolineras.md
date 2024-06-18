{% docs gasolineras %}

Tabla que contiene información sobre las gasolineras y sus precios de combustible
de forma diaria.

{% enddocs %}

{% docs gasolineras_STATION_ID %}

Identificador único de la gasolinera.

{% enddocs %}

{% docs gasolineras_COUNTRY %}

País donde se encuentra ubicada la gasolinera:
- ES --> España

{% enddocs %}

{% docs gasolineras_PROVINCIA %}

Provincia donde se encuentra ubicada la gasolinera.

{% enddocs %}

{% docs gasolineras_CITY %}

Ciudad donde se encuentra ubicada la gasolinera.

{% enddocs %}

{% docs gasolineras_ADDRESS %}

Dirección física de la gasolinera.

{% enddocs %}

{% docs gasolineras_ROAD_MARGIN %}

Margen de la carretera donde está ubicada la gasolinera:
- I/Izquierdo
- D/Derecho

{% enddocs %}

{% docs gasolineras_SCHEDULE %}

Horario de atención de la gasolinera.

{% enddocs %}

{% docs gasolineras_COMPANY %}

Nombre de la compañía que opera la gasolinera.

{% enddocs %}

{% docs gasolineras_FUEL %}

Tipo de combustible disponible en la gasolinera.

A continuación se presenta una tabla con los diferentes tipos de combustibles utilizados en vehículos y su descripción correspondiente:

| Fuel                           | Description                                                                 |
|--------------------------------|-----------------------------------------------------------------------------|
| **SP95**                       | Gasolina de 95 octanos, adecuada para la mayoría de los vehículos de gasolina convencionales. |
| **SP98**                       | Gasolina de 98 octanos, de mayor calidad y rendimiento que la SP95, utilizada en vehículos que requieren un mayor octanaje. |
| **D**                          | Diésel estándar utilizado en la mayoría de los vehículos diésel.             |
| **D+**                         | Diésel premium con aditivos que mejoran la limpieza y el rendimiento del motor. |
| **DB Agrario**                 | Diésel especial utilizado en maquinaria agrícola y equipos del sector agrario. |
| **Gas Natural**                | Combustible gaseoso utilizado como alternativa al diésel y la gasolina en vehículos adaptados. |
| **Gas Licuado de Petróleo (GLP)** | Combustible gaseoso utilizado principalmente en vehículos convertidos para funcionar con GLP. |
| **Gas Natural Comprimido (GNC)** | Variante del gas natural que se comprime para su uso en vehículos, reduciendo costos y emisiones. |


{% enddocs %}

{% docs gasolineras_FUEL_PRICE %}

Precio del combustible en la gasolinera al momento del registro (€).

{% enddocs %}

{% docs gasolineras_FECHA %}

Fecha en que se registró el precio del combustible en la gasolinera.

{% enddocs %}

{% docs gasolineras_FUEL_CATEGORY %}

A continuación se presenta una tabla con los diferentes tipos de combustibles utilizados en vehículos y su categoría correspondiente:

| Fuel                           | Fuel Category  |
|--------------------------------|----------------|
| **SP95**                       | Gasolina       |
| **SP98**                       | Gasolina       |
| **D**                          | Diésel         |
| **D+**                         | Diésel         |
| **DB Agrario**                 | Diésel agrario |
| **Gas Natural**                | Gas            |
| **Gas Licuado de Petróleo (GLP)** | Gas        |
| **Gas Natural Comprimido (GNC)** | Gas         |

{% enddocs %}

{% docs gasolineras_FIVETRAN_SYNCED %}

Fecha y hora en que los datos fueron sincronizados por Fivetran.

{% enddocs %}

{% docs gasolineras_FIVETRAN_DELETED %}

Marca booleana que indica si la fila fue eliminada según los registros de Fivetran.

{% enddocs %}

----------------------------------------------------------

{% docs base_gasolineras %}

Tabla en la que se ha formateado algunos de los campos de la source gasolineras
que contiene precios diarios de gasolineras para diferentes combustibles.

{% enddocs %}

----------------------------------------------------------

{% docs snap_gasolineras %}

Snapshot en la que se ha historificado la informacion sebre cada gasolinera.

{% enddocs %}

----------------------------------------------------------

{% docs dim_fuel_station %}

Dimension en la que se ha historificado la informacion sebre cada gasolinera.

{% enddocs %}
