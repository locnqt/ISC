create database TodoAPI
go
use TodoAPI
go
create table Todos (
	Id bigint primary key identity(1,1) not null,
	Name nvarchar(255) null,
	IsComplete bit null
);