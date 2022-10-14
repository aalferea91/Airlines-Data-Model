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

https://github.com/aalferea91/Airlines-Data-Model/blob/3c258c4ae37af359c80b5b9858aae0f59358f971/Airlines%20queries.sql

3. Create the ETL processes necessary to load all the data into their respective tables in Snowflake. Make sure to do all the data validation required as there are dependancies between tables in the same database.

RESOLUTION

Find the ETL processes in the following notebook: [Data_load.ipynb](https://github.com/aalferea91/Airlines-Data-Model/blob/f8aa5805f4694d6fbb99297ac3b6ef6db9b8e5f2/Data_load.ipynb)

4. Answer the following questions:

-Obtain the number of routes of each country as origin country in descending order. Show the name of the country.
-Obtain the number of routes of each country as country of the airline in descending order. Show the name of the country.
-Obtain the number of of routes of each equipment in descending order. Show the name of the equipments and only show those equipments with more than 2000 routes.
-Obtain the number of routes of each equipment for the routes whose origin airport is Barajas (1229) in descending order. Show the name of the equipment.
-Obtain the two countries in which there are more routes.

RESOLUTION

https://github.com/aalferea91/Airlines-Data-Model/blob/672b3a867540846b4b608574a1e9f607f9a81819/Data_analysis.ipynb

5. Create a a denormalized table that stores the information of the tables: routes, airports, airlines:



