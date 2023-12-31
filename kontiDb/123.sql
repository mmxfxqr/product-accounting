USE testKonti
GO
/****** Object:  Table [dbo].[Products]    Script Date: 29.05.2023 17:47:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[idProduct] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Amount] [nvarchar](50) NOT NULL,
	[Price] [money] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[idProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provider]    Script Date: 29.05.2023 17:47:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provider](
	[idProvider] [int] IDENTITY(1,1) NOT NULL,
	[Company_name] [nvarchar](50) NOT NULL,
	[Phone_number] [nvarchar](50) NOT NULL,
	[City_provider] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Provider] PRIMARY KEY CLUSTERED 
(
	[idProvider] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_authorization]    Script Date: 29.05.2023 17:47:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_authorization](
	[idRole] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role_authorization] PRIMARY KEY CLUSTERED 
(
	[idRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 29.05.2023 17:47:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[idStock] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[idWorkers] [int] NOT NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[idStock] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplies]    Script Date: 29.05.2023 17:47:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplies](
	[idSupplies] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Weight] [int] NOT NULL,
	[idStock] [int] NOT NULL,
	[idProvider] [int] NOT NULL,
	[idProduct] [int] NOT NULL,
 CONSTRAINT [PK_Supplies] PRIMARY KEY CLUSTERED 
(
	[idSupplies] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_authorization]    Script Date: 29.05.2023 17:47:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_authorization](
	[idUser] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[idRole] [int] NOT NULL,
 CONSTRAINT [PK_User_authorization] PRIMARY KEY CLUSTERED 
(
	[idUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Workers]    Script Date: 29.05.2023 17:47:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workers](
	[idWorkers] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[Phone_number] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Workers] PRIMARY KEY CLUSTERED 
(
	[idWorkers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([idProduct], [Name], [Amount], [Price], [Type]) VALUES (1, N'Фиалка', N'2500', 20000.0000, N'Конфеты')
INSERT [dbo].[Products] ([idProduct], [Name], [Amount], [Price], [Type]) VALUES (2, N'Ромашка', N'3000', 30000.0000, N'Конфеты')
INSERT [dbo].[Products] ([idProduct], [Name], [Amount], [Price], [Type]) VALUES (3, N'Мишка', N'4000', 15000.0000, N'Конфеты')
INSERT [dbo].[Products] ([idProduct], [Name], [Amount], [Price], [Type]) VALUES (4, N'Ваниль', N'1500', 22000.0000, N'Печенье')
INSERT [dbo].[Products] ([idProduct], [Name], [Amount], [Price], [Type]) VALUES (6, N'Амоур', N'1700', 20000.0000, N'Конфеты')
INSERT [dbo].[Products] ([idProduct], [Name], [Amount], [Price], [Type]) VALUES (7, N'Петушок', N'2500', 34000.0000, N'Печенье')
INSERT [dbo].[Products] ([idProduct], [Name], [Amount], [Price], [Type]) VALUES (8, N'Бонжур', N'5000', 15000.0000, N'Конфеты')
INSERT [dbo].[Products] ([idProduct], [Name], [Amount], [Price], [Type]) VALUES (9, N'Зоря', N'4000', 10000.0000, N'Конфеты')
INSERT [dbo].[Products] ([idProduct], [Name], [Amount], [Price], [Type]) VALUES (10, N'Пчёлка', N'3500', 18000.0000, N'Конфеты')
INSERT [dbo].[Products] ([idProduct], [Name], [Amount], [Price], [Type]) VALUES (11, N'Праздник', N'5100', 38000.0000, N'Печенье')
INSERT [dbo].[Products] ([idProduct], [Name], [Amount], [Price], [Type]) VALUES (12, N'Овсяночка', N'2000', 12000.0000, N'Конфеты')
INSERT [dbo].[Products] ([idProduct], [Name], [Amount], [Price], [Type]) VALUES (15, N'Коровка', N'2600', 22500.0000, N'Конфеты')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Provider] ON 

INSERT [dbo].[Provider] ([idProvider], [Company_name], [Phone_number], [City_provider]) VALUES (1, N'Диливери', N'335050', N'Казань')
INSERT [dbo].[Provider] ([idProvider], [Company_name], [Phone_number], [City_provider]) VALUES (2, N'Яндекс', N'123098', N'Екатеринбург')
INSERT [dbo].[Provider] ([idProvider], [Company_name], [Phone_number], [City_provider]) VALUES (3, N'Мария', N'147258', N'Николаев')
INSERT [dbo].[Provider] ([idProvider], [Company_name], [Phone_number], [City_provider]) VALUES (5, N'Монгол', N'786333', N'Львов')
INSERT [dbo].[Provider] ([idProvider], [Company_name], [Phone_number], [City_provider]) VALUES (6, N'Порш', N'236547', N'Владивосток')
SET IDENTITY_INSERT [dbo].[Provider] OFF
GO
SET IDENTITY_INSERT [dbo].[Role_authorization] ON 

INSERT [dbo].[Role_authorization] ([idRole], [Name]) VALUES (1, N'Админ')
INSERT [dbo].[Role_authorization] ([idRole], [Name]) VALUES (2, N'standart')
SET IDENTITY_INSERT [dbo].[Role_authorization] OFF
GO
SET IDENTITY_INSERT [dbo].[Stock] ON 

INSERT [dbo].[Stock] ([idStock], [Name], [Country], [City], [idWorkers]) VALUES (6, N'Фиалка', N'Россия', N'Курск', 5)
INSERT [dbo].[Stock] ([idStock], [Name], [Country], [City], [idWorkers]) VALUES (7, N'Ваза', N'Украина', N'Киев', 1)
INSERT [dbo].[Stock] ([idStock], [Name], [Country], [City], [idWorkers]) VALUES (8, N'Надежда', N'Россия', N'Москва', 8)
INSERT [dbo].[Stock] ([idStock], [Name], [Country], [City], [idWorkers]) VALUES (9, N'Любовь', N'Беларусь', N'Минск', 9)
INSERT [dbo].[Stock] ([idStock], [Name], [Country], [City], [idWorkers]) VALUES (10, N'Махина', N'Украина', N'Санкт-Петербург', 2)
SET IDENTITY_INSERT [dbo].[Stock] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplies] ON 

INSERT [dbo].[Supplies] ([idSupplies], [Type], [Weight], [idStock], [idProvider], [idProduct]) VALUES (1, N'Экспресс', 40, 6, 6, 1)
INSERT [dbo].[Supplies] ([idSupplies], [Type], [Weight], [idStock], [idProvider], [idProduct]) VALUES (2, N'Стандарт', 60, 8, 1, 4)
INSERT [dbo].[Supplies] ([idSupplies], [Type], [Weight], [idStock], [idProvider], [idProduct]) VALUES (3, N'Стандарт', 80, 7, 2, 9)
INSERT [dbo].[Supplies] ([idSupplies], [Type], [Weight], [idStock], [idProvider], [idProduct]) VALUES (5, N'Экспресс', 90, 9, 3, 11)
SET IDENTITY_INSERT [dbo].[Supplies] OFF
GO
SET IDENTITY_INSERT [dbo].[User_authorization] ON 

INSERT [dbo].[User_authorization] ([idUser], [Login], [Password], [idRole]) VALUES (1, N'111', N'222', 1)
INSERT [dbo].[User_authorization] ([idUser], [Login], [Password], [idRole]) VALUES (2, N'222', N'111', 2)
SET IDENTITY_INSERT [dbo].[User_authorization] OFF
GO
SET IDENTITY_INSERT [dbo].[Workers] ON 

INSERT [dbo].[Workers] ([idWorkers], [Name], [Surname], [Patronymic], [Phone_number]) VALUES (1, N'Александр', N'Холодов', N'Эдуардович', N'123144')
INSERT [dbo].[Workers] ([idWorkers], [Name], [Surname], [Patronymic], [Phone_number]) VALUES (2, N'Эдуард', N'Митрохин', N'Валерьевич', N'234567')
INSERT [dbo].[Workers] ([idWorkers], [Name], [Surname], [Patronymic], [Phone_number]) VALUES (5, N'Евгений', N'Андросов', N'Витальевич', N'399419')
INSERT [dbo].[Workers] ([idWorkers], [Name], [Surname], [Patronymic], [Phone_number]) VALUES (6, N'Дмитрий', N'Баранов', N'Валентинович', N'956145')
INSERT [dbo].[Workers] ([idWorkers], [Name], [Surname], [Patronymic], [Phone_number]) VALUES (7, N'Валерий', N'Капустин', N'Константинович', N'183245')
INSERT [dbo].[Workers] ([idWorkers], [Name], [Surname], [Patronymic], [Phone_number]) VALUES (8, N'Антон', N'Пикалов', N'Кириллович', N'194314')
INSERT [dbo].[Workers] ([idWorkers], [Name], [Surname], [Patronymic], [Phone_number]) VALUES (9, N'Никита', N'Никитин', N'Петрович', N'113456')
SET IDENTITY_INSERT [dbo].[Workers] OFF
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Workers] FOREIGN KEY([idWorkers])
REFERENCES [dbo].[Workers] ([idWorkers])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Workers]
GO
ALTER TABLE [dbo].[Supplies]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_Products] FOREIGN KEY([idProduct])
REFERENCES [dbo].[Products] ([idProduct])
GO
ALTER TABLE [dbo].[Supplies] CHECK CONSTRAINT [FK_Supplies_Products]
GO
ALTER TABLE [dbo].[Supplies]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_Provider] FOREIGN KEY([idProvider])
REFERENCES [dbo].[Provider] ([idProvider])
GO
ALTER TABLE [dbo].[Supplies] CHECK CONSTRAINT [FK_Supplies_Provider]
GO
ALTER TABLE [dbo].[Supplies]  WITH CHECK ADD  CONSTRAINT [FK_Supplies_Stock] FOREIGN KEY([idStock])
REFERENCES [dbo].[Stock] ([idStock])
GO
ALTER TABLE [dbo].[Supplies] CHECK CONSTRAINT [FK_Supplies_Stock]
GO
ALTER TABLE [dbo].[User_authorization]  WITH CHECK ADD  CONSTRAINT [FK_User_authorization_Role_authorization] FOREIGN KEY([idRole])
REFERENCES [dbo].[Role_authorization] ([idRole])
GO
ALTER TABLE [dbo].[User_authorization] CHECK CONSTRAINT [FK_User_authorization_Role_authorization]
GO
