/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     8/21/2018 4:34:18 PM                         */
/*==============================================================*/
CREATE DATABASE TESTPHAN2
GO
USE TESTPHAN2
GO

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CT_MUON') and o.name = 'FK_CT_MUON_RELATIONS_SACH')
alter table CT_MUON
   drop constraint FK_CT_MUON_RELATIONS_SACH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('CT_MUON') and o.name = 'FK_CT_MUON_RELATIONS_PHIEUMUO')
alter table CT_MUON
   drop constraint FK_CT_MUON_RELATIONS_PHIEUMUO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('PHIEUMUON') and o.name = 'FK_PHIEUMUO_DG_MUON_DOCGIA')
alter table PHIEUMUON
   drop constraint FK_PHIEUMUO_DG_MUON_DOCGIA
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('SACH') and o.name = 'FK_SACH_CO_LOAISACH')
alter table SACH
   drop constraint FK_SACH_CO_LOAISACH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CT_MUON')
            and   name  = 'RELATIONSHIP_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index CT_MUON.RELATIONSHIP_5_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('CT_MUON')
            and   name  = 'RELATIONSHIP_4_FK'
            and   indid > 0
            and   indid < 255)
   drop index CT_MUON.RELATIONSHIP_4_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CT_MUON')
            and   type = 'U')
   drop table CT_MUON
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DOCGIA')
            and   type = 'U')
   drop table DOCGIA
go

if exists (select 1
            from  sysobjects
           where  id = object_id('LOAISACH')
            and   type = 'U')
   drop table LOAISACH
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('PHIEUMUON')
            and   name  = 'DG_MUON_FK'
            and   indid > 0
            and   indid < 255)
   drop index PHIEUMUON.DG_MUON_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PHIEUMUON')
            and   type = 'U')
   drop table PHIEUMUON
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('SACH')
            and   name  = 'CO_FK'
            and   indid > 0
            and   indid < 255)
   drop index SACH.CO_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SACH')
            and   type = 'U')
   drop table SACH
go

/*==============================================================*/
/* Table: CT_MUON                                               */
/*==============================================================*/
create table CT_MUON (
   MACTPMT              int                  not null,
   MAPHIEU              int                  not null,
   MASACH               int                  null,
   SOLUONGMUON          int                  not null,
   constraint PK_CT_MUON primary key (MACTPMT)
)
go

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_4_FK on CT_MUON (MASACH ASC)
go

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/




create nonclustered index RELATIONSHIP_5_FK on CT_MUON (MAPHIEU ASC)
go

/*==============================================================*/
/* Table: DOCGIA                                                */
/*==============================================================*/
create table DOCGIA (
   SOTHE                varchar(150)         not null,
   CMND                 char(50)             not null,
   HOTEN                varchar(300)         null,
   PHAI                 int                  null,
   NGAYSINH             datetime             null,
   DIACHI               varchar(500)         not null,
   constraint PK_DOCGIA primary key (SOTHE)
)
go

/*==============================================================*/
/* Table: LOAISACH                                              */
/*==============================================================*/
create table LOAISACH (
   MALOAI               int                  not null,
   TENLOAI              varchar(250)         not null,
   constraint PK_LOAISACH primary key (MALOAI)
)
go

/*==============================================================*/
/* Table: PHIEUMUON                                             */
/*==============================================================*/
create table PHIEUMUON (
   MAPHIEU              int                  not null,
   SOTHE                varchar(150)         not null,
   NGAYMUON             datetime             not null,
   NGAYTRA              datetime             not null,
   NGAYTRATT            datetime             null,
   constraint PK_PHIEUMUON primary key (MAPHIEU)
)
go

/*==============================================================*/
/* Index: DG_MUON_FK                                            */
/*==============================================================*/




create nonclustered index DG_MUON_FK on PHIEUMUON (SOTHE ASC)
go

/*==============================================================*/
/* Table: SACH                                                  */
/*==============================================================*/
create table SACH (
   MASACH               int                  not null,
   MALOAI               int                  not null,
   TENSACH              varchar(350)         not null,
   TACGIA               varchar(250)         not null,
   NHAXB                varchar(350)         not null,
   LANXB                varchar(100)         null,
   NAMXB                int                  null,
   GIABAN               int                  not null,
   SOLUONGHC            int                  not null,
   constraint PK_SACH primary key (MASACH)
)
go

/*==============================================================*/
/* Index: CO_FK                                                 */
/*==============================================================*/




create nonclustered index CO_FK on SACH (MALOAI ASC)
go

alter table CT_MUON
   add constraint FK_CT_MUON_RELATIONS_SACH foreign key (MASACH)
      references SACH (MASACH)
go

alter table CT_MUON
   add constraint FK_CT_MUON_RELATIONS_PHIEUMUO foreign key (MAPHIEU)
      references PHIEUMUON (MAPHIEU)
go

alter table PHIEUMUON
   add constraint FK_PHIEUMUO_DG_MUON_DOCGIA foreign key (SOTHE)
      references DOCGIA (SOTHE)
go

alter table SACH
   add constraint FK_SACH_CO_LOAISACH foreign key (MALOAI)
      references LOAISACH (MALOAI)
go

