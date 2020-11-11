# 10/11/2020
## HDFS/MapReduce
En este [enlace](https://docs.microsoft.com/en-us/azure/hdinsight/hadoop/apache-hadoop-run-samples-linux) aparecen varios ejemplos.
## Hive
Hive está desarrollada por Facebook y permite transmitir información en una consulta.

Viene con un ejemplo de sample table y las consultas se realizan en un lenguaje de consultar **similar** a SQL

![texto alternativo](https://github.com/fcoterroba/Apuntes_AndaluciaLAB/blob/main/Big_Data/Hive_1.png)

Cuando sacamos datos, disponemos de la opción de **Tez UI** que es, a fin de cuentas, cómo funciona Hive por detrás.

Podemos trabajar con Hive en Power BI e incluso tiene su [propio driver de ODBC](https://www.microsoft.com/en-us/download/details.aspx?id=40886).
### Table Storage
En Azure existe también los [**table storage**](https://azure.microsoft.com/es-es/services/storage/tables/) en la que, a diferencia de Hive, puedes lanzar **consultas SQL**. 

Además, incluye librerías para desarrollar apps en .NET, Python, C++, PHP, Ruby, Java, etcétera.

Se crea una storage automáticamente cuando creamos un clúster.

Para añadir datos al storage usamos el explorador de storage y agregamos nuevos datos.

![texto alternativo](https://github.com/fcoterroba/Apuntes_AndaluciaLAB/blob/main/Big_Data/Azure_Storage_1.png)

La alternativa, si no, es el [Explorador de Azure Storage](https://azure.microsoft.com/es-es/features/storage-explorer/)
# 11/11/2020
## Distribuciones Hadoop
Una distribución de Hadoop es, a fin de cuentas, un conjunto de herramientas basadas en Apache Hadoop.

Sigue la filosofía de las distribuciones Linux.

![texto alternativo](https://github.com/fcoterroba/Apuntes_AndaluciaLAB/blob/main/Big_Data/Hadoop_1.png)
### Hortonworks
Hortonworks nace en el 2011 con una aportación capital de Yahoo! y es patrocinador de Apache Software Foundation.

En 2018 fue comprada por Cloudera aunque esta empresa sigue manteniendo dicha distribución.

Es la distribución usada por Azure e IBM.

Su producto estrella es **HDP** (Hortonworks Data Platform) de software libre y que incluye el famoso programa de administración Ambari.
### MapR
MapR nace en 2009 con fondos de Google o Lightspeed.

Tiene su propio motor de HDFS llamado **MapR Filesystem**. 

Mientras que Cloudera y Hortonworks basan su protección en herramientas de encriptación, **MapR** lo basa en su sistema de ficheros propios.

MapR ofrece **mejor rendimiento** que Cloudera o Hortonworks

#### Ventajas
  - Está desarrollado en C pero es compatible a nivel de API con HDFS, desarrollado en Java. (guardando las distancias)
  - Soporta accesos aleatorios de escritura
  - Puede ser visualizado externamente como unidad NFS
  - Se pueden hacer snapshots.

MapR es la distribución usada por Google Cloud Platform para ofrecer servicios de Hadoop.

Fue finalmente comprado por HP en 2019.

---

Hadoop divide ficheros en trozos de **64MB** y los reparte por todo el cluster HDFS.

Vamos a fijarnos en el CSV de [crímenes de Chicago desde el 2001](https://catalog.data.gov/dataset/crimes-2001-to-present-398a4). 
