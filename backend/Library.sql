/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     10/12/2018 11:27:04 AM                       */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BOOKS') and o.name = 'FK_BOOKS_RELATIONS_TITLES')
alter table BOOKS
   drop constraint FK_BOOKS_RELATIONS_TITLES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHECKOUTDETAILS') and o.name = 'FK_CHECKOUT_RELATIONS_CHECKOUT')
alter table CHECKOUTDETAILS
   drop constraint FK_CHECKOUT_RELATIONS_CHECKOUT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHECKOUTDETAILS') and o.name = 'FK_CHECKOUT_RELATIONS_BOOKS')
alter table CHECKOUTDETAILS
   drop constraint FK_CHECKOUT_RELATIONS_BOOKS
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHECKOUTS') and o.name = 'FK_CHECKOUT_RELATIONS_LIBRARIA')
alter table CHECKOUTS
   drop constraint FK_CHECKOUT_RELATIONS_LIBRARIA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CHECKOUTS') and o.name = 'FK_CHECKOUT_RELATIONS_MEMBERS')
alter table CHECKOUTS
   drop constraint FK_CHECKOUT_RELATIONS_MEMBERS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BOOKS')
            and   name  = 'RELATIONSHIP_1_FK'
            and   indid > 0
            and   indid < 255)
   drop index BOOKS.RELATIONSHIP_1_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BOOKS')
            and   type = 'U')
   drop table BOOKS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHECKOUTDETAILS')
            and   name  = 'RELATIONSHIP_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHECKOUTDETAILS.RELATIONSHIP_4_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHECKOUTDETAILS')
            and   name  = 'RELATIONSHIP_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHECKOUTDETAILS.RELATIONSHIP_3_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHECKOUTDETAILS')
            and   type = 'U')
   drop table CHECKOUTDETAILS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHECKOUTS')
            and   name  = 'RELATIONSHIP_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHECKOUTS.RELATIONSHIP_5_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CHECKOUTS')
            and   name  = 'RELATIONSHIP_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index CHECKOUTS.RELATIONSHIP_2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CHECKOUTS')
            and   type = 'U')
   drop table CHECKOUTS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LIBRARIANS')
            and   type = 'U')
   drop table LIBRARIANS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MEMBERS')
            and   type = 'U')
   drop table MEMBERS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TITLES')
            and   type = 'U')
   drop table TITLES
go

/*==============================================================*/
/* Table: BOOKS                                                 */
/*==============================================================*/
create table BOOKS (
   BOO_ID               bigint               identity,
   TIT_ID               int                  not null,
   BARCODE              nvarchar(100)        not null,
   STATUS               int                  not null,
   CREATEDDATE          datetime             not null,
   CREATEDBY            int                  not null,
   constraint PK_BOOKS primary key (BOO_ID)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('BOOKS')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'STATUS')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'BOOKS', 'column', 'STATUS'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0: Available, 1: Borrowed, 2: Corrupt',
   'user', @CurrentUser, 'table', 'BOOKS', 'column', 'STATUS'
go

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_1_FK on BOOKS (
TIT_ID ASC
)
go

/*==============================================================*/
/* Table: CHECKOUTDETAILS                                       */
/*==============================================================*/
create table CHECKOUTDETAILS (
   CHKD_ID              bigint               identity,
   CHK_ID               bigint                  not null,
   BOO_ID               bigint                  not null,
   CHECKOUTDATE         datetime             not null,
   CHECKOUTBY           int                  not null,
   CHECKINDATE          datetime             null,
   CHECKINBY            int                  null,
   constraint PK_CHECKOUTDETAILS primary key (CHKD_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_3_FK on CHECKOUTDETAILS (
CHK_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_4_FK on CHECKOUTDETAILS (
BOO_ID ASC
)
go

/*==============================================================*/
/* Table: CHECKOUTS                                             */
/*==============================================================*/
create table CHECKOUTS (
   CHK_ID               bigint               identity,
   LIB_ID               int                  not null,
   MEM_ID               int                  not null,
   CREATEDDATE          datetime             null,
   CREATEDBY            int                  null,
   constraint PK_CHECKOUTS primary key (CHK_ID)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_2_FK on CHECKOUTS (
LIB_ID ASC
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create index RELATIONSHIP_5_FK on CHECKOUTS (
MEM_ID ASC
)
go

/*==============================================================*/
/* Table: LIBRARIANS                                            */
/*==============================================================*/
create table LIBRARIANS (
   LIB_ID               int                  identity,
   ACCOUNT              nvarchar(100)        not null,
   PASSWORD             nvarchar(255)        not null,
   FULLNAME             nvarchar(100)        not null,
   GENDER               bit                  null,
   EMAIL                nvarchar(100)        null,
   PHONE                nvarchar(50)         null,
   CREATEDDATE          datetime             not null,
   CREATEDBY            int                  not null,
   constraint PK_LIBRARIANS primary key (LIB_ID)
)
go

/*==============================================================*/
/* Table: MEMBERS                                               */
/*==============================================================*/
create table MEMBERS (
   MEM_ID               int                  identity,
   ACCOUNT              nvarchar(100)        not null,
   PASSWORD             nvarchar(255)        not null,
   FULLNAME             nvarchar(100)        not null,
   GENDER               bit                  null,
   EMAIL                nvarchar(100)        null,
   PHONE                nvarchar(50)         null,
   CREATEDDATE          datetime             not null,
   CREATEDBY            int                  not null,
   constraint PK_MEMBERS primary key (MEM_ID)
)
go

/*==============================================================*/
/* Table: TITLES                                                */
/*==============================================================*/
create table TITLES (
   TIT_ID               int                  identity,
   TITLE                nvarchar(255)        not null,
   PUBLISHINGYEAR       int                  null,
   PUBLISHER            nvarchar(255)        not null,
   AUTHOR               nvarchar(255)        not null,
   DESCRIPTION          ntext                null,
   CREATEDDATE          datetime             not null,
   CREATEDBY            int                  not null,
   constraint PK_TITLES primary key (TIT_ID)
)
go

alter table BOOKS
   add constraint FK_BOOKS_RELATIONS_TITLES foreign key (TIT_ID)
      references TITLES (TIT_ID)
go

alter table CHECKOUTDETAILS
   add constraint FK_CHECKOUT_RELATIONS_CHECKOUT foreign key (CHK_ID)
      references CHECKOUTS (CHK_ID)
go

alter table CHECKOUTDETAILS
   add constraint FK_CHECKOUT_RELATIONS_BOOKS foreign key (BOO_ID)
      references BOOKS (BOO_ID)
go

alter table CHECKOUTS
   add constraint FK_CHECKOUT_RELATIONS_LIBRARIA foreign key (LIB_ID)
      references LIBRARIANS (LIB_ID)
go

alter table CHECKOUTS
   add constraint FK_CHECKOUT_RELATIONS_MEMBERS foreign key (MEM_ID)
      references MEMBERS (MEM_ID)
go

