USE [master]
GO
/****** Object:  Database [1510]    Script Date: 10/15/2018 13:37:01 ******/
CREATE DATABASE [1510]
GO
USE [1510]
GO
/****** Object:  Table [dbo].[CumQuyen]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CumQuyen](
	[ID_CQ] [bigint] NOT NULL,
	[MaCQ] [varchar](50) NOT NULL,
	[TenCQ] [ntext] NOT NULL,
	[MoTaCQ] [ntext] NULL,
	[HT_CQ] [bit] NOT NULL,
	[Xoa_CQ] [bit] NOT NULL,
	[NgayTaoCQ] [datetime] NULL,
	[NguoiTaoCQ] [nvarchar](250) NULL,
	[NgayCNCQ] [datetime] NULL,
	[NguoiCNCQ] [nvarchar](250) NULL,
	[KhacCQ] [nvarchar](250) NULL,
 CONSTRAINT [PK_CumQuyen] PRIMARY KEY CLUSTERED 
(
	[ID_CQ] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__CumQuyen__27258E0A00551192] UNIQUE NONCLUSTERED 
(
	[MaCQ] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Loai_CH]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Loai_CH](
	[ID_LoaiCH] [bigint] NOT NULL,
	[MaLoai_CH] [nvarchar](250) NOT NULL,
	[TenLoai_CH] [nvarchar](300) NULL,
	[HT_Loai] [bit] NOT NULL,
	[Xoa_LCH] [bit] NOT NULL,
	[Khac_LCH] [nvarchar](250) NULL,
 CONSTRAINT [PK_LOAI_CH] PRIMARY KEY NONCLUSTERED 
(
	[ID_LoaiCH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_IDENTIFIER_2_LOAI_CH] UNIQUE NONCLUSTERED 
(
	[MaLoai_CH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Loai_CH__7CA3C8FF0425A276] UNIQUE NONCLUSTERED 
(
	[MaLoai_CH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonHoc](
	[ID_MonHoc] [bigint] NOT NULL,
	[Ma_MonHoc] [nvarchar](30) NOT NULL,
	[TenMonHoc] [nvarchar](100) NOT NULL,
	[HT_MonHoc] [bit] NOT NULL,
	[Xoa_MonHoc] [bit] NOT NULL,
	[NguoiTao_MonHoc] [nvarchar](250) NOT NULL,
	[NgayTao_MonHoc] [datetime] NOT NULL,
	[NguoiCN_MonHoc] [nvarchar](250) NULL,
	[NgayCN_MonHoc] [datetime] NULL,
	[Khac_MonHoc] [nvarchar](250) NULL,
 CONSTRAINT [PK_MONHOC] PRIMARY KEY NONCLUSTERED 
(
	[ID_MonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__MonHoc__3924C9EB09DE7BCC] UNIQUE NONCLUSTERED 
(
	[Ma_MonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__MonHoc__3924C9EB3454110C] UNIQUE NONCLUSTERED 
(
	[Ma_MonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManHinh]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManHinh](
	[ID_ManHinh] [bigint] NOT NULL,
	[MaManHinh] [nvarchar](250) NOT NULL,
	[TenManHinh] [nvarchar](100) NULL,
	[HT_ManHinh] [bit] NOT NULL,
	[Xoa_ManHinh] [bit] NOT NULL,
	[MoTaManHinh] [ntext] NOT NULL,
	[URL] [nvarchar](300) NOT NULL,
	[Khac_MaHinh] [nvarchar](250) NULL,
 CONSTRAINT [PK_MANHINH] PRIMARY KEY NONCLUSTERED 
(
	[ID_ManHinh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_IDENTIFIER_2_MANHINH] UNIQUE NONCLUSTERED 
(
	[URL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__ManHinh__D84939230F975522] UNIQUE NONCLUSTERED 
(
	[MaManHinh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThiSinh]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThiSinh](
	[ID_TK] [bigint] NOT NULL,
	[MADN_TS] [nvarchar](250) NOT NULL,
	[Ho_ThiSinh] [nvarchar](250) NOT NULL,
	[Ten_ThiSinh] [nvarchar](250) NOT NULL,
	[MatKhau_ThiSinh] [nvarchar](200) NOT NULL,
	[GioiTinh_ThiSinh] [nvarchar](10) NOT NULL,
	[Email_ThiSinh] [nvarchar](250) NOT NULL,
	[DienThoai_ThiSinh] [nvarchar](20) NOT NULL,
	[DiaChi_ThiSinh] [nvarchar](300) NOT NULL,
	[NgaySinh_ThiSinh] [date] NOT NULL,
	[HT_ThiSinh] [bit] NOT NULL,
	[Xoa_ThiSinh] [bit] NOT NULL,
	[NguoiTao_ThiSinh] [nvarchar](250) NOT NULL,
	[NgayTao_ThiSinh] [datetime] NOT NULL,
	[NguoiCN_ThiSinh] [nvarchar](250) NULL,
	[NgayCN_ThiSinh] [datetime] NULL,
	[Khac_ThiSinh] [nvarchar](300) NULL,
 CONSTRAINT [PK_THISINH] PRIMARY KEY NONCLUSTERED 
(
	[ID_TK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_IDENTIFIER_2_THISINH] UNIQUE NONCLUSTERED 
(
	[MADN_TS] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[ID_PhanQuyen] [bigint] NOT NULL,
	[ID_ManHinh] [bigint] NOT NULL,
	[ID_CQ] [bigint] NULL,
	[CoQuyen] [bit] NOT NULL,
	[ChiDoc] [bit] NOT NULL,
	[Them] [bit] NOT NULL,
	[Sua] [bit] NOT NULL,
	[Xoa] [bit] NOT NULL,
	[HT_PQ] [bit] NOT NULL,
	[Xoa_PQ] [bit] NOT NULL,
	[NgayBD_PQ] [datetime] NOT NULL,
	[NgayKT_PQ] [datetime] NOT NULL,
	[NgayKT_TT] [datetime] NULL,
	[NguoiTao_PQ] [nvarchar](250) NOT NULL,
	[NgayTao_PQ] [datetime] NOT NULL,
	[NguoiCN_PQ] [nvarchar](250) NULL,
	[NgayCN_PQ] [datetime] NULL,
	[Khac_PQ] [nvarchar](250) NULL,
 CONSTRAINT [PK_PHANQUYEN] PRIMARY KEY NONCLUSTERED 
(
	[ID_PhanQuyen] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RELATIONSHIP_16_FK] ON [dbo].[PhanQuyen] 
(
	[ID_ManHinh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeMuc]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeMuc](
	[ID_DeMuc] [bigint] NOT NULL,
	[ID_MonHoc] [bigint] NOT NULL,
	[Ma_DeMuc] [nvarchar](30) NOT NULL,
	[Ten_DeMuc] [nvarchar](100) NOT NULL,
	[HT_DeMuc] [bit] NOT NULL,
	[Xoa_DeMuc] [bit] NOT NULL,
	[NguoiTao_DM] [nvarchar](250) NOT NULL,
	[NgayTao_DM] [datetime] NOT NULL,
	[NguoiCN_DM] [nvarchar](250) NULL,
	[NgayCN_DM] [datetime] NULL,
	[Khac_DeMuc] [nvarchar](250) NULL,
 CONSTRAINT [PK_DEMUC] PRIMARY KEY NONCLUSTERED 
(
	[ID_DeMuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__DeMuc__0C1E4F271B0907CE] UNIQUE NONCLUSTERED 
(
	[Ma_DeMuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__DeMuc__0C1E4F27CE04D15C] UNIQUE NONCLUSTERED 
(
	[Ma_DeMuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CODEMUC_FK] ON [dbo].[DeMuc] 
(
	[ID_MonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhSach_DeThi]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhSach_DeThi](
	[ID_DE] [bigint] NOT NULL,
	[ID_MonHoc] [bigint] NOT NULL,
	[Ma_DeThi] [nvarchar](30) NOT NULL,
	[Ten_DeThi] [nvarchar](50) NOT NULL,
	[TrangThai_DeThi] [bit] NOT NULL,
	[TrangThai_Tron_DeThi] [bit] NOT NULL,
	[HT_DeThi] [bit] NOT NULL,
	[Xoa_DeThi] [bit] NOT NULL,
	[ThoiGianLamBai] [int] NOT NULL,
	[NgayBatDau_SuDung] [datetime] NOT NULL,
	[NgayKetThucDuKien] [datetime] NOT NULL,
	[NgayKetThucThatTe] [datetime] NULL,
	[NguoiTao_DeThi] [nvarchar](250) NOT NULL,
	[NgayTao_DeThi] [datetime] NOT NULL,
	[NguoiCN_DeThi] [nvarchar](250) NULL,
	[NgayCN_DeThi] [datetime] NULL,
	[Khac_DeThi] [nvarchar](300) NULL,
 CONSTRAINT [PK_DANHSACH_DETHI] PRIMARY KEY NONCLUSTERED 
(
	[ID_DE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__DanhSach__0EBE1DBD20C1E124] UNIQUE NONCLUSTERED 
(
	[Ma_DeThi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__DanhSach__0EBE1DBD948C9718] UNIQUE NONCLUSTERED 
(
	[Ma_DeThi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CODSDETHI_FK] ON [dbo].[DanhSach_DeThi] 
(
	[ID_MonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangKy]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangKy](
	[ID_DANGKY] [bigint] NOT NULL,
	[ID_TK] [bigint] NOT NULL,
	[ID_MonHoc] [bigint] NOT NULL,
	[Ngay_DangKy] [datetime] NOT NULL,
	[CamThi] [bit] NOT NULL,
	[NguoiCN_DangKy] [nvarchar](250) NULL,
	[NgayCN_DangKy] [datetime] NULL,
	[HT_DangKy] [bit] NOT NULL,
	[Xoa_DangKy] [bit] NOT NULL,
	[Khac_DangKy] [nvarchar](250) NULL,
 CONSTRAINT [PK_DANGKY] PRIMARY KEY NONCLUSTERED 
(
	[ID_DANGKY] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DANGKY_FK] ON [dbo].[DangKy] 
(
	[ID_TK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MH_MT_FK] ON [dbo].[DangKy] 
(
	[ID_MonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiaoVien]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaoVien](
	[ID_GV] [bigint] NOT NULL,
	[ID_CQ] [bigint] NULL,
	[MADN_GV] [nvarchar](250) NOT NULL,
	[Ho_GV] [nvarchar](250) NOT NULL,
	[Ten_GV] [nvarchar](250) NOT NULL,
	[MatKhau_GV] [nvarchar](250) NOT NULL,
	[Email_GV] [nvarchar](250) NOT NULL,
	[DienThoai_GV] [nvarchar](20) NOT NULL,
	[DiaChi_GV] [nvarchar](200) NOT NULL,
	[NgaySinh_GV] [date] NOT NULL,
	[GioiTinh_GV] [nvarchar](10) NOT NULL,
	[HT_GV] [bit] NOT NULL,
	[Xoa_GV] [bit] NOT NULL,
	[NguoiTao_GV] [nvarchar](250) NOT NULL,
	[NgayTao_GV] [datetime] NOT NULL,
	[NguoiCN_GV] [nvarchar](250) NULL,
	[NgayCN_GV] [datetime] NULL,
	[Khac_GV] [nvarchar](300) NULL,
 CONSTRAINT [PK_GIAOVIEN] PRIMARY KEY NONCLUSTERED 
(
	[ID_GV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_IDENTIFIER_2_GIAOVIEN] UNIQUE NONCLUSTERED 
(
	[MADN_GV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__GiaoVien__01CEA177286302EC] UNIQUE NONCLUSTERED 
(
	[MADN_GV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__GiaoVien__01CEA1779C993962] UNIQUE NONCLUSTERED 
(
	[MADN_GV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiangDay]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangDay](
	[ID_GIANGDAY] [bigint] NOT NULL,
	[ID_GV] [bigint] NOT NULL,
	[ID_MonHoc] [bigint] NOT NULL,
	[NgayBatDau_GiangDay] [datetime] NOT NULL,
	[NgayKetThuc_GiangDay] [datetime] NULL,
	[NgayKetThuc_GiangDay_ThucTe] [datetime] NULL,
	[NguoiCN_GiangDay] [nvarchar](250) NULL,
	[NgayCN_GiangDay] [datetime] NULL,
	[HT_GiangDay] [bit] NOT NULL,
	[Xoa_GiangDay] [bit] NOT NULL,
	[Khac_GiangDay] [nvarchar](250) NULL,
 CONSTRAINT [PK_GIANGDAY] PRIMARY KEY NONCLUSTERED 
(
	[ID_GIANGDAY] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DAY_FK] ON [dbo].[GiangDay] 
(
	[ID_GV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DUOCNHANBOI_FK] ON [dbo].[GiangDay] 
(
	[ID_MonHoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CauHoi]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHoi](
	[ID_CH] [bigint] NOT NULL,
	[ID_LoaiCH] [bigint] NOT NULL,
	[ID_DeMuc] [bigint] NOT NULL,
	[NoiDung_CauHoi] [ntext] NOT NULL,
	[CapDo] [int] NOT NULL,
	[TrangThaiTron_CauHoi] [bit] NOT NULL,
	[HT_CauHoi] [bit] NOT NULL,
	[Xoa_CauHoi] [bit] NOT NULL,
	[Diem_CauHoi] [float] NOT NULL,
	[NguoiTao_CauHoi] [nvarchar](250) NOT NULL,
	[NgayTao_CauHoi] [datetime] NOT NULL,
	[NguoiCN_CauHoi] [nvarchar](250) NULL,
	[NgayCN_CauHoi] [datetime] NULL,
	[Khac_CauHoi] [nvarchar](250) NULL,
 CONSTRAINT [PK_CAUHOI] PRIMARY KEY NONCLUSTERED 
(
	[ID_CH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CO_FK] ON [dbo].[CauHoi] 
(
	[ID_DeMuc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [THUOCLOAI_FK] ON [dbo].[CauHoi] 
(
	[ID_LoaiCH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BaiThi]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BaiThi](
	[ID_BAITHI] [bigint] NOT NULL,
	[ID_DE] [bigint] NOT NULL,
	[ID_DANGKY] [bigint] NOT NULL,
	[Ma_BaiThi] [nvarchar](250) NOT NULL,
	[NgayThi] [datetime] NOT NULL,
	[ThoiGianConLai_BaiThi] [int] NULL,
	[HT_BaiThi] [bit] NOT NULL,
	[Xoa_BaiThi] [bit] NOT NULL,
	[ThuTu_CauHoi] [nvarchar](250) NULL,
	[Khac_BaiThi] [nvarchar](250) NULL,
 CONSTRAINT [PK_BAITHI] PRIMARY KEY NONCLUSTERED 
(
	[ID_BAITHI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_IDENTIFIER_2_BAITHI] UNIQUE NONCLUSTERED 
(
	[Ma_BaiThi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__BaiThi__46FC202831EC6D26] UNIQUE NONCLUSTERED 
(
	[Ma_BaiThi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [RELATIONSHIP_13_FK] ON [dbo].[BaiThi] 
(
	[ID_DANGKY] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [THUOC_FK] ON [dbo].[BaiThi] 
(
	[ID_DE] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSu_CH]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSu_CH](
	[ID_LS_CH] [bigint] NOT NULL,
	[ID_CH] [bigint] NOT NULL,
	[MoTa_HanhDong] [nvarchar](10) NOT NULL,
	[NoiDungCN_LS_CH] [ntext] NOT NULL,
	[NoiDung_Cu_LS_CH] [ntext] NOT NULL,
	[NoiDung_Moi_LS_CH] [ntext] NULL,
	[DiemCH_Cu] [float] NOT NULL,
	[DiemCH_Moi] [float] NULL,
	[CapDoCH_Cu] [int] NOT NULL,
	[CapDoCH_Moi] [int] NULL,
	[NguoiCN_LS_CH] [nvarchar](250) NOT NULL,
	[NgayCN_LS_CH] [datetime] NOT NULL,
	[HT_LS_CH] [bit] NOT NULL,
	[Xoa_LS_CH] [bit] NOT NULL,
	[Khac_LS_CH] [nvarchar](250) NULL,
 CONSTRAINT [PK_LICHSU_CH] PRIMARY KEY NONCLUSTERED 
(
	[ID_LS_CH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CAPNHAT_CH_FK] ON [dbo].[LichSu_CH] 
(
	[ID_CH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LuaChon]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LuaChon](
	[ID_LUACHON] [bigint] NOT NULL,
	[ID_CH] [bigint] NOT NULL,
	[MaLuaChon] [nvarchar](100) NOT NULL,
	[NoiDung_LuaChon] [ntext] NOT NULL,
	[DapAn] [bit] NOT NULL,
	[HT_LuaChon] [bit] NOT NULL,
	[Xoa_LuaChon] [bit] NOT NULL,
	[NguoiTao_LuaChon] [nvarchar](250) NOT NULL,
	[NgayTao_LuaChon] [datetime] NOT NULL,
	[NguoiCN_LuaChon] [nvarchar](250) NULL,
	[NgayCN_LuaChon] [datetime] NULL,
	[Khac_LuaChon] [nvarchar](250) NULL,
 CONSTRAINT [PK_LUACHON] PRIMARY KEY NONCLUSTERED 
(
	[ID_LUACHON] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__LuaChon__99B0F9F9398D8EEE] UNIQUE NONCLUSTERED 
(
	[MaLuaChon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SOHUU_FK] ON [dbo].[LuaChon] 
(
	[ID_CH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTiet_DeThi]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_DeThi](
	[ID_CTDT] [bigint] NOT NULL,
	[ID_DE] [bigint] NOT NULL,
	[ID_CH] [bigint] NOT NULL,
	[ThuTu_DeThi] [int] NOT NULL,
	[HT_ChiTiet_DT] [bit] NOT NULL,
	[Xoa_CTDT] [bit] NOT NULL,
	[NguoiTao_CTDT] [nvarchar](250) NULL,
	[NgayTao_CTDT] [datetime] NULL,
	[NguoiCN_CTDT] [nvarchar](250) NULL,
	[NgayCN_CTDT] [datetime] NULL,
	[Khac_ChiTiet_DeThi] [nvarchar](250) NULL,
 CONSTRAINT [PK_CHITIET_DETHI] PRIMARY KEY NONCLUSTERED 
(
	[ID_CTDT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTiet_BaiThi]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTiet_BaiThi](
	[ID_CTBAITHI] [bigint] NOT NULL,
	[ID_BAITHI] [bigint] NOT NULL,
	[ID_CauHoi] [bigint] NOT NULL,
	[ThiSinh_LuaChon] [nvarchar](350) NULL,
	[HT_ChiTiet_BaiThi] [bit] NOT NULL,
	[Xoa_CTBT] [bit] NOT NULL,
	[Diem_BaiThi] [float] NOT NULL,
	[ThuTu_LuaChon] [nvarchar](250) NULL,
	[TT_TraLoi] [bit] NULL,
	[Khac_CTBT] [nvarchar](250) NULL,
 CONSTRAINT [PK_CHITIET_BAITHI] PRIMARY KEY NONCLUSTERED 
(
	[ID_CTBAITHI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__ChiTiet___B4DD32237BE81103] UNIQUE NONCLUSTERED 
(
	[ThuTu_LuaChon] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CO1_FK] ON [dbo].[ChiTiet_BaiThi] 
(
	[ID_BAITHI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSu_LC]    Script Date: 10/15/2018 13:37:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSu_LC](
	[ID_LS_LC] [bigint] NOT NULL,
	[ID_LUACHON] [bigint] NOT NULL,
	[MoTa_LS_LC] [nvarchar](10) NOT NULL,
	[NoiDungCN_LS_LC] [ntext] NOT NULL,
	[NoiDungMoi_LS_LC] [ntext] NULL,
	[NoiDungCu_LS_LC] [ntext] NULL,
	[NguoiCN_LS_LC] [nvarchar](250) NOT NULL,
	[Ngay_LS_LC] [datetime] NOT NULL,
	[HT_LS_LC] [bit] NOT NULL,
	[Xoa_LS_LC] [bit] NOT NULL,
	[Khac_LS_LC] [nvarchar](250) NULL,
 CONSTRAINT [PK_LICHSU_LC] PRIMARY KEY NONCLUSTERED 
(
	[ID_LS_LC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CAPNHAT_LC_FK] ON [dbo].[LichSu_LC] 
(
	[ID_LUACHON] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Default [DF__HT_CQ__3E56440B]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[CumQuyen] ADD  CONSTRAINT [DF__HT_CQ__3E56440B]  DEFAULT ((1)) FOR [HT_CQ]
GO
/****** Object:  Default [DF__Xoa_CQ__3E56440B]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[CumQuyen] ADD  CONSTRAINT [DF__Xoa_CQ__3E56440B]  DEFAULT ((0)) FOR [Xoa_CQ]
GO
/****** Object:  Default [DF__Loai_CH__HT_Loai__4BAC3F29]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[Loai_CH] ADD  CONSTRAINT [DF__Loai_CH__HT_Loai__4BAC3F29]  DEFAULT ((1)) FOR [HT_Loai]
GO
/****** Object:  Default [DF__Loai_CH__Xoa_LCH__4BAC3F29]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[Loai_CH] ADD  CONSTRAINT [DF__Loai_CH__Xoa_LCH__4BAC3F29]  DEFAULT ((0)) FOR [Xoa_LCH]
GO
/****** Object:  Default [DF__MonHoc__HT_MonHo__5070F446]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[MonHoc] ADD  CONSTRAINT [DF__MonHoc__HT_MonHo__5070F446]  DEFAULT ((1)) FOR [HT_MonHoc]
GO
/****** Object:  Default [DF__MonHoc__Xoa_MonHoc__5070F446]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[MonHoc] ADD  CONSTRAINT [DF__MonHoc__Xoa_MonHoc__5070F446]  DEFAULT ((0)) FOR [Xoa_MonHoc]
GO
/****** Object:  Default [DF__MonHoc__NgayTao___5165187F]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[MonHoc] ADD  CONSTRAINT [DF__MonHoc__NgayTao___5165187F]  DEFAULT (getdate()) FOR [NgayTao_MonHoc]
GO
/****** Object:  Default [DF__ManHinh__HT_ManH__4CA06362]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ManHinh] ADD  CONSTRAINT [DF__ManHinh__HT_ManH__4CA06362]  DEFAULT ((1)) FOR [HT_ManHinh]
GO
/****** Object:  Default [DF__ManHinh__Xoa_ManHinh__4CA06362]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ManHinh] ADD  CONSTRAINT [DF__ManHinh__Xoa_ManHinh__4CA06362]  DEFAULT ((0)) FOR [Xoa_ManHinh]
GO
/****** Object:  Default [DF__ThiSinh__HT_ThiS__5629CD9C]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ThiSinh] ADD  CONSTRAINT [DF__ThiSinh__HT_ThiS__5629CD9C]  DEFAULT ((1)) FOR [HT_ThiSinh]
GO
/****** Object:  Default [DF__ThiSinh__Xoa_ThiSinh_5629CD39C]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ThiSinh] ADD  CONSTRAINT [DF__ThiSinh__Xoa_ThiSinh_5629CD39C]  DEFAULT ((0)) FOR [Xoa_ThiSinh]
GO
/****** Object:  Default [DF__ThiSinh__NgayTao__571DF1D5]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ThiSinh] ADD  CONSTRAINT [DF__ThiSinh__NgayTao__571DF1D5]  DEFAULT (getdate()) FOR [NgayTao_ThiSinh]
GO
/****** Object:  Default [DF__PhanQuyen__CoQuy__52593CB8]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__CoQuy__52593CB8]  DEFAULT ((1)) FOR [CoQuyen]
GO
/****** Object:  Default [DF__PhanQuyen__ChiDo__49C3F6B7]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__ChiDo__49C3F6B7]  DEFAULT ((1)) FOR [ChiDoc]
GO
/****** Object:  Default [DF__PhanQuyen__Them__4AB81AF0]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__Them__4AB81AF0]  DEFAULT ((0)) FOR [Them]
GO
/****** Object:  Default [DF__PhanQuyen__Sua__4BAC3F29]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__Sua__4BAC3F29]  DEFAULT ((0)) FOR [Sua]
GO
/****** Object:  Default [DF__PhanQuyen__Xoa__4CA06362]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__Xoa__4CA06362]  DEFAULT ((0)) FOR [Xoa]
GO
/****** Object:  Default [DF__PhanQuyen__HT_PQ__534D60F1]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__HT_PQ__534D60F1]  DEFAULT ((1)) FOR [HT_PQ]
GO
/****** Object:  Default [DF__PhanQuyen__Xoa_PQ_4CA06362]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__Xoa_PQ_4CA06362]  DEFAULT ((0)) FOR [Xoa_PQ]
GO
/****** Object:  Default [DF__PhanQuyen__NgayB__5441852A]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__NgayB__5441852A]  DEFAULT (getdate()) FOR [NgayBD_PQ]
GO
/****** Object:  Default [DF__PhanQuyen__NgayT__5535A963]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[PhanQuyen] ADD  CONSTRAINT [DF__PhanQuyen__NgayT__5535A963]  DEFAULT (getdate()) FOR [NgayTao_PQ]
GO
/****** Object:  Default [DF__DeMuc__HT_DeMuc__45F365D3]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DeMuc] ADD  CONSTRAINT [DF__DeMuc__HT_DeMuc__45F365D3]  DEFAULT ((1)) FOR [HT_DeMuc]
GO
/****** Object:  Default [DF__DeMuc_Xoa_DeMuc__44FF419A]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DeMuc] ADD  CONSTRAINT [DF__DeMuc_Xoa_DeMuc__44FF419A]  DEFAULT ((0)) FOR [Xoa_DeMuc]
GO
/****** Object:  Default [DF__DeMuc__NgayTao_D__46E78A0C]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DeMuc] ADD  CONSTRAINT [DF__DeMuc__NgayTao_D__46E78A0C]  DEFAULT (getdate()) FOR [NgayTao_DM]
GO
/****** Object:  Default [DF__DanhSach___Trang__412EB0B6]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  CONSTRAINT [DF__DanhSach___Trang__412EB0B6]  DEFAULT ((1)) FOR [TrangThai_DeThi]
GO
/****** Object:  Default [DF__DanhSach___Trang__4222D4EF]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  CONSTRAINT [DF__DanhSach___Trang__4222D4EF]  DEFAULT ((1)) FOR [TrangThai_Tron_DeThi]
GO
/****** Object:  Default [DF__DanhSach___HT_De__4316F928]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  CONSTRAINT [DF__DanhSach___HT_De__4316F928]  DEFAULT ((1)) FOR [HT_DeThi]
GO
/****** Object:  Default [DF__DanhSach___Xoa_DeThi__44FF419A]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  CONSTRAINT [DF__DanhSach___Xoa_DeThi__44FF419A]  DEFAULT ((0)) FOR [Xoa_DeThi]
GO
/****** Object:  Default [DF__DanhSach___NgayB__440B1D61]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  CONSTRAINT [DF__DanhSach___NgayB__440B1D61]  DEFAULT (getdate()) FOR [NgayBatDau_SuDung]
GO
/****** Object:  Default [DF__DanhSach___NgayT__44FF419A]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DanhSach_DeThi] ADD  CONSTRAINT [DF__DanhSach___NgayT__44FF419A]  DEFAULT (getdate()) FOR [NgayTao_DeThi]
GO
/****** Object:  Default [DF__DangKy__Ngay_Dan__3F466844]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DangKy] ADD  CONSTRAINT [DF__DangKy__Ngay_Dan__3F466844]  DEFAULT (getdate()) FOR [Ngay_DangKy]
GO
/****** Object:  Default [DF__DangKy__CamThi__403A8C7D]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DangKy] ADD  CONSTRAINT [DF__DangKy__CamThi__403A8C7D]  DEFAULT ((0)) FOR [CamThi]
GO
/****** Object:  Default [DF__GiaoVien__HT_GV__3B75D760]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [DF__GiaoVien__HT_GV__3B75D760]  DEFAULT ((1)) FOR [HT_GV]
GO
/****** Object:  Default [DF__GiaoVien__Xoa_GV__3B75D760]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [DF__GiaoVien__Xoa_GV__3B75D760]  DEFAULT ((0)) FOR [Xoa_GV]
GO
/****** Object:  Default [DF__GiaoVien__NgayTa__3C69FB99]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[GiaoVien] ADD  CONSTRAINT [DF__GiaoVien__NgayTa__3C69FB99]  DEFAULT (getdate()) FOR [NgayTao_GV]
GO
/****** Object:  Default [DF__GiangDay__NgayBa__34C8D9D1]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[GiangDay] ADD  CONSTRAINT [DF__GiangDay__NgayBa__34C8D9D1]  DEFAULT (getdate()) FOR [NgayBatDau_GiangDay]
GO
/****** Object:  Default [DF__GiangDay__HT_Gia__35BCFE0A]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[GiangDay] ADD  CONSTRAINT [DF__GiangDay__HT_Gia__35BCFE0A]  DEFAULT ((1)) FOR [HT_GiangDay]
GO
/****** Object:  Default [DF__GiangDay__Xoa_GiangDay__35BCFE0A]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[GiangDay] ADD  CONSTRAINT [DF__GiangDay__Xoa_GiangDay__35BCFE0A]  DEFAULT ((0)) FOR [Xoa_GiangDay]
GO
/****** Object:  Default [DF__CauHoi__TrangTha__15502E78]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[CauHoi] ADD  CONSTRAINT [DF__CauHoi__TrangTha__15502E78]  DEFAULT ((1)) FOR [TrangThaiTron_CauHoi]
GO
/****** Object:  Default [DF__CauHoi__HT_CauHo__164452B1]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[CauHoi] ADD  CONSTRAINT [DF__CauHoi__HT_CauHo__164452B1]  DEFAULT ((1)) FOR [HT_CauHoi]
GO
/****** Object:  Default [DF__CauHoi__Xoa_Cau__173876EA]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[CauHoi] ADD  CONSTRAINT [DF__CauHoi__Xoa_Cau__173876EA]  DEFAULT ((0)) FOR [Xoa_CauHoi]
GO
/****** Object:  Default [DF__CauHoi__Diem_Cau__173876EA]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[CauHoi] ADD  CONSTRAINT [DF__CauHoi__Diem_Cau__173876EA]  DEFAULT ((0)) FOR [Diem_CauHoi]
GO
/****** Object:  Default [DF__CauHoi__NgayTao___182C9B23]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[CauHoi] ADD  CONSTRAINT [DF__CauHoi__NgayTao___182C9B23]  DEFAULT (getdate()) FOR [NgayTao_CauHoi]
GO
/****** Object:  Default [DF__BaiThi__HT_BaiTh__398D8EEE]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[BaiThi] ADD  CONSTRAINT [DF__BaiThi__HT_BaiTh__398D8EEE]  DEFAULT ((1)) FOR [HT_BaiThi]
GO
/****** Object:  Default [DF__BaiThi__Xoa_BaiTh__400D8EEE]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[BaiThi] ADD  CONSTRAINT [DF__BaiThi__Xoa_BaiTh__400D8EEE]  DEFAULT ((0)) FOR [Xoa_BaiThi]
GO
/****** Object:  Default [DF__LichSu_CH__HT_LS_CH__3B75D760]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[LichSu_CH] ADD  CONSTRAINT [DF__LichSu_CH__HT_LS_CH__3B75D760]  DEFAULT ((1)) FOR [HT_LS_CH]
GO
/****** Object:  Default [DF__LichSu_CH__Xoa_LS_CH__3B75D760]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[LichSu_CH] ADD  CONSTRAINT [DF__LichSu_CH__Xoa_LS_CH__3B75D760]  DEFAULT ((0)) FOR [Xoa_LS_CH]
GO
/****** Object:  Default [DF__LuaChon__DapAn__46E78A0C]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[LuaChon] ADD  CONSTRAINT [DF__LuaChon__DapAn__46E78A0C]  DEFAULT ((0)) FOR [DapAn]
GO
/****** Object:  Default [DF__LuaChon__HT_LuaC__47DBAE45]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[LuaChon] ADD  CONSTRAINT [DF__LuaChon__HT_LuaC__47DBAE45]  DEFAULT ((1)) FOR [HT_LuaChon]
GO
/****** Object:  Default [DF__LuaChon__Xoa_LuaChon__47DBAE45]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[LuaChon] ADD  CONSTRAINT [DF__LuaChon__Xoa_LuaChon__47DBAE45]  DEFAULT ((0)) FOR [Xoa_LuaChon]
GO
/****** Object:  Default [DF__LuaChon__NgayTao__48CFD27E]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[LuaChon] ADD  CONSTRAINT [DF__LuaChon__NgayTao__48CFD27E]  DEFAULT (getdate()) FOR [NgayTao_LuaChon]
GO
/****** Object:  Default [DF__ChiTiet_D__HT_Ch__3E56440B]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ChiTiet_DeThi] ADD  CONSTRAINT [DF__ChiTiet_D__HT_Ch__3E56440B]  DEFAULT ((1)) FOR [HT_ChiTiet_DT]
GO
/****** Object:  Default [DF__ChiTiet_D__Xoa_Ch__3E56440B]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ChiTiet_DeThi] ADD  CONSTRAINT [DF__ChiTiet_D__Xoa_Ch__3E56440B]  DEFAULT ((0)) FOR [Xoa_CTDT]
GO
/****** Object:  Default [DF__ChiTiet_B__HT_Ch__3E52440B]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ChiTiet_BaiThi] ADD  CONSTRAINT [DF__ChiTiet_B__HT_Ch__3E52440B]  DEFAULT ((1)) FOR [HT_ChiTiet_BaiThi]
GO
/****** Object:  Default [DF__ChiTiet_B__Xoa_Ch__3E52440B]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ChiTiet_BaiThi] ADD  CONSTRAINT [DF__ChiTiet_B__Xoa_Ch__3E52440B]  DEFAULT ((0)) FOR [Xoa_CTBT]
GO
/****** Object:  Default [DF__LichSu_LC__HT_LS_LC__3B75D760]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[LichSu_LC] ADD  CONSTRAINT [DF__LichSu_LC__HT_LS_LC__3B75D760]  DEFAULT ((1)) FOR [HT_LS_LC]
GO
/****** Object:  Default [DF__LichSu_LC__Xoa_LS_LC__3B75D760]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[LichSu_LC] ADD  CONSTRAINT [DF__LichSu_LC__Xoa_LS_LC__3B75D760]  DEFAULT ((0)) FOR [Xoa_LS_LC]
GO
/****** Object:  Check [CK__ThiSinh__NgaySin__75A278F5]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ThiSinh]  WITH NOCHECK ADD  CONSTRAINT [CK__ThiSinh__NgaySin__75A278F5] CHECK  ((datediff(year,[NgaySinh_ThiSinh],getdate())>=(5)))
GO
ALTER TABLE [dbo].[ThiSinh] CHECK CONSTRAINT [CK__ThiSinh__NgaySin__75A278F5]
GO
/****** Object:  Check [CK__DanhSach___ThoiG__6FE99F9F]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DanhSach_DeThi]  WITH NOCHECK ADD  CONSTRAINT [CK__DanhSach___ThoiG__6FE99F9F] CHECK  (([ThoiGianLamBai]>=(0)))
GO
ALTER TABLE [dbo].[DanhSach_DeThi] CHECK CONSTRAINT [CK__DanhSach___ThoiG__6FE99F9F]
GO
/****** Object:  Check [CK__GiaoVien__NgaySi__3A81B327]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[GiaoVien]  WITH NOCHECK ADD  CONSTRAINT [CK__GiaoVien__NgaySi__3A81B327] CHECK  ((datediff(year,[NgaySinh_GV],getdate())>=(23)))
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [CK__GiaoVien__NgaySi__3A81B327]
GO
/****** Object:  Check [CK__CauHoi__CapDo__145C0A3F]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[CauHoi]  WITH NOCHECK ADD  CONSTRAINT [CK__CauHoi__CapDo__145C0A3F] CHECK  (([CapDo]>=(0) AND [CapDo]<=(9)))
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [CK__CauHoi__CapDo__145C0A3F]
GO
/****** Object:  Check [CK__CauHoi__Diem_Cau__6A30C649]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[CauHoi]  WITH NOCHECK ADD  CONSTRAINT [CK__CauHoi__Diem_Cau__6A30C649] CHECK  (([Diem_CauHoi]>=(0.1) AND [Diem_CauHoi]<=(0.5)))
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [CK__CauHoi__Diem_Cau__6A30C649]
GO
/****** Object:  Check [CK__CauHoi__Diem_Cau__6B24EA82]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[CauHoi]  WITH NOCHECK ADD  CONSTRAINT [CK__CauHoi__Diem_Cau__6B24EA82] CHECK  (([Diem_CauHoi]>=(0.10) AND [Diem_CauHoi]<=(0.5)))
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [CK__CauHoi__Diem_Cau__6B24EA82]
GO
/****** Object:  Check [CK__LichSu_CH__CapDo__17036CC0]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[LichSu_CH]  WITH NOCHECK ADD  CONSTRAINT [CK__LichSu_CH__CapDo__17036CC0] CHECK  (([CapDoCH_Cu]>=(0) AND [CapDoCH_Cu]<=(9)))
GO
ALTER TABLE [dbo].[LichSu_CH] CHECK CONSTRAINT [CK__LichSu_CH__CapDo__17036CC0]
GO
/****** Object:  Check [CK__LichSu_CH__CapDo__17F790F9]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[LichSu_CH]  WITH NOCHECK ADD  CONSTRAINT [CK__LichSu_CH__CapDo__17F790F9] CHECK  (([CapDoCH_Moi]>=(0) AND [CapDoCH_Moi]<=(9)))
GO
ALTER TABLE [dbo].[LichSu_CH] CHECK CONSTRAINT [CK__LichSu_CH__CapDo__17F790F9]
GO
/****** Object:  Check [CK__LichSu_CH__DiemC__151B244E]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[LichSu_CH]  WITH NOCHECK ADD  CONSTRAINT [CK__LichSu_CH__DiemC__151B244E] CHECK  (([DiemCH_Cu]>=(0.15) AND [DiemCH_Cu]<=(0.5)))
GO
ALTER TABLE [dbo].[LichSu_CH] CHECK CONSTRAINT [CK__LichSu_CH__DiemC__151B244E]
GO
/****** Object:  Check [CK__LichSu_CH__DiemC__160F4887]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[LichSu_CH]  WITH NOCHECK ADD  CONSTRAINT [CK__LichSu_CH__DiemC__160F4887] CHECK  (([DiemCH_Moi]>=(0.15) AND [DiemCH_Moi]<=(0.5)))
GO
ALTER TABLE [dbo].[LichSu_CH] CHECK CONSTRAINT [CK__LichSu_CH__DiemC__160F4887]
GO
/****** Object:  Check [CK__ChiTiet_B__Diem___6C190EBB]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ChiTiet_BaiThi]  WITH NOCHECK ADD  CONSTRAINT [CK__ChiTiet_B__Diem___6C190EBB] CHECK  (([Diem_BaiThi]>=(0.0) AND [Diem_BaiThi]<=(0.5)))
GO
ALTER TABLE [dbo].[ChiTiet_BaiThi] CHECK CONSTRAINT [CK__ChiTiet_B__Diem___6C190EBB]
GO
/****** Object:  Check [CK__ChiTiet_B__Diem___6D0D32F4]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ChiTiet_BaiThi]  WITH NOCHECK ADD  CONSTRAINT [CK__ChiTiet_B__Diem___6D0D32F4] CHECK  (([Diem_BaiThi]>=(0.0) AND [Diem_BaiThi]<=(0.5)))
GO
ALTER TABLE [dbo].[ChiTiet_BaiThi] CHECK CONSTRAINT [CK__ChiTiet_B__Diem___6D0D32F4]
GO
/****** Object:  Check [CK__ChiTiet_B__Diem___6E01572D]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ChiTiet_BaiThi]  WITH NOCHECK ADD  CONSTRAINT [CK__ChiTiet_B__Diem___6E01572D] CHECK  (([Diem_BaiThi]>=(0) AND [Diem_BaiThi]<=(10)))
GO
ALTER TABLE [dbo].[ChiTiet_BaiThi] CHECK CONSTRAINT [CK__ChiTiet_B__Diem___6E01572D]
GO
/****** Object:  ForeignKey [FK_PHANQUYE_RELATIONS_MANHINH]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[PhanQuyen]  WITH NOCHECK ADD  CONSTRAINT [FK_PHANQUYE_RELATIONS_MANHINH] FOREIGN KEY([ID_ManHinh])
REFERENCES [dbo].[ManHinh] ([ID_ManHinh])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PHANQUYE_RELATIONS_MANHINH]
GO
/****** Object:  ForeignKey [FK_PhanQuyen_CumQuyen]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[PhanQuyen]  WITH CHECK ADD  CONSTRAINT [FK_PhanQuyen_CumQuyen] FOREIGN KEY([ID_CQ])
REFERENCES [dbo].[CumQuyen] ([ID_CQ])
GO
ALTER TABLE [dbo].[PhanQuyen] CHECK CONSTRAINT [FK_PhanQuyen_CumQuyen]
GO
/****** Object:  ForeignKey [FK_DEMUC_CODEMUC_MONHOC]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DeMuc]  WITH NOCHECK ADD  CONSTRAINT [FK_DEMUC_CODEMUC_MONHOC] FOREIGN KEY([ID_MonHoc])
REFERENCES [dbo].[MonHoc] ([ID_MonHoc])
GO
ALTER TABLE [dbo].[DeMuc] CHECK CONSTRAINT [FK_DEMUC_CODEMUC_MONHOC]
GO
/****** Object:  ForeignKey [FK_DANHSACH_CODSDETHI_MONHOC]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DanhSach_DeThi]  WITH NOCHECK ADD  CONSTRAINT [FK_DANHSACH_CODSDETHI_MONHOC] FOREIGN KEY([ID_MonHoc])
REFERENCES [dbo].[MonHoc] ([ID_MonHoc])
GO
ALTER TABLE [dbo].[DanhSach_DeThi] CHECK CONSTRAINT [FK_DANHSACH_CODSDETHI_MONHOC]
GO
/****** Object:  ForeignKey [FK_DANGKY_DANGKY_THISINH]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DangKy]  WITH NOCHECK ADD  CONSTRAINT [FK_DANGKY_DANGKY_THISINH] FOREIGN KEY([ID_TK])
REFERENCES [dbo].[ThiSinh] ([ID_TK])
GO
ALTER TABLE [dbo].[DangKy] CHECK CONSTRAINT [FK_DANGKY_DANGKY_THISINH]
GO
/****** Object:  ForeignKey [FK_DANGKY_MH_MT_MONHOC]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[DangKy]  WITH NOCHECK ADD  CONSTRAINT [FK_DANGKY_MH_MT_MONHOC] FOREIGN KEY([ID_MonHoc])
REFERENCES [dbo].[MonHoc] ([ID_MonHoc])
GO
ALTER TABLE [dbo].[DangKy] CHECK CONSTRAINT [FK_DANGKY_MH_MT_MONHOC]
GO
/****** Object:  ForeignKey [FK_GiaoVien_CumQuyen]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[GiaoVien]  WITH CHECK ADD  CONSTRAINT [FK_GiaoVien_CumQuyen] FOREIGN KEY([ID_CQ])
REFERENCES [dbo].[CumQuyen] ([ID_CQ])
GO
ALTER TABLE [dbo].[GiaoVien] CHECK CONSTRAINT [FK_GiaoVien_CumQuyen]
GO
/****** Object:  ForeignKey [FK_GIANGDAY_DAY_GIAOVIEN]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[GiangDay]  WITH NOCHECK ADD  CONSTRAINT [FK_GIANGDAY_DAY_GIAOVIEN] FOREIGN KEY([ID_GV])
REFERENCES [dbo].[GiaoVien] ([ID_GV])
GO
ALTER TABLE [dbo].[GiangDay] CHECK CONSTRAINT [FK_GIANGDAY_DAY_GIAOVIEN]
GO
/****** Object:  ForeignKey [FK_GIANGDAY_DUOCNHANB_MONHOC]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[GiangDay]  WITH NOCHECK ADD  CONSTRAINT [FK_GIANGDAY_DUOCNHANB_MONHOC] FOREIGN KEY([ID_MonHoc])
REFERENCES [dbo].[MonHoc] ([ID_MonHoc])
GO
ALTER TABLE [dbo].[GiangDay] CHECK CONSTRAINT [FK_GIANGDAY_DUOCNHANB_MONHOC]
GO
/****** Object:  ForeignKey [FK_CAUHOI_CO_DEMUC]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[CauHoi]  WITH NOCHECK ADD  CONSTRAINT [FK_CAUHOI_CO_DEMUC] FOREIGN KEY([ID_DeMuc])
REFERENCES [dbo].[DeMuc] ([ID_DeMuc])
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [FK_CAUHOI_CO_DEMUC]
GO
/****** Object:  ForeignKey [FK_CAUHOI_THUOCLOAI_LOAI_CH]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[CauHoi]  WITH NOCHECK ADD  CONSTRAINT [FK_CAUHOI_THUOCLOAI_LOAI_CH] FOREIGN KEY([ID_LoaiCH])
REFERENCES [dbo].[Loai_CH] ([ID_LoaiCH])
GO
ALTER TABLE [dbo].[CauHoi] CHECK CONSTRAINT [FK_CAUHOI_THUOCLOAI_LOAI_CH]
GO
/****** Object:  ForeignKey [FK_BAITHI_RELATIONS_DANGKY]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[BaiThi]  WITH NOCHECK ADD  CONSTRAINT [FK_BAITHI_RELATIONS_DANGKY] FOREIGN KEY([ID_DANGKY])
REFERENCES [dbo].[DangKy] ([ID_DANGKY])
GO
ALTER TABLE [dbo].[BaiThi] CHECK CONSTRAINT [FK_BAITHI_RELATIONS_DANGKY]
GO
/****** Object:  ForeignKey [FK_BAITHI_THUOC_DANHSACH]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[BaiThi]  WITH NOCHECK ADD  CONSTRAINT [FK_BAITHI_THUOC_DANHSACH] FOREIGN KEY([ID_DE])
REFERENCES [dbo].[DanhSach_DeThi] ([ID_DE])
GO
ALTER TABLE [dbo].[BaiThi] CHECK CONSTRAINT [FK_BAITHI_THUOC_DANHSACH]
GO
/****** Object:  ForeignKey [FK_LICHSU_C_CAPNHAT_C_CAUHOI]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[LichSu_CH]  WITH NOCHECK ADD  CONSTRAINT [FK_LICHSU_C_CAPNHAT_C_CAUHOI] FOREIGN KEY([ID_CH])
REFERENCES [dbo].[CauHoi] ([ID_CH])
GO
ALTER TABLE [dbo].[LichSu_CH] CHECK CONSTRAINT [FK_LICHSU_C_CAPNHAT_C_CAUHOI]
GO
/****** Object:  ForeignKey [FK_LUACHON_SOHUU_CAUHOI]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[LuaChon]  WITH NOCHECK ADD  CONSTRAINT [FK_LUACHON_SOHUU_CAUHOI] FOREIGN KEY([ID_CH])
REFERENCES [dbo].[CauHoi] ([ID_CH])
GO
ALTER TABLE [dbo].[LuaChon] CHECK CONSTRAINT [FK_LUACHON_SOHUU_CAUHOI]
GO
/****** Object:  ForeignKey [FK_CHITIET__SOHUUDETH_DANHSACH]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ChiTiet_DeThi]  WITH NOCHECK ADD  CONSTRAINT [FK_CHITIET__SOHUUDETH_DANHSACH] FOREIGN KEY([ID_DE])
REFERENCES [dbo].[DanhSach_DeThi] ([ID_DE])
GO
ALTER TABLE [dbo].[ChiTiet_DeThi] CHECK CONSTRAINT [FK_CHITIET__SOHUUDETH_DANHSACH]
GO
/****** Object:  ForeignKey [FK_CHITIET__TRONG_CAUHOI]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ChiTiet_DeThi]  WITH NOCHECK ADD  CONSTRAINT [FK_CHITIET__TRONG_CAUHOI] FOREIGN KEY([ID_CH])
REFERENCES [dbo].[CauHoi] ([ID_CH])
GO
ALTER TABLE [dbo].[ChiTiet_DeThi] CHECK CONSTRAINT [FK_CHITIET__TRONG_CAUHOI]
GO
/****** Object:  ForeignKey [FK_CHITIET__CO1_BAITHI]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[ChiTiet_BaiThi]  WITH NOCHECK ADD  CONSTRAINT [FK_CHITIET__CO1_BAITHI] FOREIGN KEY([ID_BAITHI])
REFERENCES [dbo].[BaiThi] ([ID_BAITHI])
GO
ALTER TABLE [dbo].[ChiTiet_BaiThi] CHECK CONSTRAINT [FK_CHITIET__CO1_BAITHI]
GO
/****** Object:  ForeignKey [FK_LICHSU_L_CAPNHAT_L_LUACHON]    Script Date: 10/15/2018 13:37:01 ******/
ALTER TABLE [dbo].[LichSu_LC]  WITH NOCHECK ADD  CONSTRAINT [FK_LICHSU_L_CAPNHAT_L_LUACHON] FOREIGN KEY([ID_LUACHON])
REFERENCES [dbo].[LuaChon] ([ID_LUACHON])
GO
ALTER TABLE [dbo].[LichSu_LC] CHECK CONSTRAINT [FK_LICHSU_L_CAPNHAT_L_LUACHON]
GO
