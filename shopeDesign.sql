USE [sql-hw-DataBaseDesign]
GO
/****** Object:  Table [dbo].[activity]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activity](
[id] [int] NOT NULL,
[activity_name] [nvarchar](50) NOT NULL,
[activity_type] [nvarchar](100) NOT NULL,
[activity_desc] [nvarchar](100) NOT NULL,
[start_time] [date] NULL,
[end_time] [date] NULL,
[create_time] [date] NULL,
[RegisteredDate] [datetime] NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[activity_ruly]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activity_ruly](
[id] [int] NOT NULL,
[activity_type] [nvarchar](50) NOT NULL,
[condition_amount] [int] NULL,
[condition_num] [int] NULL,
[benefit_amount] [int] NULL,
[benefit_level] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[activity_sku]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activity_sku](
[id] [int] IDENTITY(1,1) NOT NULL,
[activity_id] [int] NOT NULL,
[sku_id] [int] NULL,
[create_time] [date] NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[base_attr_info]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_attr_info](
[id] [int] NOT NULL,
[attr_name] [nvarchar](50) NOT NULL,
[category_id] [int] NULL,
[category_level] [int] NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[base_attr_value]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_attr_value](
[id] [int] IDENTITY(1,1) NOT NULL,
[value_name] [nvarchar](50) NOT NULL,
[attr_id] [int] NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[base_category]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[base_category](
[id] [int] NOT NULL,
[name] [nvarchar](50) NOT NULL,
[category] [int] NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cart_info]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cart_info](
[id] [int] IDENTITY(1,1) NOT NULL,
[user_id] [int] NULL,
[cart_price] [money] NULL,
[num] [int] NULL,
[ischecked] [bit] NULL,
[order_time] [date] NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment_info]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment_info](
[id] [int] IDENTITY(1,1) NOT NULL,
[user_id] [int] NULL,
[nick_name] [nvarchar](50) NULL,
[appraise] [nvarchar](50) NULL,
[comment_txt] [nvarchar](200) NULL,
[create_time] [date] NULL,
[operate_time] [date] NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[coupon_info]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coupon_info](
[id] [int] IDENTITY(1,1) NOT NULL,
[coupon_name] [nvarchar](50) NULL,
[coupon_type] [nvarchar](50) NULL,
[condition_amount] [money] NULL,
[condition_num] [int] NULL,
[activity_id] [int] NULL,
[benefit_discount] [money] NULL,
[create_time] [date] NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[coupon_use]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coupon_use](
[id] [int] IDENTITY(1,1) NOT NULL,
[coupon_id] [int] NULL,
[user_id] [int] NULL,
[order_id] [int] NULL,
[coupon_status] [nvarchar](50) NULL,
[get_time] [date] NULL,
[using_time] [date] NULL,
[expire_time] [date] NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[favor_info]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[favor_info](
[id] [int] IDENTITY(1,1) NOT NULL,
[user_id] [int] NULL,
[sku_id] [int] NULL,
[spu_id] [int] NULL,
[is_cancel] [bit] NULL,
[create_time] [date] NULL,
[cancel_time] [date] NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_detail]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_detail](
[id] [int] IDENTITY(1,1) NOT NULL,
[order_id] [int] NULL,
[user_id] [int] NULL,
[sku_name] [nvarchar](100) NULL,
[product_id] [int] NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_refund_info]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_refund_info](
[id] [int] IDENTITY(1,1) NOT NULL,
[order_id] [int] NULL,
[refund_type] [nvarchar](100) NULL,
[refund_num] [int] NULL,
[refund_amount] [int] NULL,
[create_time] [date] NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[payment_info]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[payment_info](
[id] [int] IDENTITY(1,1) NOT NULL,
[order_id] [int] NULL,
[user_id] [int] NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
[id] [int] IDENTITY(1,1) NOT NULL,
[product_name] [nvarchar](100) NOT NULL,
[description] [nvarchar](max) NULL,
[price] [decimal](18, 2) NOT NULL,
[stock] [int] NOT NULL,
[category_id] [int] NOT NULL,
[attr_id] [int] NULL,
[create_time] [datetime] NULL,
[update_time] [datetime] NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refund_payment]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refund_payment](
[id] [int] IDENTITY(1,1) NOT NULL,
[order_id] [int] NULL,
[payment_type] [nvarchar](50) NULL,
[total_amount] [int] NULL,
[refund_status] [nvarchar](50) NULL,
[trade_no] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_address]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_address](
[id] [int] IDENTITY(1,1) NOT NULL,
[user_id] [int] NULL,
[province_id] [nvarchar](50) NULL,
[user_address] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_info]    Script Date: 2024/7/23 下午 02:46:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_info](
[id] [int] IDENTITY(1,1) NOT NULL,
[user_name] [nvarchar](50) NOT NULL,
[nick_name] [nvarchar](50) NULL,
[passwd] [nvarchar](50) NOT NULL,
[phone] [nvarchar](15) NULL,
[email] [nvarchar](100) NULL,
[birthday] [date] NULL,
[gender] [nvarchar](10) NULL,
[create_time] [datetime] NULL,
[operate_time] [datetime] NULL,
[status] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED
(
[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[activity] ADD  DEFAULT (getdate()) FOR [RegisteredDate]
GO
ALTER TABLE [dbo].[product] ADD  DEFAULT (getdate()) FOR [create_time]
GO
ALTER TABLE [dbo].[user_info] ADD  DEFAULT (getdate()) FOR [create_time]
GO
ALTER TABLE [dbo].[activity_sku]  WITH CHECK ADD FOREIGN KEY([activity_id])
REFERENCES [dbo].[activity] ([id])
GO
ALTER TABLE [dbo].[base_attr_value]  WITH CHECK ADD FOREIGN KEY([attr_id])
REFERENCES [dbo].[base_attr_info] ([id])
GO
ALTER TABLE [dbo].[cart_info]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user_info] ([id])
GO
ALTER TABLE [dbo].[comment_info]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user_info] ([id])
GO
ALTER TABLE [dbo].[coupon_info]  WITH CHECK ADD FOREIGN KEY([activity_id])
REFERENCES [dbo].[activity] ([id])
GO
ALTER TABLE [dbo].[coupon_use]  WITH CHECK ADD FOREIGN KEY([coupon_id])
REFERENCES [dbo].[coupon_info] ([id])
GO
ALTER TABLE [dbo].[coupon_use]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[order_detail] ([id])
GO
ALTER TABLE [dbo].[coupon_use]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user_info] ([id])
GO
ALTER TABLE [dbo].[favor_info]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user_info] ([id])
GO
ALTER TABLE [dbo].[order_detail]  WITH CHECK ADD  CONSTRAINT [FK_order_detail_product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[product] ([id])
GO
ALTER TABLE [dbo].[order_detail] CHECK CONSTRAINT [FK_order_detail_product_id]
GO
ALTER TABLE [dbo].[order_refund_info]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[payment_info] ([id])
GO
ALTER TABLE [dbo].[payment_info]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[order_detail] ([id])
GO
ALTER TABLE [dbo].[payment_info]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user_info] ([id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([attr_id])
REFERENCES [dbo].[base_attr_info] ([id])
GO
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[base_category] ([id])
GO
ALTER TABLE [dbo].[refund_payment]  WITH CHECK ADD FOREIGN KEY([order_id])
REFERENCES [dbo].[order_refund_info] ([id])
GO
ALTER TABLE [dbo].[user_address]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user_info] ([id])
GO

