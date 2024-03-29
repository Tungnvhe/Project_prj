USE [Shop_PRJ]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/23/2023 10:10:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccId] [varchar](50) NOT NULL,
	[AccPass] [varchar](50) NOT NULL,
	[Role] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserAddress] [nvarchar](150) NOT NULL,
	[UserPhone] [varchar](20) NOT NULL,
	[QuesId] [int] NOT NULL,
	[Answer] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AccId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 10/23/2023 10:10:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CaId] [int] IDENTITY(1,1) NOT NULL,
	[CaName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collections]    Script Date: 10/23/2023 10:10:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collections](
	[CoId] [int] IDENTITY(1,1) NOT NULL,
	[CoName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 10/23/2023 10:10:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrId] [int] IDENTITY(1,1) NOT NULL,
	[OrDate] [date] NOT NULL,
	[AccId] [varchar](50) NOT NULL,
	[TotalMoney] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 10/23/2023 10:10:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrId] [int] NOT NULL,
	[ProId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrId] ASC,
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/23/2023 10:10:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProId] [int] IDENTITY(1,1) NOT NULL,
	[ProName] [nvarchar](100) NOT NULL,
	[ProImg] [nvarchar](max) NOT NULL,
	[ProPrice] [float] NOT NULL,
	[ProDetail] [nvarchar](1000) NOT NULL,
	[CaId] [int] NOT NULL,
	[CoId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecurityQuestion]    Script Date: 10/23/2023 10:10:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityQuestion](
	[QuesId] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QuesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[Account] ([AccId], [AccPass], [Role], [UserName], [UserAddress], [UserPhone], [QuesId], [Answer]) VALUES (N'maytroi', N'123', 1, N'Tận trên mây', N'hanoi hoai duc', N'0987654321', 1, N'hanoi')
INSERT [dbo].[Account] ([AccId], [AccPass], [Role], [UserName], [UserAddress], [UserPhone], [QuesId], [Answer]) VALUES (N'mrbeat12', N'123456a', 0, N'Mr Beat', N'Hoa Lac Hanoi', N'0326577872', 1, N'hanoi')
INSERT [dbo].[Account] ([AccId], [AccPass], [Role], [UserName], [UserAddress], [UserPhone], [QuesId], [Answer]) VALUES (N'sonnguyen', N'123', 1, N'Xuân Sơn', N'Hạ Long', N'0987654321', 1, N'halong')
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CaId], [CaName]) VALUES (1, N'Accessories')
INSERT [dbo].[Categories] ([CaId], [CaName]) VALUES (2, N'Bags')
INSERT [dbo].[Categories] ([CaId], [CaName]) VALUES (3, N'Clothing')
INSERT [dbo].[Categories] ([CaId], [CaName]) VALUES (4, N'Jewelry')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Collections] ON 

INSERT [dbo].[Collections] ([CoId], [CoName]) VALUES (1, N'THE ROOK')
INSERT [dbo].[Collections] ([CoId], [CoName]) VALUES (2, N'THE KNIGHT')
INSERT [dbo].[Collections] ([CoId], [CoName]) VALUES (3, N'THE PAWN')
INSERT [dbo].[Collections] ([CoId], [CoName]) VALUES (4, N'Queening')
INSERT [dbo].[Collections] ([CoId], [CoName]) VALUES (5, N'FRONT')
SET IDENTITY_INSERT [dbo].[Collections] OFF
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (1, N'The Knight Tote Bagg', N'img/The_Knight_Tote_Bag.jpg', 250, N'Sản phẩm được làm từ chất liệu chính là Recycled Polyester - Chống thấm nước, siêu bền, không nhăn, nhẹ và thoáng khí sẽ giúp bạn luôn thoải mái khi sử dụng sản phẩm.', 2, 2)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (3, N'The Rook Shoulder Bag', N'img/The_Rook_Shoulder_Bag.jpg', 100, N'Sản phẩm được làm từ chất liệu chính là Limestone Neoprene có độ đàn hồi tốt và độ bền cao. Bên trong có lót Polyester chống trầy xước và hạn chế thấm nước từ bên ngoài.', 2, 1)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (4, N'The Pawn Head-To-Head Backpack', N'img/The_Pawn_Head-To-Head_Backpack.jpg', 90, N'Không có ngăn chuyên dụng cho máy tính nhưng có thể chứa được laptop 15.6 inch trong ngăn chính (nên có túi chống sốc).', 2, 3)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (5, N'The Rook Castling Backpack', N'img/The_Rook_Castling_Backpack.jpg', 80, N'Chất liệu chính là Polyester Waterproof - Chống thấm nước, siêu bền, không nhăn, nhẹ và thoáng khí sẽ giúp bạn luôn thoải mái khi sử dụng sản phẩm.', 2, 1)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (6, N'FRONT Abundant Backpack', N'img/FRONT_Abundant_Backpack.jpg', 200, N'Không có ngăn chuyên dụng cho máy tính nhưng có thể chứa được laptop 15.6 inch trong ngăn chính (nên có túi chống sốc).', 2, 5)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (7, N'FRONT Abundant Rectangle Shoulder Bag', N'img/FRONT_Abundant_Rectangle_Shoulder_Bag.jpg', 120, N'Số ngăn: 1 ngăn chính có miếng chia ngăn tùy chình được & 1 ngăn chuyên dụng cho điện thoại.', 2, 5)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (8, N'FRONT Abundant Tote Bag', N'img/FRONT_Abundant_Tote_Bag.jpg', 200, N'Không có ngăn chuyên dụng cho máy tính nhưng có thể chứa được laptop 15.6 inch trong ngăn chính (nên có túi chống sốc).', 2, 5)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (9, N'FRONT The Bishop Keychain', N'img/FRONT_The_Bishop_Keychain.jpg', 40, N'Phần thân Keychain được làm từ chất liệu PVC. Phần móc khoá được làm từ chất liệu thép không gỉ. Hộp đựng chắc chắn, Keychain được cố định bằng mút xốp bên trong. ', 1, 5)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (10, N'FRONT Abundant Wallet', N'img/FRONT_Abundant_Wallet.jpg', 60, N'Số ngăn: 2 ngăn đựng tiền, 4 ngăn đựng thẻ & 2 ngăn đựng giấy tờ tùy thân.', 1, 5)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (11, N'Queening The Pawn Backpack Size M', N'img/Queening_The_Pawn_Backpack_Size_M.jpg', 30, N'Số ngăn: 1 ngăn chính, 2 ngăn mặt trước và 4 ngăn chức năng bên trong ngăn chính.', 2, 4)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (12, N'Queening The Pawn Backpack Size S', N'img/Queening_The_Pawn_Backpack_Size_S.jpg', 37, N'Số ngăn: 1 ngăn chính, 2 ngăn mặt trước và 4 ngăn chức năng bên trong ngăn chính.', 2, 4)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (13, N'The Knight Key Pocket', N'img/The_Knight_Key_Pocket.jpg', 20, N'Chất liệu có khả năng trượt nước, nước khó thâm nhập vào bề mặt chất liệu do đã được xử lý bằng một lớp phủ chống nước, khi tiếp xúc giọt nước bị cô lập, đọng thành từng giọt và lăn ra khỏi bề mặt.', 1, 2)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (14, N'The Knight Relaxed Pants - FreeSize', N'img/The_Knight_Relaxed_Pants.jpg', 60, N'Sản phẩm được làm từ chất liệu 100% High Performance Cotton với những ưu điểm thấm hút tốt, tự nhiên, nhẹ, độ dày vừa phải, thoáng mát, phù hợp với khí hậu nóng ẩm.', 3, 2)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (15, N'The Knight Wristlet Keychain', N'img/The_Knight_Wristlet_Keychain.jpg', 20, N'Sản phẩm sử dụng công nghệ in 3D rõ nét, móc kim loại chắc chắn, dày dặn, có thể đeo cổ tay, móc vào quần áo và phụ kiện linh hoạt.', 1, 2)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (16, N'The Pawn Blazer - FreeSize', N'img/The_Pawn_Blazer.jpg', 200, N'Chất liệu Water-Repellent Polyester với những ưu điểm trượt nước tốt, độ dày vừa phải, nhẹ, dễ xếp gọn, dễ vệ sinh phù hợp với thời tiết & khí hậu Việt Nam.', 3, 3)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (17, N'The Pawn Pocket Shorts - FreeSize', N'img/The_Pawn_Pocket_Shorts.jpg', 80, N'Chất liệu Water-Repellent Polyester với những ưu điểm trượt nước tốt, độ dày vừa phải, nhẹ, dễ xếp gọn, dễ vệ sinh phù hợp với thời tiết & khí hậu Việt Nam.', 3, 3)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (18, N'The Pawn Wordmark Tee - FreeSize', N'img/The_Pawn_Wordmark_Tee.jpg', 50, N'Sản phẩm được làm từ chất liệu 100% High Performance Cotton với những ưu điểm thấm hút tốt, tự nhiên, nhẹ, độ dày vừa phải, thoáng mát, phù hợp với khí hậu nóng ẩm.', 3, 3)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (19, N'The Pawn Abundant Umbrella', N'img/The_Pawn_Abundant_Umbrella.jpg', 30, N'Vải dù 2ya Polyester, in lụa cả 2 mặt. Khung sắt được sơn tĩnh điện. Tay cầm đươc làm bằng nhựa cao cấp.', 1, 3)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (20, N'The Rook Fork Hooded BLACK - FreeSize', N'img/The_Rook_Fork_Hooded.jpg', 150, N'Chất liệu Polyester, bề mặt phủ nhung nhẹ.Thân chính dùng zip 2 mặt, có nẹp che để cản gió và nước. Cổ áo có ngăn giấu nón, linh hoạt trong nhu cầu. Ống tay có khả năng mở rộng và thu nhỏ bởi dây kéo, đặt biệt có ngăn tiện lợi trên ống tay.', 3, 1)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (21, N'The Rook Fork Hooded BROWN - FreeSize', N'img/The_Rook_Fork_Hooded2.jpg', 150, N'Chất liệu Polyester, bề mặt phủ nhung nhẹ.Thân chính dùng zip 2 mặt, có nẹp che để cản gió và nước. Cổ áo có ngăn giấu nón, linh hoạt trong nhu cầu. Ống tay có khả năng mở rộng và thu nhỏ bởi dây kéo, đặt biệt có ngăn tiện lợi trên ống tay.', 3, 1)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (22, N'WHITE PAWN LONGSLEEVE - FreeSize ', N'img/WHITE_PAWN_LONGSLEEVE.jpg', 40, N'Sản phẩm được làm từ chất liệu 100% High Performance Cotton với những ưu điểm thấm hút tốt, tự nhiên, nhẹ, độ dày vừa phải, thoáng mát, phù hợp với khí hậu nóng ẩm.', 3, 3)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (23, N'Paladin - SILVER ', N'img/Paladin.jpg', 100, N'Sản phẩm sử dụng chất liệu Bạc 925 có độ trắng sáng cao, tinh tế, nổi bật.Sản phẩm được bảo hành làm sạch, đánh bóng trọn đời.', 4, 5)
INSERT [dbo].[Product] ([ProId], [ProName], [ProImg], [ProPrice], [ProDetail], [CaId], [CoId]) VALUES (24, N'Paladin ', N'img/Paladin2.jpg', 100, N'Sản phẩm sử dụng chất liệu Bạc 925 có độ trắng sáng cao, tinh tế, nổi bật.Sản phẩm được bảo hành làm sạch, đánh bóng trọn đời.', 4, 5)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[SecurityQuestion] ON 

INSERT [dbo].[SecurityQuestion] ([QuesId], [Question]) VALUES (1, N'In what city were you born?')
INSERT [dbo].[SecurityQuestion] ([QuesId], [Question]) VALUES (2, N'What is the name of your favorite pet?')
INSERT [dbo].[SecurityQuestion] ([QuesId], [Question]) VALUES (3, N'What is your mothers name?')
INSERT [dbo].[SecurityQuestion] ([QuesId], [Question]) VALUES (4, N'What high school did you attend?')
INSERT [dbo].[SecurityQuestion] ([QuesId], [Question]) VALUES (5, N'What was the name of your elementary school?')
INSERT [dbo].[SecurityQuestion] ([QuesId], [Question]) VALUES (6, N'What was your favorite food as a child?')
SET IDENTITY_INSERT [dbo].[SecurityQuestion] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([QuesId])
REFERENCES [dbo].[SecurityQuestion] ([QuesId])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([AccId])
REFERENCES [dbo].[Account] ([AccId])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([ProId])
REFERENCES [dbo].[Product] ([ProId])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([OrId])
REFERENCES [dbo].[Order] ([OrId])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CaId])
REFERENCES [dbo].[Categories] ([CaId])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CoId])
REFERENCES [dbo].[Collections] ([CoId])
GO
