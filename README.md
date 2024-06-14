# Neksus_no-docker

About:
This application is a mock-up of the site Nexus and tries to achieve the same capabilities - freely sharing mods with other members in the community
The project isn't fully finished and some features are missing or don't work as intended
This project was made in collaboration with Jan Musil (jnmsl on github) and Martin Krejzl (Merhern on github)
In this version of the project the pre-existing database is replaced with a database export file so you can build your own quickly and all sensitive data was expunged
Technologies used: Spring and Thymeleaf frameworks, Oracle database, structured in MVC architecture

Before launching:
- make sure you have set up your database server (Oracle recommended, but any SQL database should work)
- set up the connection configuration in the DatabaseConfig file (src/main/java/com.example.neksus/config/DatabaseConfig)

Instructions:
- update your maven dependencies
- run src/main/java/com.example.neksus/NeksusApplication
- open up any internet browser
- visit localhost:8080

Extra:
- example data is included in the database export
- example admin account: admin@neksus.com AdminPassword123
- the SQL database export is located in the base folder: NeksusExport.sql

Features:
- partial security - session token authentication and password hashing, authorization roles
- MVC architecture - website access for users, server handling communication and data preparation, Database for storing data long term