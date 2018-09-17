create table Students(
	STU_ID	bigint  primary key identity(1,1)  not null,
	StudentId nvarchar(250) not null,
	FirstName nvarchar(250) not null,
	LastName nvarchar(250) not null,
	Email nvarchar(250) not null,
	Phone nvarchar(250) not null,
	Address nvarchar(250) not null,
	constraint AK_IDENTIFIER_2_STUDENTS unique (StudentId)
)
