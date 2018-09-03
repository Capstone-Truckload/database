create database capstone;

create table Customer (
       id bigserial,
       phone varchar,
       email varchar,
       pass varchar,
       payment money,
       cName varchar, /* name is a non-reserved keyword */
       PRIMARY KEY(id)
);

create table Trucker (
       id bigserial,
       phone varchar,
       email varchar,
       password varchar,
       licensing varchar,
       capacity varchar,
       tName varchar,
       PRIMARY KEY(id)
);

create table Loads (
       id bigserial,
       customer_id bigserial REFERENCES  Customer (id),
       trucker_id bigserial REFERENCES Trucker(id),
       destination_to varchar,
       destination_from varchar,
       datePosted date,
       dateRequired date,
       price money,
       licensingRequirement varchar,
       requirements varchar,
       comments varchar,
       currentPrice money,
       expirationDate date,
       bigEndDate date
);
