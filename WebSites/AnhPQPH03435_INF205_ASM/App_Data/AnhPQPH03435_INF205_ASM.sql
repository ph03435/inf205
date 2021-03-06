USE AnhPQPH03435_INF205_ASM
GO
/****** Object:  Table [dbo].[khach_hang]    Script Date: 04/17/2016 18:45:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[khach_hang](
	[makh] [int] IDENTITY(1,1) NOT NULL,
	[hoten] [nvarchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
 CONSTRAINT [khach_hang_pk] PRIMARY KEY CLUSTERED 
(
	[makh] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[khach_hang] ON
INSERT [dbo].[khach_hang] ([makh], [hoten], [email]) VALUES (1, N'Phạm Quang Anh', N'anhpqph03435@gmail.com')
INSERT [dbo].[khach_hang] ([makh], [hoten], [email]) VALUES (2, N'Lê Hoàng Dũng', N'dunglh0401@gmail.com')
INSERT [dbo].[khach_hang] ([makh], [hoten], [email]) VALUES (3, N'Nguyễn Tuấn Khanh', N'khanhnt0801@gmail.com')
INSERT [dbo].[khach_hang] ([makh], [hoten], [email]) VALUES (4, N'Nguyễn Quý Thiện', N'thiennq0412@gmail.com')
INSERT [dbo].[khach_hang] ([makh], [hoten], [email]) VALUES (5, N'Lương Thanh Thịnh Đạt', N'datltt@gmail.com')
INSERT [dbo].[khach_hang] ([makh], [hoten], [email]) VALUES (6, N'Hồ Chí Minh', N'minhch@gmail.com')
SET IDENTITY_INSERT [dbo].[khach_hang] OFF
/****** Object:  Table [dbo].[danh_muc_san_pham]    Script Date: 04/17/2016 18:45:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[danh_muc_san_pham](
	[madm] [int] IDENTITY(1,1) NOT NULL,
	[tendm] [nvarchar](255) NOT NULL,
	[madm_cha] [int] NULL,
 CONSTRAINT [danh_muc_san_pham_pk] PRIMARY KEY CLUSTERED 
(
	[madm] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[danh_muc_san_pham] ON
INSERT [dbo].[danh_muc_san_pham] ([madm], [tendm], [madm_cha]) VALUES (1, N'Wax & Clay test', NULL)
INSERT [dbo].[danh_muc_san_pham] ([madm], [tendm], [madm_cha]) VALUES (2, N'Pomade', NULL)
INSERT [dbo].[danh_muc_san_pham] ([madm], [tendm], [madm_cha]) VALUES (3, N'Gel & Mousse', NULL)
INSERT [dbo].[danh_muc_san_pham] ([madm], [tendm], [madm_cha]) VALUES (4, N'Shampoo & Conditioner', NULL)
INSERT [dbo].[danh_muc_san_pham] ([madm], [tendm], [madm_cha]) VALUES (5, N'Accessories', NULL)
SET IDENTITY_INSERT [dbo].[danh_muc_san_pham] OFF
/****** Object:  Table [dbo].[hoa_don]    Script Date: 04/17/2016 18:45:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[hoa_don](
	[mahd] [int] IDENTITY(1,1) NOT NULL,
	[sohd] [char](12) NOT NULL,
	[makh] [int] NOT NULL,
 CONSTRAINT [hoa_don_pk] PRIMARY KEY CLUSTERED 
(
	[mahd] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[hoa_don] ON
INSERT [dbo].[hoa_don] ([mahd], [sohd], [makh]) VALUES (1, N'HD001       ', 3)
INSERT [dbo].[hoa_don] ([mahd], [sohd], [makh]) VALUES (2, N'HD002       ', 5)
INSERT [dbo].[hoa_don] ([mahd], [sohd], [makh]) VALUES (3, N'HD003       ', 2)
INSERT [dbo].[hoa_don] ([mahd], [sohd], [makh]) VALUES (4, N'HD004       ', 1)
INSERT [dbo].[hoa_don] ([mahd], [sohd], [makh]) VALUES (5, N'HD005       ', 4)
INSERT [dbo].[hoa_don] ([mahd], [sohd], [makh]) VALUES (6, N'HD006       ', 3)
SET IDENTITY_INSERT [dbo].[hoa_don] OFF
/****** Object:  Table [dbo].[san_pham]    Script Date: 04/17/2016 18:45:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[san_pham](
	[masp] [int] IDENTITY(1,1) NOT NULL,
	[madm] [int] NOT NULL,
	[donvi] [nchar](10) NOT NULL,
	[tensp] [nvarchar](255) NOT NULL,
	[giasp] [decimal](12, 2) NOT NULL,
	[mota] [nvarchar](1000) NOT NULL,
	[anh] [text] NULL,
 CONSTRAINT [san_pham_pk] PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[san_pham] ON
INSERT [dbo].[san_pham] ([masp], [madm], [donvi], [tensp], [giasp], [mota], [anh]) VALUES (1, 1, N'hộp       ', N'HDF Claymation', CAST(510000.00 AS Decimal(12, 2)), N'Clay by HDF, Strong hold, matte finish', NULL)
INSERT [dbo].[san_pham] ([masp], [madm], [donvi], [tensp], [giasp], [mota], [anh]) VALUES (2, 3, N'chai      ', N'DoubleRich Mousse', CAST(120000.00 AS Decimal(12, 2)), N'Mousse by Double Rich', NULL)
INSERT [dbo].[san_pham] ([masp], [madm], [donvi], [tensp], [giasp], [mota], [anh]) VALUES (3, 2, N'hộp       ', N'Reuzel Pink', CAST(370000.00 AS Decimal(12, 2)), N'Oil-based Pomade by Reuzel, Strong hold, medium shine', NULL)
INSERT [dbo].[san_pham] ([masp], [madm], [donvi], [tensp], [giasp], [mota], [anh]) VALUES (4, 5, N'chiếc     ', N'Uppercut Round Comb', CAST(250000.00 AS Decimal(12, 2)), N'Black round comb, small handle', NULL)
INSERT [dbo].[san_pham] ([masp], [madm], [donvi], [tensp], [giasp], [mota], [anh]) VALUES (5, 4, N'chai      ', N'Tresemme Keratin Shampoo', CAST(170000.00 AS Decimal(12, 2)), N'Shampoo by Tresemme with added Keratin', N'test.jpg')
SET IDENTITY_INSERT [dbo].[san_pham] OFF
/****** Object:  Table [dbo].[hoa_don_chi_tiet]    Script Date: 04/17/2016 18:45:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoa_don_chi_tiet](
	[mahdct] [int] IDENTITY(1,1) NOT NULL,
	[mahd] [int] NOT NULL,
	[masp] [int] NOT NULL,
	[soluong] [int] NOT NULL,
 CONSTRAINT [hoa_don_chi_tiet_pk] PRIMARY KEY CLUSTERED 
(
	[mahdct] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[hoa_don_chi_tiet] ON
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [mahd], [masp], [soluong]) VALUES (1, 1, 2, 4)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [mahd], [masp], [soluong]) VALUES (2, 1, 3, 2)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [mahd], [masp], [soluong]) VALUES (3, 2, 1, 1)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [mahd], [masp], [soluong]) VALUES (4, 3, 4, 2)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [mahd], [masp], [soluong]) VALUES (5, 4, 5, 0)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [mahd], [masp], [soluong]) VALUES (8, 1, 1, 22)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [mahd], [masp], [soluong]) VALUES (9, 1, 1, 2)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [mahd], [masp], [soluong]) VALUES (10, 1, 1, 213)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [mahd], [masp], [soluong]) VALUES (11, 1, 1, 12)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [mahd], [masp], [soluong]) VALUES (12, 1, 1, 12)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [mahd], [masp], [soluong]) VALUES (13, 1, 1, 12)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [mahd], [masp], [soluong]) VALUES (14, 1, 1, 12)
INSERT [dbo].[hoa_don_chi_tiet] ([mahdct], [mahd], [masp], [soluong]) VALUES (15, 1, 1, 4)
SET IDENTITY_INSERT [dbo].[hoa_don_chi_tiet] OFF
/****** Object:  ForeignKey [product_category_product_category]    Script Date: 04/17/2016 18:45:00 ******/
ALTER TABLE [dbo].[danh_muc_san_pham]  WITH CHECK ADD  CONSTRAINT [product_category_product_category] FOREIGN KEY([madm_cha])
REFERENCES [dbo].[danh_muc_san_pham] ([madm])
GO
ALTER TABLE [dbo].[danh_muc_san_pham] CHECK CONSTRAINT [product_category_product_category]
GO
/****** Object:  ForeignKey [client_purchase]    Script Date: 04/17/2016 18:45:00 ******/
ALTER TABLE [dbo].[hoa_don]  WITH CHECK ADD  CONSTRAINT [client_purchase] FOREIGN KEY([makh])
REFERENCES [dbo].[khach_hang] ([makh])
GO
ALTER TABLE [dbo].[hoa_don] CHECK CONSTRAINT [client_purchase]
GO
/****** Object:  ForeignKey [product_category_product]    Script Date: 04/17/2016 18:45:00 ******/
ALTER TABLE [dbo].[san_pham]  WITH CHECK ADD  CONSTRAINT [product_category_product] FOREIGN KEY([madm])
REFERENCES [dbo].[danh_muc_san_pham] ([madm])
GO
ALTER TABLE [dbo].[san_pham] CHECK CONSTRAINT [product_category_product]
GO
/****** Object:  ForeignKey [product_purchase_item]    Script Date: 04/17/2016 18:45:00 ******/
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [product_purchase_item] FOREIGN KEY([masp])
REFERENCES [dbo].[san_pham] ([masp])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [product_purchase_item]
GO
/****** Object:  ForeignKey [purchase_purchase_item]    Script Date: 04/17/2016 18:45:00 ******/
ALTER TABLE [dbo].[hoa_don_chi_tiet]  WITH CHECK ADD  CONSTRAINT [purchase_purchase_item] FOREIGN KEY([mahd])
REFERENCES [dbo].[hoa_don] ([mahd])
GO
ALTER TABLE [dbo].[hoa_don_chi_tiet] CHECK CONSTRAINT [purchase_purchase_item]
GO
