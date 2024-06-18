{% docs provincias %}

Tabla que contiene información demográfica, económica y geográfica sobre las provincias donde se han realizado los repostajes.

{% enddocs %}

{% docs provincias_PROVINCIA_ID %}

ID de cada provincia.

{% enddocs %}

{% docs provincias_PROVINCIAS %}

Nombre de cada provincia.

{% enddocs %}

{% docs provincias_POBLACION %}

Población total de la provincia.

{% enddocs %}

{% docs provincias_TASA_DE_PARO %}

Tasa de desempleo en la provincia (%).

{% enddocs %}

{% docs provincias_INDICE_INDUSTRIAL %}

Índice industrial que representa la actividad industrial en la provincia(IPI)

Visita el [enlace: ](https://www.epdata.es/datos/indice-produccion-industrial-ipi-ine-estadistica-datos-graficos/79/espana/106) para más información.

{% enddocs %}

{% docs provincias_COSTA %}

Indica si la provincia tiene costa.

{% enddocs %}

{% docs provincias_PIB_PER_CAPITA %}

Producto Interior Bruto (PIB) per cápita de la provincia, (€).

{% enddocs %}

{% docs provincias_DENSIDAD_DE_POBLACION %}

Número de habitantes por kilómetro cuadrado en la, (habitantes /KM^2). 

{% enddocs %}

{% docs provincias_TASA_DE_NATALIDAD %}

Número de nacimientos por cada 1000 habitantes en la provincia, (Nacimientos / 1000 habitantes).

{% enddocs %}

{% docs provincias_TASA_DE_MORTALIDAD %}

Número de defunciones por cada 1000 habitantes en la provincia, (Fallecimientos / 1000 habitantes).

{% enddocs %}

{% docs provincias_NIVEL_EDUCATIVO %}

Nivel educativo promedio de la población en la provincia % poblacion estudios superiores.

{% enddocs %}

{% docs provincias_FRONTERA %}

Indica si la provincia tiene frontera con otro país.

{% enddocs %}

{% docs provincias_FIVETRAN_SYNCED %}

Fecha y hora en que los datos fueron sincronizados por Fivetran.

{% enddocs %}

{% docs provincias_FIVETRAN_DELETED %}

Marca booleana que indica si la fila fue eliminada según los registros de Fivetran.

{% enddocs %}

--------------------------------------
{% docs stg_provincias %}

Tabla que proviene del snapshot de provincias, y en esta se hacen algunas
trnasformaciones a los campos de costa y frontera.

{% enddocs %}

{% docs provincias_TIENE_COSTA %}

Campo que recoje si la provicia tiene costa, (Sí/No)

{% enddocs %}

{% docs provincias_TIENE_FRONTERA %}

Campo que recoje si la provicia tiene frontera, (Sí/No)

{% enddocs %}

--------------------------------------
{% docs snap_provincias %}

Snapshot donde se ha historificado la informacion de las diferentes provincias.

{% enddocs %}

--------------------------------------
{% docs dim_provincias %}

Dimension donde se ha historificado la informacion de las diferentes provincias.

{% enddocs %}