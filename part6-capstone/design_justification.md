## Storage Systems

The hospital system requires multiple types of storage systems because each goal involves different types of data and workloads.

For predicting patient readmission risk, a data warehouse or lakehouse would be used to store historical treatment data. Historical records such as diagnoses, procedures, and patient outcomes are best analyzed using large analytical datasets. A data warehouse allows efficient aggregation and machine learning training on structured historical data.

For allowing doctors to query patient history in plain English, a vector database would be used. Patient records, medical notes, and reports can be converted into embeddings and stored in a vector database. This allows semantic search so doctors can ask questions such as “Has this patient had a cardiac event before?” and retrieve relevant information even if the exact words do not match.

For generating monthly reports for hospital management, a data warehouse would again be appropriate. Data warehouses are optimized for analytical queries such as bed occupancy rates, departmental costs, and patient statistics. These reports require aggregating data across large time periods and departments.

For streaming and storing real-time ICU vitals, a streaming data platform combined with a time-series database would be ideal. ICU devices continuously produce data such as heart rate, oxygen levels, and blood pressure. A streaming pipeline can ingest this data in real time, while a time-series database efficiently stores and retrieves time-based measurements.

## OLTP vs OLAP Boundary

The OLTP system handles day-to-day hospital operations such as patient registrations, treatment records, prescriptions, and billing transactions. These systems require high reliability, strong consistency, and fast transactional processing.

The OLAP system begins once operational data is extracted and transformed for analytical purposes. Data from the hospital’s operational databases would be periodically transferred into a data warehouse or lakehouse through ETL pipelines. In this analytical layer, the data is used for machine learning models, reporting dashboards, and historical analysis.

Therefore, the boundary between OLTP and OLAP occurs at the ETL or data ingestion pipeline that transfers data from the hospital’s transactional systems into analytical storage systems.

## Trade-offs

One significant trade-off in this architecture is the increased complexity of managing multiple specialized data systems. Using a relational database, data warehouse, vector database, and streaming infrastructure introduces operational overhead and requires integration between different components.

However, this trade-off is necessary to ensure that each system is optimized for its specific workload. Transactional databases provide reliable patient record management, data warehouses support large-scale analytics, vector databases enable semantic medical search, and streaming systems handle real-time ICU data.

To mitigate this complexity, the hospital network could adopt a unified data platform or lakehouse architecture where possible, along with centralized data orchestration tools and monitoring systems. This would simplify data management while maintaining the benefits of specialized storage systems.
