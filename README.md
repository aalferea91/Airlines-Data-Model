# Airlines-Data-Model
In this project I will design a datawarehouse model and it´s different ETLS according to specific requirements.

1. Create a data model that will allow to analyze the different routes for airlines based in different dimensions: airport, airline, country or equipment.

Examples of analysis:
-Number of routes by airport, airline, and country. With the possibility to filter the information by type of route (domestic or international).
-Rankings:
        1. Airports with highest number of routes.
        2. Airlines with the highest number of routes.
        3. Countries with the highest number of routes.
        4. Countries with the highest number of airlines.
        5. Equipments that are most used.
The objective of this question is only to design the model with the different entities, their relations, primary and foreign keys and main attributes of each entity.
Note: you can find the description of all the files with the relevant information in the following link: [files description.docx](https://github.com/aalferea91/Airlines-Data-Model/files/9778403/files.description.docx)


RESOLUTION


[airlines-dbdesigner.pdf](https://github.com/aalferea91/Airlines-Data-Model/files/9778169/airlines-dbdesigner.pdf)


2. Create the tables in Snowflake according to the data model designed in the previous exercise.

RESOLUTION

First we need to create a database in SnowFlake and then a Schema. Then go to the worksheet section in order to run the queries to create the tables:

[SQL Queries.docx](https://github.com/aalferea91/Airlines-Data-Model/files/9778897/SQL.Queries.docx)

3. Create the ETL processes necessary to load all the data into their respective tables in Snowflake. Make sure to do all the data validation required as there are dependancies between tables in the same database.

RESOLUTION

Find the ETL processes in the following notebook: Data_load.ipynb
