/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     8/20/2018 8:53:24 PM                         */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('BOOK') and o.name = 'FK_BOOK_THUOC_TITLES')
alter table BOOK
   drop constraint FK_BOOK_THUOC_TITLES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHANLOAI') and o.name = 'FK_PHANLOAI_PHANLOAI_TITLES')
alter table PHANLOAI
   drop constraint FK_PHANLOAI_PHANLOAI_TITLES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHANLOAI') and o.name = 'FK_PHANLOAI_PHANLOAI2_SUBJECTS')
alter table PHANLOAI
   drop constraint FK_PHANLOAI_PHANLOAI2_SUBJECTS
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('BOOK')
            and   name  = 'THUOC_FK'
            and   indid > 0
            and   indid < 255)
   drop index BOOK.THUOC_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('BOOK')
            and   type = 'U')
   drop table BOOK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHANLOAI')
            and   name  = 'PHANLOAI_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHANLOAI.PHANLOAI_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHANLOAI')
            and   name  = 'PHANLOAI2_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHANLOAI.PHANLOAI2_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHANLOAI')
            and   type = 'U')
   drop table PHANLOAI
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SUBJECTS')
            and   type = 'U')
   drop table SUBJECTS
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TITLES')
            and   type = 'U')
   drop table TITLES
go

/*==============================================================*/
/* Table: BOOK                                                  */
/*==============================================================*/
create table BOOK (
   ID_BOOK              bigint               not null,
   ID_TITLES            bigint               not null,
   BARCODE              varchar(100)         not null,
   constraint PK_BOOK primary key nonclustered (ID_BOOK)
)
go

/*==============================================================*/
/* Index: THUOC_FK                                              */
/*==============================================================*/
create index THUOC_FK on BOOK (
ID_TITLES ASC
)
go

/*==============================================================*/
/* Table: PHANLOAI                                              */
/*==============================================================*/
create table PHANLOAI (
   ID_TITLES            bigint               not null,
   ID_SUBJECT           bigint               not null,
   constraint PK_PHANLOAI primary key nonclustered (ID_TITLES, ID_SUBJECT)
)
go

/*==============================================================*/
/* Index: PHANLOAI2_FK                                          */
/*==============================================================*/
create index PHANLOAI2_FK on PHANLOAI (
ID_SUBJECT ASC
)
go

/*==============================================================*/
/* Index: PHANLOAI_FK                                           */
/*==============================================================*/
create index PHANLOAI_FK on PHANLOAI (
ID_TITLES ASC
)
go

/*==============================================================*/
/* Table: SUBJECTS                                              */
/*==============================================================*/
create table SUBJECTS (
   ID_SUBJECT           bigint               not null,
   MACHUDE              varchar(100)         not null,
   TEN                  varchar(100)         not null,
   constraint PK_SUBJECTS primary key nonclustered (ID_SUBJECT)
)
go

/*==============================================================*/
/* Table: TITLES                                                */
/*==============================================================*/
create table TITLES (
   ID_TITLES            bigint               not null,
   ISBN                 varchar(100)         not null,
   TENSACH              varchar(100)         not null,
   NHAXUATBAN           varchar(100)         not null,
   TACGIA               varchar(100)         not null,
   SOTRANG              int                  not null,
   constraint PK_TITLES primary key nonclustered (ID_TITLES)
)
go

alter table BOOK
   add constraint FK_BOOK_THUOC_TITLES foreign key (ID_TITLES)
      references TITLES (ID_TITLES)
go

alter table PHANLOAI
   add constraint FK_PHANLOAI_PHANLOAI_TITLES foreign key (ID_TITLES)
      references TITLES (ID_TITLES)
go

alter table PHANLOAI
   add constraint FK_PHANLOAI_PHANLOAI2_SUBJECTS foreign key (ID_SUBJECT)
      references SUBJECTS (ID_SUBJECT)
go

