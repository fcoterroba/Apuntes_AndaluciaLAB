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
