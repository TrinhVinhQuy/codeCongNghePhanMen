USE [db_Nails]
GO
/****** Object:  Table [dbo].[admin_AccessGroupUserForm]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_AccessGroupUserForm](
	[guf_id] [int] IDENTITY(1,1) NOT NULL,
	[guf_active] [bit] NULL,
	[groupuser_id] [int] NULL,
	[form_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[guf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_AccessGroupUserModule]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_AccessGroupUserModule](
	[gum_id] [int] IDENTITY(1,1) NOT NULL,
	[gum_active] [bit] NULL,
	[groupuser_id] [int] NULL,
	[module_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[gum_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_AccessUserForm]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_AccessUserForm](
	[uf_id] [int] IDENTITY(1,1) NOT NULL,
	[uf_active] [bit] NULL,
	[username_id] [int] NULL,
	[form_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uf_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_Form]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_Form](
	[form_id] [int] IDENTITY(1,1) NOT NULL,
	[form_position] [int] NULL,
	[form_name] [nvarchar](max) NULL,
	[form_link] [nvarchar](max) NULL,
	[form_active] [bit] NULL,
	[module_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[form_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_GroupUser]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_GroupUser](
	[groupuser_id] [int] IDENTITY(1,1) NOT NULL,
	[groupuser_name] [nvarchar](max) NULL,
	[groupuser_active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[groupuser_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_Module]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_Module](
	[module_id] [int] IDENTITY(1,1) NOT NULL,
	[module_position] [int] NULL,
	[module_name] [nvarchar](max) NULL,
	[module_icon] [nvarchar](max) NULL,
	[module_active] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[module_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[admin_User]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_User](
	[username_id] [int] IDENTITY(1,1) NOT NULL,
	[username_username] [nvarchar](max) NULL,
	[username_password] [nvarchar](max) NULL,
	[username_fullname] [nvarchar](max) NULL,
	[username_gender] [bit] NULL,
	[username_phone] [nvarchar](max) NULL,
	[username_email] [nvarchar](max) NULL,
	[username_active] [bit] NULL,
	[groupuser_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[username_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbChuongTrinhKhuyenMai]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbChuongTrinhKhuyenMai](
	[khuyenmai_id] [int] IDENTITY(1,1) NOT NULL,
	[khuyenmai_name] [nvarchar](max) NULL,
	[khuyenmai_content] [nvarchar](max) NULL,
	[khuyenmai_percent] [nvarchar](max) NULL,
	[khuyenmai_image] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[khuyenmai_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbCity]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCity](
	[city_id] [int] IDENTITY(1,1) NOT NULL,
	[city_name] [nvarchar](max) NULL,
	[city_position] [int] NULL,
	[city_show] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[city_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbCustomerAccount]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbCustomerAccount](
	[customer_id] [int] IDENTITY(1,1) NOT NULL,
	[customer_firstname] [nvarchar](max) NULL,
	[customer_lastname] [nvarchar](max) NULL,
	[customer_fullname] [nvarchar](max) NULL,
	[customer_phone] [nvarchar](max) NULL,
	[customer_email] [nvarchar](max) NULL,
	[customer_address] [nvarchar](max) NULL,
	[hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbDichVu]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbDichVu](
	[dichvu_id] [int] IDENTITY(1,1) NOT NULL,
	[dichvu_title] [nvarchar](max) NULL,
	[dichvu_content] [nvarchar](max) NULL,
	[dichvu_price] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[dichvu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbHoaDonBanHang]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHoaDonBanHang](
	[hoadon_id] [int] IDENTITY(1,1) NOT NULL,
	[hoadon_code] [nvarchar](max) NULL,
	[khachhang_name] [nvarchar](max) NULL,
	[hoadon_tongtien] [nvarchar](max) NULL,
	[hoadon_giamgia] [nvarchar](max) NULL,
	[hoadon_phaitra] [nvarchar](max) NULL,
	[hoadon_createdate] [datetime] NULL,
	[nhanvien_id] [int] NULL,
	[hoadon_tongtiengiam] [nvarchar](max) NULL,
	[active] [bit] NULL,
	[khachhang_id] [int] NULL,
	[khuyenmai_id] [nvarchar](max) NULL,
	[hoadon_giothanhtoan] [datetime] NULL,
	[hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[hoadon_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbHoaDonBanHangChiTiet]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHoaDonBanHangChiTiet](
	[hdct_id] [int] IDENTITY(1,1) NOT NULL,
	[hoadon_id] [int] NULL,
	[dichvu_id] [int] NULL,
	[product_id] [int] NULL,
	[hdct_soluong] [int] NULL,
	[hdct_createdate] [datetime] NULL,
	[nhanvien_id] [int] NULL,
	[hdct_price] [nvarchar](max) NULL,
	[hidden] [bit] NULL,
	[hdct_giamgia] [nvarchar](max) NULL,
	[khuyenmai_id] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[hdct_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbIntroduce]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbIntroduce](
	[introduct_id] [int] IDENTITY(1,1) NOT NULL,
	[introduce_title] [nvarchar](max) NULL,
	[introduce_summary] [nvarchar](max) NULL,
	[introduce_content] [nvarchar](max) NULL,
	[introduce_image] [nvarchar](max) NULL,
	[introduce_createdate] [datetime] NULL,
	[introduce_update_date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[introduct_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbNewCate]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNewCate](
	[newcate_id] [int] IDENTITY(1,1) NOT NULL,
	[newcate_title] [nvarchar](max) NULL,
	[newcate_summary] [nvarchar](max) NULL,
	[hidden] [bit] NULL,
	[link_seo] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[newcate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbNews]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNews](
	[news_id] [int] IDENTITY(1,1) NOT NULL,
	[news_title] [nvarchar](max) NULL,
	[news_summary] [nvarchar](max) NULL,
	[news_image] [nvarchar](max) NULL,
	[news_content] [nvarchar](max) NULL,
	[newcate_id] [int] NULL,
	[hidden] [bit] NULL,
	[active] [bit] NULL,
	[link_seo] [nvarchar](max) NULL,
	[news_createdate] [datetime] NULL,
	[news_position] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[news_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbNhapHang]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNhapHang](
	[nhaphang_id] [int] IDENTITY(1,1) NOT NULL,
	[nhaphang_code] [nvarchar](max) NULL,
	[nhaphang_createdate] [datetime] NULL,
	[nhaphang_content] [nvarchar](max) NULL,
	[username_id] [int] NULL,
	[hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[nhaphang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbNhapHang_ChiTiet]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNhapHang_ChiTiet](
	[nhaphang_chitiet_id] [int] IDENTITY(1,1) NOT NULL,
	[nhaphang_id] [int] NULL,
	[product_id] [int] NULL,
	[nhaphang_chitiet_soluong] [int] NULL,
	[nhaphang_code] [nvarchar](max) NULL,
	[nhaphang_gianhap] [int] NULL,
	[nhaphang_thanhtien] [int] NULL,
	[username_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[nhaphang_chitiet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbProduct]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbProduct](
	[product_id] [int] IDENTITY(1,1) NOT NULL,
	[product_position] [int] NULL,
	[product_title] [nvarchar](max) NULL,
	[product_image] [nvarchar](max) NULL,
	[product_summary] [nvarchar](max) NULL,
	[product_content] [nvarchar](max) NULL,
	[product_quantum] [int] NULL,
	[product_show] [bit] NULL,
	[product_new] [bit] NULL,
	[productcate_id] [int] NULL,
	[title_web] [nvarchar](max) NULL,
	[meta_title] [nvarchar](max) NULL,
	[meta_keywords] [nvarchar](max) NULL,
	[meta_description] [nvarchar](max) NULL,
	[h1_seo] [nvarchar](max) NULL,
	[link_seo] [nvarchar](max) NULL,
	[product_chungloai] [nvarchar](max) NULL,
	[thuonghieu_id] [int] NULL,
	[meta_image] [nvarchar](max) NULL,
	[product_representative] [int] NULL,
	[product_cart] [int] NULL,
	[product_price_new] [int] NULL,
	[product_price] [int] NULL,
	[product_promotions] [int] NULL,
	[product_price_entry] [int] NULL,
	[hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[product_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbProductCate]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbProductCate](
	[productcate_id] [int] IDENTITY(1,1) NOT NULL,
	[productcate_position] [int] NULL,
	[productcate_title] [nvarchar](max) NULL,
	[productcate_show] [bit] NULL,
	[productgroup_id] [int] NULL,
	[title_web] [nvarchar](max) NULL,
	[meta_title] [nvarchar](max) NULL,
	[meta_keywords] [nvarchar](max) NULL,
	[meta_description] [nvarchar](max) NULL,
	[h1_seo] [nvarchar](max) NULL,
	[link_seo] [nvarchar](max) NULL,
	[productcate_parent] [int] NULL,
	[productcate_content] [nvarchar](max) NULL,
	[meta_image] [nvarchar](max) NULL,
	[active] [bit] NULL,
	[hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[productcate_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbSlide]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSlide](
	[slide_id] [int] IDENTITY(1,1) NOT NULL,
	[slide_image] [nvarchar](max) NULL,
	[slide_title] [nvarchar](max) NULL,
	[slide_title1] [nvarchar](max) NULL,
	[slide_link] [nvarchar](max) NULL,
	[slide_summary] [nvarchar](max) NULL,
	[slide_content] [nvarchar](max) NULL,
	[hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[slide_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbXuatHang]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbXuatHang](
	[xuathang_id] [int] IDENTITY(1,1) NOT NULL,
	[xuathang_code] [nvarchar](max) NULL,
	[xuathang_createdate] [datetime] NULL,
	[xuathang_content] [nvarchar](max) NULL,
	[username_id] [int] NULL,
	[hidden] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[xuathang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tbXuatHang_ChiTiet]    Script Date: 13/11/2020 9:11:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbXuatHang_ChiTiet](
	[xuathang_chitiet_id] [int] IDENTITY(1,1) NOT NULL,
	[xuathang_id] [int] NULL,
	[product_id] [int] NULL,
	[xuathang_chitiet_soluong] [int] NULL,
	[username_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[xuathang_chitiet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[admin_AccessGroupUserForm] ON 

INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (1, 1, 1, 1)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (2, 1, 1, 2)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (3, 1, 1, 3)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (4, 1, 1, 4)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (5, 1, 1, 5)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (6, 1, 1, 6)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (7, 1, 1, 7)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (8, 1, 1, 8)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (9, 1, 1, 9)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (10, 1, 1, 10)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (11, 1, 1, 11)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (12, 1, 1, 12)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (13, 1, 1, 13)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (14, 1, 1, 14)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (15, 1, 1, 15)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (16, 1, 1, 16)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (17, 1, 2, 4)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (18, 1, 2, 5)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (19, 1, 2, 6)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (20, 1, 2, 8)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (21, 1, 2, 9)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (22, 1, 2, 10)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (23, 1, 2, 11)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (24, 1, 2, 12)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (25, 1, 2, 15)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (26, 1, 2, 16)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (27, 1, 2, 13)
INSERT [dbo].[admin_AccessGroupUserForm] ([guf_id], [guf_active], [groupuser_id], [form_id]) VALUES (28, 1, 2, 14)
SET IDENTITY_INSERT [dbo].[admin_AccessGroupUserForm] OFF
SET IDENTITY_INSERT [dbo].[admin_AccessGroupUserModule] ON 

INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (1, 1, 1, 1)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (2, 1, 1, 2)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (3, 1, 1, 3)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (4, 1, 1, 4)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (5, 1, 1, 5)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (6, 1, 1, 6)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (7, 1, 1, 7)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (8, 1, 2, 2)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (9, 1, 2, 3)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (10, 1, 2, 4)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (11, 1, 2, 5)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (12, 1, 2, 6)
INSERT [dbo].[admin_AccessGroupUserModule] ([gum_id], [gum_active], [groupuser_id], [module_id]) VALUES (13, 1, 2, 7)
SET IDENTITY_INSERT [dbo].[admin_AccessGroupUserModule] OFF
SET IDENTITY_INSERT [dbo].[admin_AccessUserForm] ON 

INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (1, 1, 1, 1)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (2, 1, 1, 2)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (3, 1, 1, 3)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (4, 1, 1, 4)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (5, 1, 1, 5)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (6, 1, 1, 6)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (7, 1, 1, 7)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (8, 1, 1, 8)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (9, 1, 1, 9)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (10, 1, 1, 10)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (11, 1, 1, 11)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (12, 1, 1, 12)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (13, 1, 1, 13)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (14, 1, 1, 14)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (15, 1, 1, 15)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (16, 1, 1, 16)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (17, 1, 2, 4)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (18, 1, 2, 5)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (19, 1, 2, 6)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (20, 1, 2, 8)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (21, 1, 2, 9)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (22, 1, 2, 10)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (23, 1, 2, 11)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (24, 1, 2, 12)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (25, 1, 2, 15)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (26, 1, 2, 16)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (27, 1, 2, 13)
INSERT [dbo].[admin_AccessUserForm] ([uf_id], [uf_active], [username_id], [form_id]) VALUES (28, 1, 2, 14)
SET IDENTITY_INSERT [dbo].[admin_AccessUserForm] OFF
SET IDENTITY_INSERT [dbo].[admin_Form] ON 

INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (1, 1, N'Quản lý phân quyền', N'admin-access', 1, 1)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (2, 2, N'Quản lý Module', N'admin-module', 1, 1)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (3, 3, N'Quản lý Form', N'admin-form', 1, 1)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (4, 1, N'Quản lý tài khoản', N'admin-account', 1, 2)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (5, 1, N'Quản lý nhóm sản phẩm', N'admin-quan-ly-nhom-san-pham', 1, 3)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (6, 2, N'Quản lý sản phẩm', N'admin-quan-ly-san-pham', 1, 3)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (7, 3, N'Quản lý nhóm tin tức', N'admin-new-cate', 0, 4)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (8, 4, N'Quản lý tin tức', N'admin-news', 1, 4)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (9, 2, N'Quản lý slide', N'admin-slide', 1, 4)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (10, 1, N'Quản lý giới thiệu', N'admin-introduce', 1, 4)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (11, 5, N'Chương trình khuyến mãi', N'admin-chuong-trinh-khuyen-mai', 1, 4)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (12, 6, N'Tài khoản khách hàng', N'admin-tai-khoan-khach-hang', 1, 4)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (13, 1, N'Quản lý dịch vụ', N'admin-quan-ly-dich-vu', 1, 6)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (14, 1, N'Hóa đơn bán hàng', N'admin-hoa-don-ban-hang', 1, 7)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (15, 1, N'Quản lý nhập hàng', N'admin-quan-ly-nhap-hang', 1, 5)
INSERT [dbo].[admin_Form] ([form_id], [form_position], [form_name], [form_link], [form_active], [module_id]) VALUES (16, 2, N'Quản lý xuất hàng', N'admin-quan-ly-xuat-hang', 1, 5)
SET IDENTITY_INSERT [dbo].[admin_Form] OFF
SET IDENTITY_INSERT [dbo].[admin_GroupUser] ON 

INSERT [dbo].[admin_GroupUser] ([groupuser_id], [groupuser_name], [groupuser_active]) VALUES (1, N'root', 1)
INSERT [dbo].[admin_GroupUser] ([groupuser_id], [groupuser_name], [groupuser_active]) VALUES (2, N'Admin', 1)
INSERT [dbo].[admin_GroupUser] ([groupuser_id], [groupuser_name], [groupuser_active]) VALUES (3, N'Employees
', 1)
SET IDENTITY_INSERT [dbo].[admin_GroupUser] OFF
SET IDENTITY_INSERT [dbo].[admin_Module] ON 

INSERT [dbo].[admin_Module] ([module_id], [module_position], [module_name], [module_icon], [module_active]) VALUES (1, 1, N'Phân quyền', N'', 1)
INSERT [dbo].[admin_Module] ([module_id], [module_position], [module_name], [module_icon], [module_active]) VALUES (2, 2, N'Tài khoản', N'fas fa-users', 1)
INSERT [dbo].[admin_Module] ([module_id], [module_position], [module_name], [module_icon], [module_active]) VALUES (3, 4, N'Quản lý sản phẩm', N'', 1)
INSERT [dbo].[admin_Module] ([module_id], [module_position], [module_name], [module_icon], [module_active]) VALUES (4, 3, N'Quản lý website', N'', 1)
INSERT [dbo].[admin_Module] ([module_id], [module_position], [module_name], [module_icon], [module_active]) VALUES (5, 5, N'Quản lý Nhập-Xuất hàng', N'', 1)
INSERT [dbo].[admin_Module] ([module_id], [module_position], [module_name], [module_icon], [module_active]) VALUES (6, 6, N'Quản lý dịch vụ', N'', 1)
INSERT [dbo].[admin_Module] ([module_id], [module_position], [module_name], [module_icon], [module_active]) VALUES (7, 7, N'Hóa đơn', NULL, 1)
SET IDENTITY_INSERT [dbo].[admin_Module] OFF
SET IDENTITY_INSERT [dbo].[admin_User] ON 

INSERT [dbo].[admin_User] ([username_id], [username_username], [username_password], [username_fullname], [username_gender], [username_phone], [username_email], [username_active], [groupuser_id]) VALUES (1, N'root', N'12378248145104161527610811213823414203124130', N'ROOT', 1, N'01634057167', N'qutienpro@gmail.com', 1, 1)
INSERT [dbo].[admin_User] ([username_id], [username_username], [username_password], [username_fullname], [username_gender], [username_phone], [username_email], [username_active], [groupuser_id]) VALUES (2, N'admin', N'12378248145104161527610811213823414203124130', N'Quản trị', 1, N'12345', N'quantri@hifiveplus.vn', 1, 2)
INSERT [dbo].[admin_User] ([username_id], [username_username], [username_password], [username_fullname], [username_gender], [username_phone], [username_email], [username_active], [groupuser_id]) VALUES (3, N'staff', N'12378248145104161527610811213823414203124130', N'Nhân viên', 0, N'67891', N'staff@hifiveplus.vn', 0, 3)
SET IDENTITY_INSERT [dbo].[admin_User] OFF
SET IDENTITY_INSERT [dbo].[tbChuongTrinhKhuyenMai] ON 

INSERT [dbo].[tbChuongTrinhKhuyenMai] ([khuyenmai_id], [khuyenmai_name], [khuyenmai_content], [khuyenmai_percent], [khuyenmai_image]) VALUES (1, N'Khuyến mãi cuối năm', N'Giảm giá 5% tất cả các sản phẩm tại cửa hàng, bạn cũng có thể ngoại trừ một số mặt hàng đặc trưng, hình thức này luôn được đánh giá là thu hút được nhiều sự chú ý và mang lại nhiều doanh thu hơn cho các cửa hàng bán lẻ.', N'10', N'/admin_images/up-img.png')
INSERT [dbo].[tbChuongTrinhKhuyenMai] ([khuyenmai_id], [khuyenmai_name], [khuyenmai_content], [khuyenmai_percent], [khuyenmai_image]) VALUES (2, N'Khuyến mãi khai trương', N'Nội dung khuyến mãi', N'20', N'/uploadimages/anh_khuyenmai/09112020_031315_CH_messager your die.png')
SET IDENTITY_INSERT [dbo].[tbChuongTrinhKhuyenMai] OFF
SET IDENTITY_INSERT [dbo].[tbCity] ON 

INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (1, N'An Giang', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (2, N'Bà Rịa - Vũng Tàu
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (3, N'Bắc Giang
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (4, N'Bắc Kạn
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (5, N'Bạc Liêu
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (6, N'Bắc Ninh
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (7, N'Bến Tre
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (8, N'Bình Định
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (9, N'Bình Dương
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (10, N'Bình Phước
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (11, N'Bình Thuận
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (12, N'Cà Mau
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (13, N'Cao Bằng
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (14, N'Đắk Lắk
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (15, N'Đắk Nông
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (16, N'Điện Biên
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (17, N'Đồng Nai
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (18, N'Đồng Tháp
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (19, N'Gia Lai
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (20, N'Hà Giang
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (21, N'Hà Nam
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (22, N'Hà Tĩnh
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (23, N'Hải Dương
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (24, N'Hậu Giang
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (25, N'Hòa Bình
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (26, N'Hưng Yên
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (27, N'Khánh Hòa
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (28, N'Kiên Giang
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (29, N'Kon Tum
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (30, N'Lai Châu
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (31, N'Lâm Đồng
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (32, N'Lạng Sơn
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (33, N'Lào Cai
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (34, N'Long An
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (35, N'Nam Định
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (36, N'Nghệ An
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (37, N'Ninh Bình
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (38, N'Ninh Thuận
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (39, N'Phú Thọ
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (40, N'Quảng Bình
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (41, N'Quảng Nam
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (42, N'Quảng Ngãi
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (43, N'Quảng Ninh
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (44, N'Quảng Trị
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (45, N'Sóc Trăng
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (46, N'Sơn La
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (47, N'Tây Ninh
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (48, N'Thái Bình
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (49, N'Thái Nguyên
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (50, N'Thanh Hóa
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (51, N'Thừa Thiên Huế
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (52, N'Tiền Giang
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (53, N'Trà Vinh
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (54, N'Tuyên Quang
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (55, N'Vĩnh Long
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (56, N'Vĩnh Phúc
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (57, N'Yên Bái
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (58, N'Phú Yên
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (59, N'Cần Thơ
', NULL, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (60, N'Đà Nẵng
', 1, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (61, N'Hải Phòng
', 2, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (62, N'Hà Nội
', 3, NULL)
INSERT [dbo].[tbCity] ([city_id], [city_name], [city_position], [city_show]) VALUES (63, N'TP HCM
', 4, NULL)
SET IDENTITY_INSERT [dbo].[tbCity] OFF
SET IDENTITY_INSERT [dbo].[tbCustomerAccount] ON 

INSERT [dbo].[tbCustomerAccount] ([customer_id], [customer_firstname], [customer_lastname], [customer_fullname], [customer_phone], [customer_email], [customer_address], [hidden]) VALUES (1, N'Lưu Văn', N'Quyết', N'Lưu Văn Quyết', N'0334798366', N'luuvanquyet2612@gmail.com', N'Đà Nẵng', 0)
INSERT [dbo].[tbCustomerAccount] ([customer_id], [customer_firstname], [customer_lastname], [customer_fullname], [customer_phone], [customer_email], [customer_address], [hidden]) VALUES (2, N'Đàm Quốc', N'Lượng', N'Đàm Quốc Lượng', N'0324561578', N'damquocluong@gmail.com', N'Đà Nẵng', 0)
INSERT [dbo].[tbCustomerAccount] ([customer_id], [customer_firstname], [customer_lastname], [customer_fullname], [customer_phone], [customer_email], [customer_address], [hidden]) VALUES (3, NULL, NULL, N'Phùng đức', N'12345', N'abc@gmail.com', N'Đà Nẵng', 0)
INSERT [dbo].[tbCustomerAccount] ([customer_id], [customer_firstname], [customer_lastname], [customer_fullname], [customer_phone], [customer_email], [customer_address], [hidden]) VALUES (4, NULL, NULL, N'Lượng Đàm', N'0123', NULL, N'Đà nẵng', 0)
INSERT [dbo].[tbCustomerAccount] ([customer_id], [customer_firstname], [customer_lastname], [customer_fullname], [customer_phone], [customer_email], [customer_address], [hidden]) VALUES (5, NULL, NULL, N'khách hàng a', N'03214', N'abc@gmail.com', N'dn', 0)
INSERT [dbo].[tbCustomerAccount] ([customer_id], [customer_firstname], [customer_lastname], [customer_fullname], [customer_phone], [customer_email], [customer_address], [hidden]) VALUES (6, NULL, NULL, N'fuv', N'0818795939', N'dfgdfg@gmail.com', N'hfghfg', 0)
INSERT [dbo].[tbCustomerAccount] ([customer_id], [customer_firstname], [customer_lastname], [customer_fullname], [customer_phone], [customer_email], [customer_address], [hidden]) VALUES (7, NULL, NULL, N'huv', N'123', NULL, N'', 0)
INSERT [dbo].[tbCustomerAccount] ([customer_id], [customer_firstname], [customer_lastname], [customer_fullname], [customer_phone], [customer_email], [customer_address], [hidden]) VALUES (8, NULL, NULL, N'dbash', N'234', NULL, N'', 0)
INSERT [dbo].[tbCustomerAccount] ([customer_id], [customer_firstname], [customer_lastname], [customer_fullname], [customer_phone], [customer_email], [customer_address], [hidden]) VALUES (9, NULL, NULL, N'ấc', N'125', NULL, N'', 0)
INSERT [dbo].[tbCustomerAccount] ([customer_id], [customer_firstname], [customer_lastname], [customer_fullname], [customer_phone], [customer_email], [customer_address], [hidden]) VALUES (10, NULL, NULL, N'Kim anh', N'246', NULL, N'', 0)
INSERT [dbo].[tbCustomerAccount] ([customer_id], [customer_firstname], [customer_lastname], [customer_fullname], [customer_phone], [customer_email], [customer_address], [hidden]) VALUES (11, NULL, NULL, N'abc', N'875', NULL, N'', 0)
INSERT [dbo].[tbCustomerAccount] ([customer_id], [customer_firstname], [customer_lastname], [customer_fullname], [customer_phone], [customer_email], [customer_address], [hidden]) VALUES (12, NULL, NULL, N'Ludbasd', N'598', NULL, N'', 0)
SET IDENTITY_INSERT [dbo].[tbCustomerAccount] OFF
SET IDENTITY_INSERT [dbo].[tbDichVu] ON 

INSERT [dbo].[tbDichVu] ([dichvu_id], [dichvu_title], [dichvu_content], [dichvu_price]) VALUES (1, N'Sơn thường 1 màu', N'nội dung dịch vụdsa', N'150000')
INSERT [dbo].[tbDichVu] ([dichvu_id], [dichvu_title], [dichvu_content], [dichvu_price]) VALUES (2, N'Sơn gel 1 màu', N'', N'200000')
INSERT [dbo].[tbDichVu] ([dichvu_id], [dichvu_title], [dichvu_content], [dichvu_price]) VALUES (3, N'Design 1 ngón vẽ móng', N'', N'180000')
SET IDENTITY_INSERT [dbo].[tbDichVu] OFF
SET IDENTITY_INSERT [dbo].[tbHoaDonBanHang] ON 

INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (1, N'HD00001', N'Lưu Văn Quyết', N'300000', N'10', N'270000', CAST(N'2020-11-05 14:49:40.913' AS DateTime), 1, N'30000', 1, 1, N'1', NULL, 1)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (2, N'HD00002', N'Đàm Quốc Lượng', N'550000', N'20', N'440000', CAST(N'2020-11-05 15:03:39.490' AS DateTime), 1, N'110000', 1, 2, N'2', NULL, 1)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (3, N'HD00003', N'Lưu Văn Quyết', N'350000', N'20', N'280000', CAST(N'2020-11-08 08:43:53.000' AS DateTime), 1, N'70000', 0, 1, N'2', CAST(N'2020-11-08 15:54:25.977' AS DateTime), 0)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (4, N'HD00004', N'Phùng đức', N'550000', N'10', N'495000', CAST(N'2020-11-08 15:33:35.000' AS DateTime), 1, N'55000', 0, 3, N'1', CAST(N'2020-11-08 15:25:38.320' AS DateTime), 0)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (5, N'HD00005', N'Lượng Đàm', N'700000', N'10', N'630000', CAST(N'2020-11-08 14:12:51.933' AS DateTime), 1, N'70000', 0, 4, N'1', CAST(N'2020-11-08 14:41:32.163' AS DateTime), 0)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (6, N'HD00006', N'khách hàng a', N'550000', N'10', N'495000', CAST(N'2020-11-08 15:05:54.867' AS DateTime), 1, N'55000', 0, 5, N'1', CAST(N'2020-11-08 15:10:12.793' AS DateTime), 0)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (7, N'HD00007', N'Lượng Đàm', N'560000', N'20', N'448000', CAST(N'2020-11-08 15:11:31.037' AS DateTime), 1, N'112000', 0, 4, N'2', CAST(N'2020-11-08 15:13:34.953' AS DateTime), 0)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (8, N'HD00008', N'Phùng đức', N'680000', N'10', N'612000', CAST(N'2020-11-08 15:14:36.543' AS DateTime), 1, N'68000', 0, 3, N'1', CAST(N'2020-11-08 15:25:33.420' AS DateTime), 0)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (9, N'HD00009', N'Lượng Đàm', NULL, N'20', NULL, CAST(N'2020-11-08 15:15:59.183' AS DateTime), 1, NULL, 1, 4, N'2', NULL, NULL)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (10, N'HD00010', N'Phùng đức', N'550000', N'30', N'385000', CAST(N'2020-11-08 15:19:41.617' AS DateTime), 1, N'165000', 0, 3, N'1,2', CAST(N'2020-11-08 15:25:06.713' AS DateTime), 0)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (11, N'HD00011', N'Lưu Văn Quyết', N'200000', N'0', N'200000', CAST(N'2020-11-08 15:22:48.283' AS DateTime), 1, N'0', 0, 1, N'', CAST(N'2020-11-08 15:22:51.577' AS DateTime), 0)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (16, N'HD00012', N'dbash', N'350000', N'10', N'315000', CAST(N'2020-11-08 22:15:42.000' AS DateTime), 1, N'35000', 0, 8, N'1', CAST(N'2020-11-08 22:16:10.567' AS DateTime), 0)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (17, N'HD00013', N'ấc', NULL, NULL, NULL, CAST(N'2020-11-08 22:17:17.780' AS DateTime), 1, NULL, 1, 9, NULL, NULL, NULL)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (18, N'HD00014', N'huv', N'150000', N'10', N'135000', CAST(N'2020-11-12 09:28:17.000' AS DateTime), 1, N'15000', 0, 7, N'1', CAST(N'2020-11-12 11:05:03.340' AS DateTime), 0)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (21, N'HD00015', N'Kim anh', N'660000', N'20', N'528000', CAST(N'2020-11-12 14:41:43.000' AS DateTime), 1, N'132000', 1, 10, N'2', CAST(N'2020-11-09 14:50:05.103' AS DateTime), 0)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (22, N'HD00016', N'abc', N'400000', N'10', N'360000', CAST(N'2020-11-12 14:46:28.000' AS DateTime), 1, N'40000', 0, 11, N'1', CAST(N'2020-11-12 11:05:34.790' AS DateTime), 0)
INSERT [dbo].[tbHoaDonBanHang] ([hoadon_id], [hoadon_code], [khachhang_name], [hoadon_tongtien], [hoadon_giamgia], [hoadon_phaitra], [hoadon_createdate], [nhanvien_id], [hoadon_tongtiengiam], [active], [khachhang_id], [khuyenmai_id], [hoadon_giothanhtoan], [hidden]) VALUES (23, N'HD00017', N'Ludbasd', N'350000', N'10', N'315000', CAST(N'2020-11-12 14:48:33.000' AS DateTime), 1, N'35000', 0, 12, N'1', CAST(N'2020-11-12 11:07:16.553' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[tbHoaDonBanHang] OFF
SET IDENTITY_INSERT [dbo].[tbHoaDonBanHangChiTiet] ON 

INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (1, 1, 1, NULL, 2, CAST(N'2020-11-05 14:49:40.960' AS DateTime), 1, N'150000', 0, N'10', N'1')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (2, 2, 1, NULL, 1, CAST(N'2020-11-05 15:03:39.500' AS DateTime), 1, N'150000', 0, N'20', N'2')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (3, 2, 2, NULL, 2, CAST(N'2020-11-05 15:03:39.500' AS DateTime), 1, N'200000', 0, N'20', N'2')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (12, 5, 1, NULL, 2, CAST(N'2020-11-08 14:41:32.157' AS DateTime), 1, N'150000', 0, N'10', N'1')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (13, 5, 2, NULL, 2, CAST(N'2020-11-08 14:41:32.160' AS DateTime), 1, N'200000', 0, N'10', N'1')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (16, 6, 2, NULL, 2, CAST(N'2020-11-08 15:10:12.790' AS DateTime), 1, N'200000', 0, N'10', N'1')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (17, 6, 1, NULL, 1, CAST(N'2020-11-08 15:10:12.793' AS DateTime), 1, N'150000', 0, N'10', N'1')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (20, 7, 2, NULL, 1, CAST(N'2020-11-08 15:13:17.943' AS DateTime), 1, N'200000', 0, N'20', N'2')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (21, 7, 3, NULL, 2, CAST(N'2020-11-08 15:13:27.867' AS DateTime), 1, N'180000', 0, N'20', N'2')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (25, 9, 1, NULL, 4, CAST(N'2020-11-08 15:15:59.187' AS DateTime), 1, N'150000', 0, N'20', N'2')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (26, 9, 2, NULL, 4, CAST(N'2020-11-08 15:15:59.190' AS DateTime), 1, N'200000', 0, N'20', N'2')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (29, 11, 2, NULL, 1, CAST(N'2020-11-08 15:22:51.567' AS DateTime), 1, N'200000', 0, N'0', N'')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (31, 10, 2, NULL, 2, CAST(N'2020-11-08 15:25:06.710' AS DateTime), 1, N'200000', 0, N'30', N'1,2')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (32, 10, 1, NULL, 1, CAST(N'2020-11-08 15:25:06.710' AS DateTime), 1, N'150000', 0, N'30', N'1,2')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (33, 8, 1, NULL, 2, CAST(N'2020-11-08 15:25:33.403' AS DateTime), 1, N'150000', 0, N'10', N'1')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (34, 8, 2, NULL, 1, CAST(N'2020-11-08 15:25:33.417' AS DateTime), 1, N'200000', 0, N'10', N'1')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (35, 8, 3, NULL, 1, CAST(N'2020-11-08 15:25:33.420' AS DateTime), 1, N'180000', 0, N'10', N'1')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (36, 4, 1, NULL, 1, CAST(N'2020-11-08 15:25:38.303' AS DateTime), 1, N'150000', 0, N'10', N'1')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (37, 4, 2, NULL, 2, CAST(N'2020-11-08 15:25:38.317' AS DateTime), 1, N'200000', 0, N'10', N'1')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (38, 3, 1, NULL, 1, CAST(N'2020-11-08 15:54:25.973' AS DateTime), 1, N'150000', 0, N'20', N'2')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (39, 3, 2, NULL, 1, CAST(N'2020-11-08 15:54:25.977' AS DateTime), 1, N'200000', 0, N'20', N'2')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (42, 16, 1, NULL, 1, CAST(N'2020-11-08 22:16:10.563' AS DateTime), 1, N'150000', 0, N'10', N'1')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (43, 16, 2, NULL, 1, CAST(N'2020-11-08 22:16:10.567' AS DateTime), 1, N'200000', 0, N'10', N'1')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (52, 21, 1, NULL, 2, CAST(N'2020-11-09 14:50:05.090' AS DateTime), 1, N'150000', 0, N'20', N'2')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (53, 21, 3, NULL, 2, CAST(N'2020-11-09 14:50:05.093' AS DateTime), 1, N'180000', 0, N'20', N'2')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (59, 18, 1, NULL, 1, CAST(N'2020-11-12 11:05:03.320' AS DateTime), 1, N'150000', 0, N'10', N'1')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (60, 22, 2, NULL, 2, CAST(N'2020-11-12 11:05:34.787' AS DateTime), 1, N'200000', 0, N'10', N'1')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (62, 23, 1, NULL, 1, CAST(N'2020-11-12 11:07:16.550' AS DateTime), 1, N'150000', 0, N'10', N'1')
INSERT [dbo].[tbHoaDonBanHangChiTiet] ([hdct_id], [hoadon_id], [dichvu_id], [product_id], [hdct_soluong], [hdct_createdate], [nhanvien_id], [hdct_price], [hidden], [hdct_giamgia], [khuyenmai_id]) VALUES (63, 23, 2, NULL, 1, CAST(N'2020-11-12 11:07:16.553' AS DateTime), 1, N'200000', 0, N'10', N'1')
SET IDENTITY_INSERT [dbo].[tbHoaDonBanHangChiTiet] OFF
SET IDENTITY_INSERT [dbo].[tbIntroduce] ON 

INSERT [dbo].[tbIntroduce] ([introduct_id], [introduce_title], [introduce_summary], [introduce_content], [introduce_image], [introduce_createdate], [introduce_update_date]) VALUES (1, N'Super Nails', N'Các nhà mạng Việt Nam có thể tắt sóng 2G khi số lượng thuê bao sử dụng công nghệ này còn dưới 5%, mục tiêu dự kiến vào năm 2022.', N'<p class="Normal" style="margin: 0px 0px 1em; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px; color: #222222; font-family: arial; font-size: 18px; text-decoration-style: initial; text-decoration-color: initial;"><span style="background-color: #ffffff;">Hiện tại, theo số liệu của Cục Viễn thông, Việt Nam vẫn còn khoảng 24 triệu thuê bao 2G trên tổng số 130 triệu thuê bao đi động. Tuy nhiên, 2G là xu thế đã thoái trào và ngày càng bị thay thế bởi các công nghệ tiên tiến hơn.</span></p>', N'/uploadimages/anh_gioithieu/02112020_100532_SA_messager.png', NULL, CAST(N'2020-11-02 10:05:48.400' AS DateTime))
SET IDENTITY_INSERT [dbo].[tbIntroduce] OFF
SET IDENTITY_INSERT [dbo].[tbNewCate] ON 

INSERT [dbo].[tbNewCate] ([newcate_id], [newcate_title], [newcate_summary], [hidden], [link_seo]) VALUES (1, N'Tin hôm nay', NULL, 0, NULL)
INSERT [dbo].[tbNewCate] ([newcate_id], [newcate_title], [newcate_summary], [hidden], [link_seo]) VALUES (2, N'Tin mới', NULL, 1, NULL)
INSERT [dbo].[tbNewCate] ([newcate_id], [newcate_title], [newcate_summary], [hidden], [link_seo]) VALUES (3, N'Tin nổi bật', NULL, 0, NULL)
SET IDENTITY_INSERT [dbo].[tbNewCate] OFF
SET IDENTITY_INSERT [dbo].[tbNews] ON 

INSERT [dbo].[tbNews] ([news_id], [news_title], [news_summary], [news_image], [news_content], [newcate_id], [hidden], [active], [link_seo], [news_createdate], [news_position]) VALUES (1, N'Bản tin ngày 01/11/2020', N'Cơn mưa lớn kém giông tối 31/10 khiến trường THPT Bình Phú trên đường Trần Văn Kiểu (phường 10, quận 6) bị hư hỏng một dãy nhà. "Lúc đó gió lớn lắm, mái tôn bị kéo sụp xuống đất rất nhanh, nhiều tiếng xẹt điện phát ra", ông Nguyễn Văn Tám, bảo vệ trường nói.', N'/uploadimages/anh_tintuc/fnpnbpxq.l14.png', N'<span style="color: #222222; font-family: arial; font-size: 18px; background-color: #fcfaf6; text-decoration-style: initial; text-decoration-color: initial;">Thống kê của Reuters cho thấy Mỹ hôm 31/10 ghi nhận thêm 100.233 ca nhiễm nCoV chỉ trong 24 giờ, vượt qua kỷ lục 91.295 trường hợp được ghi nhận một ngày trước đó. Đây cũng là mức tăng cao nhất thế giới, vượt qua con số 97.894 ca trong 24 giờ được ghi nhận tại Ấn Độ hồi giữa tháng 9.</span>&nbsp;', 1, 0, 1, NULL, CAST(N'2020-11-01 15:41:09.603' AS DateTime), NULL)
INSERT [dbo].[tbNews] ([news_id], [news_title], [news_summary], [news_image], [news_content], [newcate_id], [hidden], [active], [link_seo], [news_createdate], [news_position]) VALUES (2, N'Mỹ ghi nhận kỷ lục hơn 100.000 ca nCoV một ngày', N'Mỹ báo cáo mức tăng ca nhiễm nCoV trong 24 giờ cao chưa từng có khi chỉ còn vài ngày trước bầu cử tổng thống.', N'/uploadimages/anh_tintuc/hlpm2ktf.reo.png', N'<p class="description" style="margin: 0px 0px 15px; box-sizing: border-box; text-rendering: optimizelegibility; font-size: 18px; line-height: 28.8px; color: #222222; font-family: arial; text-decoration-style: initial; text-decoration-color: initial;"><span style="background-color: #ffffff;">Mỹ báo cáo mức tăng ca nhiễm nCoV trong 24 giờ cao chưa từng có khi chỉ còn vài ngày trước bầu cử tổng thống.</span></p><p class="Normal" style="margin: 0px 0px 1em; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px;"><span style="background-color: #ffffff;">Thống kê của Reuters cho thấy Mỹ hôm 31/10 ghi nhận thêm 100.233 ca nhiễm nCoV chỉ trong 24 giờ, vượt qua kỷ lục 91.295 trường hợp được ghi nhận một ngày trước đó. Đây cũng là mức tăng cao nhất thế giới, vượt qua con số 97.894 ca trong 24 giờ được ghi nhận tại Ấn Độ hồi giữa tháng 9.</span></p>', 3, 0, 1, NULL, CAST(N'2020-11-01 17:30:28.147' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[tbNews] OFF
SET IDENTITY_INSERT [dbo].[tbNhapHang] ON 

INSERT [dbo].[tbNhapHang] ([nhaphang_id], [nhaphang_code], [nhaphang_createdate], [nhaphang_content], [username_id], [hidden]) VALUES (1, N'NH00001', CAST(N'2020-11-13 13:38:38.653' AS DateTime), N'nhaphang_chitiet_soluong', 1, NULL)
INSERT [dbo].[tbNhapHang] ([nhaphang_id], [nhaphang_code], [nhaphang_createdate], [nhaphang_content], [username_id], [hidden]) VALUES (2, N'NH00002', CAST(N'2020-11-13 13:50:01.137' AS DateTime), N'bdashas', 1, NULL)
SET IDENTITY_INSERT [dbo].[tbNhapHang] OFF
SET IDENTITY_INSERT [dbo].[tbNhapHang_ChiTiet] ON 

INSERT [dbo].[tbNhapHang_ChiTiet] ([nhaphang_chitiet_id], [nhaphang_id], [product_id], [nhaphang_chitiet_soluong], [nhaphang_code], [nhaphang_gianhap], [nhaphang_thanhtien], [username_id]) VALUES (1, 1, 1, 2, N'NH00001', 150000, 300000, NULL)
INSERT [dbo].[tbNhapHang_ChiTiet] ([nhaphang_chitiet_id], [nhaphang_id], [product_id], [nhaphang_chitiet_soluong], [nhaphang_code], [nhaphang_gianhap], [nhaphang_thanhtien], [username_id]) VALUES (4, 1, 2, 1, N'NH00001', 200000, 200000, 1)
SET IDENTITY_INSERT [dbo].[tbNhapHang_ChiTiet] OFF
SET IDENTITY_INSERT [dbo].[tbProduct] ON 

INSERT [dbo].[tbProduct] ([product_id], [product_position], [product_title], [product_image], [product_summary], [product_content], [product_quantum], [product_show], [product_new], [productcate_id], [title_web], [meta_title], [meta_keywords], [meta_description], [h1_seo], [link_seo], [product_chungloai], [thuonghieu_id], [meta_image], [product_representative], [product_cart], [product_price_new], [product_price], [product_promotions], [product_price_entry], [hidden]) VALUES (1, NULL, N'Sơn móng tay', N'/admin_images/up-img.png', N'đây là tóm tắt mô tả sản phẩm', N'', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 200000, NULL, NULL, 0)
INSERT [dbo].[tbProduct] ([product_id], [product_position], [product_title], [product_image], [product_summary], [product_content], [product_quantum], [product_show], [product_new], [productcate_id], [title_web], [meta_title], [meta_keywords], [meta_description], [h1_seo], [link_seo], [product_chungloai], [thuonghieu_id], [meta_image], [product_representative], [product_cart], [product_price_new], [product_price], [product_promotions], [product_price_entry], [hidden]) VALUES (2, NULL, N'sản phẩm 2', N'/uploadimages/anh_sanpham/12112020_081847_CH_your kill.png', N'mô tả sản phẩm bvhgc', N'', NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 250000, NULL, NULL, 0)
INSERT [dbo].[tbProduct] ([product_id], [product_position], [product_title], [product_image], [product_summary], [product_content], [product_quantum], [product_show], [product_new], [productcate_id], [title_web], [meta_title], [meta_keywords], [meta_description], [h1_seo], [link_seo], [product_chungloai], [thuonghieu_id], [meta_image], [product_representative], [product_cart], [product_price_new], [product_price], [product_promotions], [product_price_entry], [hidden]) VALUES (3, NULL, N'sản phẩm 1 adba', N'/uploadimages/anh_sanpham/12112020_081652_CH_messager.png', N'dbaddbs', N'', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[tbProduct] OFF
SET IDENTITY_INSERT [dbo].[tbProductCate] ON 

INSERT [dbo].[tbProductCate] ([productcate_id], [productcate_position], [productcate_title], [productcate_show], [productgroup_id], [title_web], [meta_title], [meta_keywords], [meta_description], [h1_seo], [link_seo], [productcate_parent], [productcate_content], [meta_image], [active], [hidden]) VALUES (3, NULL, N'Sơn móng tay', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbProductCate] ([productcate_id], [productcate_position], [productcate_title], [productcate_show], [productgroup_id], [title_web], [meta_title], [meta_keywords], [meta_description], [h1_seo], [link_seo], [productcate_parent], [productcate_content], [meta_image], [active], [hidden]) VALUES (4, NULL, N'Sơn dưỡng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[tbProductCate] OFF
SET IDENTITY_INSERT [dbo].[tbSlide] ON 

INSERT [dbo].[tbSlide] ([slide_id], [slide_image], [slide_title], [slide_title1], [slide_link], [slide_summary], [slide_content], [hidden]) VALUES (1, N'/uploadimages/anh_slide/ub1y0aoc.wvh.png', NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[tbSlide] ([slide_id], [slide_image], [slide_title], [slide_title1], [slide_link], [slide_summary], [slide_content], [hidden]) VALUES (2, N'/uploadimages/anh_slide/u5wblhh2.pas.png', NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[tbSlide] OFF
SET IDENTITY_INSERT [dbo].[tbXuatHang] ON 

INSERT [dbo].[tbXuatHang] ([xuathang_id], [xuathang_code], [xuathang_createdate], [xuathang_content], [username_id], [hidden]) VALUES (2, N'XH00001', CAST(N'2020-11-13 20:00:25.690' AS DateTime), N'Xuất hàng dịch vụ', 1, NULL)
SET IDENTITY_INSERT [dbo].[tbXuatHang] OFF
SET IDENTITY_INSERT [dbo].[tbXuatHang_ChiTiet] ON 

INSERT [dbo].[tbXuatHang_ChiTiet] ([xuathang_chitiet_id], [xuathang_id], [product_id], [xuathang_chitiet_soluong], [username_id]) VALUES (3, 2, 1, 5, 1)
INSERT [dbo].[tbXuatHang_ChiTiet] ([xuathang_chitiet_id], [xuathang_id], [product_id], [xuathang_chitiet_soluong], [username_id]) VALUES (4, 2, 2, 5, 1)
SET IDENTITY_INSERT [dbo].[tbXuatHang_ChiTiet] OFF
ALTER TABLE [dbo].[admin_AccessGroupUserForm]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[admin_Form] ([form_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_AccessGroupUserForm]  WITH CHECK ADD FOREIGN KEY([groupuser_id])
REFERENCES [dbo].[admin_GroupUser] ([groupuser_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_AccessGroupUserModule]  WITH CHECK ADD FOREIGN KEY([groupuser_id])
REFERENCES [dbo].[admin_GroupUser] ([groupuser_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_AccessGroupUserModule]  WITH CHECK ADD FOREIGN KEY([module_id])
REFERENCES [dbo].[admin_Module] ([module_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_AccessUserForm]  WITH CHECK ADD FOREIGN KEY([form_id])
REFERENCES [dbo].[admin_Form] ([form_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_AccessUserForm]  WITH CHECK ADD FOREIGN KEY([username_id])
REFERENCES [dbo].[admin_User] ([username_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_Form]  WITH CHECK ADD FOREIGN KEY([module_id])
REFERENCES [dbo].[admin_Module] ([module_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_User]  WITH CHECK ADD FOREIGN KEY([groupuser_id])
REFERENCES [dbo].[admin_GroupUser] ([groupuser_id])
ON UPDATE CASCADE
GO
