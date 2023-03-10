USE [LIBRARY]
GO
/****** Object:  Table [dbo].[Adminler]    Script Date: 26.01.2023 23:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adminler](
	[AdminId] [int] IDENTITY(1,1) NOT NULL,
	[AdminKullaniciId] [nvarchar](50) NULL,
	[AdminSifre] [nvarchar](50) NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[YeniAdminEklemeYetkisi] [int] NULL,
 CONSTRAINT [PK_Adminler] PRIMARY KEY CLUSTERED 
(
	[AdminId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emanetler]    Script Date: 26.01.2023 23:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emanetler](
	[EmanetId] [int] IDENTITY(1,1) NOT NULL,
	[EmanetKullaniciId] [int] NULL,
	[EmanetKitapId] [int] NULL,
	[AlinanTarih] [date] NULL,
	[TeslimTarihi] [date] NULL,
	[Durumu] [int] NULL,
 CONSTRAINT [PK_Emanetler] PRIMARY KEY CLUSTERED 
(
	[EmanetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favoriler]    Script Date: 26.01.2023 23:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favoriler](
	[FavoriId] [int] NOT NULL,
	[FavoriKitapId] [int] NULL,
	[FavoriKullaniciId] [int] NULL,
 CONSTRAINT [PK_Favoriler] PRIMARY KEY CLUSTERED 
(
	[FavoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitaplar]    Script Date: 26.01.2023 23:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitaplar](
	[KitapId] [int] IDENTITY(1,1) NOT NULL,
	[KitapAd] [nvarchar](50) NULL,
	[KitapYazar] [int] NULL,
	[KitapTur] [int] NULL,
	[SayfaSayisi] [int] NULL,
	[BaskiSayisi] [int] NULL,
	[KitapOzet] [nvarchar](max) NULL,
	[KitapAdeti] [int] NULL,
	[KitapFotoUrl] [nvarchar](max) NULL,
 CONSTRAINT [PK_Kitaplar] PRIMARY KEY CLUSTERED 
(
	[KitapId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 26.01.2023 23:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[KullaniciId] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAd] [nvarchar](50) NULL,
	[KullaniciSifre] [nvarchar](50) NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kullanıcılar] PRIMARY KEY CLUSTERED 
(
	[KullaniciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeslimDurum]    Script Date: 26.01.2023 23:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeslimDurum](
	[DurumId] [int] IDENTITY(1,1) NOT NULL,
	[DurumIsım] [nvarchar](50) NULL,
 CONSTRAINT [PK_TeslimDurum] PRIMARY KEY CLUSTERED 
(
	[DurumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Turler]    Script Date: 26.01.2023 23:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Turler](
	[TurId] [int] IDENTITY(1,1) NOT NULL,
	[TurAd] [nvarchar](50) NULL,
 CONSTRAINT [PK_Turler] PRIMARY KEY CLUSTERED 
(
	[TurId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yazarlar]    Script Date: 26.01.2023 23:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yazarlar](
	[YazarId] [int] IDENTITY(1,1) NOT NULL,
	[YazarAd] [nvarchar](50) NULL,
 CONSTRAINT [PK_Yazarlar] PRIMARY KEY CLUSTERED 
(
	[YazarId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adminler] ON 

INSERT [dbo].[Adminler] ([AdminId], [AdminKullaniciId], [AdminSifre], [Ad], [Soyad], [YeniAdminEklemeYetkisi]) VALUES (1, N'admin', N'admin', N'berkay', N'akparlar', 1)
SET IDENTITY_INSERT [dbo].[Adminler] OFF
GO
SET IDENTITY_INSERT [dbo].[Emanetler] ON 

INSERT [dbo].[Emanetler] ([EmanetId], [EmanetKullaniciId], [EmanetKitapId], [AlinanTarih], [TeslimTarihi], [Durumu]) VALUES (1, 1, 1, CAST(N'2022-12-19' AS Date), CAST(N'2022-12-21' AS Date), 2)
SET IDENTITY_INSERT [dbo].[Emanetler] OFF
GO
INSERT [dbo].[Favoriler] ([FavoriId], [FavoriKitapId], [FavoriKullaniciId]) VALUES (1, 1, 1)
INSERT [dbo].[Favoriler] ([FavoriId], [FavoriKitapId], [FavoriKullaniciId]) VALUES (2, 2, 2)
INSERT [dbo].[Favoriler] ([FavoriId], [FavoriKitapId], [FavoriKullaniciId]) VALUES (3, 3, 1)
INSERT [dbo].[Favoriler] ([FavoriId], [FavoriKitapId], [FavoriKullaniciId]) VALUES (4, 4, 2)
INSERT [dbo].[Favoriler] ([FavoriId], [FavoriKitapId], [FavoriKullaniciId]) VALUES (5, 5, 1)
GO
SET IDENTITY_INSERT [dbo].[Kitaplar] ON 

INSERT [dbo].[Kitaplar] ([KitapId], [KitapAd], [KitapYazar], [KitapTur], [SayfaSayisi], [BaskiSayisi], [KitapOzet], [KitapAdeti], [KitapFotoUrl]) VALUES (1, N'Son Kuşlar', 2, 6, 110, 10, N'"Söz vermiştim kendi kendime: Yazı bile yazmayacaktım. Yazı yazmak da, bir hırstan başka ne idi? Burada namuslu insanlar arasında sakin, ölümü bekleyecektim. Hırs, hiddet neme gerekti? Yapamadım.Koştum tütüncüye, kalem kâğıt aldım. Oturdum.Ada ''nın tenha yollarında gezerken canım sıkılırsa küçük değnekler yontmak için cebimde taşıdığım çakımı çıkardım. Kalemi yonttum. Yonttuktan sonra tuttum öptüm. Yazmasam deli olacaktım.""Haritada Bir Nokta" adlı öyküden.', 10, N'https://img.kitapyurdu.com/v1/getImage/fn:11409634/wh:true/wi:220')
INSERT [dbo].[Kitaplar] ([KitapId], [KitapAd], [KitapYazar], [KitapTur], [SayfaSayisi], [BaskiSayisi], [KitapOzet], [KitapAdeti], [KitapFotoUrl]) VALUES (2, N'Başlangıç', 3, 1, 250, 4, N'Bilim kurgu türündeki romanları ile dünyayı kasıp kavuran Dan Brown, bu defa Başlangıç isimli kitabı ile okuyucuları karşılıyor. Yazarın eserlerindeki temel konu olan din ve bilim arasındaki gelgitler, bu romanda da ön plana çıkıyor. İnsanlığın tarihini konu edinen roman, geçmiş ve gelecek ile ilgili büyük ipuçları barındırıyor. Dan Brown’ın olağanüstü anlatım gücü ve sağlam karakter analizleri ile herkesi kendine çekmeyi başaran bu eser, yazarın tıpkı diğer romanları gibi okurunu etkisi altına alıyor.', 1, N'https://i.dr.com.tr/cache/500x400-0/originals/0001720220001-1.jpg')
INSERT [dbo].[Kitaplar] ([KitapId], [KitapAd], [KitapYazar], [KitapTur], [SayfaSayisi], [BaskiSayisi], [KitapOzet], [KitapAdeti], [KitapFotoUrl]) VALUES (3, N'Kayıp Sembol', 3, 1, 350, 2, N'Dan Brown; Da Vinci Şifresi, Melekler ve Şeytanlar''dan sonra Kayıp Sembol''de insanlığın yüzyıllardır beklediği bir gerçeğin peşinde... Harvard Simgebilim Profesörü Robert Langdon, Kongre Binasında konferans vermesi için yakın bir arkadaşından davet alır. Ancak, Washington''a varır varmaz oldukça garip bir durumla karşı karşıya kalan profesör, kendini korkunç bir oyunun ortasında bulur. Kongre Binas''na bırakılmış olan bir sembolün -yakın arkadaşı Peter Solomon''ın kesik eli- varlığını haber veren bir telefon, Langdon''ı hiç de yabancısı olmadığı bir dünyaya davet etmektedir. Antikçağlarda kullanılan bu sembolik çağrı, daveti alan kişiyi ezoterik bilgeliğin hüküm sürdüğü, çok eskilerde kalmış kayıp bir dünyaya sürükleyecektir. Sonu belli olmayan bu mistik daveti arkadaşını kurtarmak için kabul eden Langdon, bir anda masonik sırların, saklı kalmış tarihin ve o güne dek görmediği yerlerin gizli dünyasında inanılmaz bir gerçekle yüzleşmek zorunda kalır. Artık cevaplanması gereken sorular vardır: İnsanlığın Altın Çağı, açılmaması gereken bir kapının aralığından sırlarıyla birlikte yok mu olacak, yoksa hikmetin ışığında tüm soruların cevapları mı bulunacaktır?...', 2, N'https://i.dr.com.tr/cache/500x400-0/originals/0000000317832-1.jpg')
INSERT [dbo].[Kitaplar] ([KitapId], [KitapAd], [KitapYazar], [KitapTur], [SayfaSayisi], [BaskiSayisi], [KitapOzet], [KitapAdeti], [KitapFotoUrl]) VALUES (4, N'Yüzüklerin Efendisi - I - Yüzük Kardeşliği', 8, 9, 496, 5, N'''Yüzüklerin Efendisi'' son yüzyılın en çok okunan yüz kitabı arasında en başta geliyor; bilimkurgu, fantezi, polisiye, best-seller ya da ana akım demeden, tüm edebiyat türleri arasında tartışmasız bir önderliğe sahip. Bir açıdan bakarsanız bir fantezi romanı, başka bir açıdan baktığınızda, insanlık durumu, sorumluluk, iktidar ve savaş üzerine bir roman. Bir yolculuk, bir büyüme öyküsü; fedakârlık ve dostluk üzerine, hırs ve ihanet üzerine bir roman.', 5, N'https://i.dr.com.tr/cache/500x400-0/originals/0000000057163-1.jpg')
INSERT [dbo].[Kitaplar] ([KitapId], [KitapAd], [KitapYazar], [KitapTur], [SayfaSayisi], [BaskiSayisi], [KitapOzet], [KitapAdeti], [KitapFotoUrl]) VALUES (5, N'Çalıkuşu ', 2, 3, 245, 2, NULL, 2, N'https://img.kitapyurdu.com/v1/getImage/fn:210061/wh:true/miw:200/mih:200')
SET IDENTITY_INSERT [dbo].[Kitaplar] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 

INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAd], [KullaniciSifre], [Ad], [Soyad]) VALUES (1, N'user1', N'user1', N'Berkay', N'Akparlar')
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAd], [KullaniciSifre], [Ad], [Soyad]) VALUES (2, N'user2', N'user2', N'Hakan', N'Çağan')
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
GO
SET IDENTITY_INSERT [dbo].[TeslimDurum] ON 

INSERT [dbo].[TeslimDurum] ([DurumId], [DurumIsım]) VALUES (1, N'Teslim Edilmedi')
INSERT [dbo].[TeslimDurum] ([DurumId], [DurumIsım]) VALUES (2, N'Süresi Gelmedi')
INSERT [dbo].[TeslimDurum] ([DurumId], [DurumIsım]) VALUES (3, N'Hasarlı Teslim Edildi')
INSERT [dbo].[TeslimDurum] ([DurumId], [DurumIsım]) VALUES (4, N'Geç Teslim Edildi')
INSERT [dbo].[TeslimDurum] ([DurumId], [DurumIsım]) VALUES (5, N'Teslim Edildi')
SET IDENTITY_INSERT [dbo].[TeslimDurum] OFF
GO
SET IDENTITY_INSERT [dbo].[Turler] ON 

INSERT [dbo].[Turler] ([TurId], [TurAd]) VALUES (1, N'Korku-Gerilim')
INSERT [dbo].[Turler] ([TurId], [TurAd]) VALUES (2, N'Polisiye')
INSERT [dbo].[Turler] ([TurId], [TurAd]) VALUES (3, N'Romantik')
INSERT [dbo].[Turler] ([TurId], [TurAd]) VALUES (4, N'Otobiyografi')
INSERT [dbo].[Turler] ([TurId], [TurAd]) VALUES (5, N'Bilim Kurgu')
INSERT [dbo].[Turler] ([TurId], [TurAd]) VALUES (6, N'Tarih')
INSERT [dbo].[Turler] ([TurId], [TurAd]) VALUES (7, N'Felsefe')
INSERT [dbo].[Turler] ([TurId], [TurAd]) VALUES (8, N'Kişisel Gelişim')
INSERT [dbo].[Turler] ([TurId], [TurAd]) VALUES (9, N'Fantastik')
INSERT [dbo].[Turler] ([TurId], [TurAd]) VALUES (11, N'denemeeee')
SET IDENTITY_INSERT [dbo].[Turler] OFF
GO
SET IDENTITY_INSERT [dbo].[Yazarlar] ON 

INSERT [dbo].[Yazarlar] ([YazarId], [YazarAd]) VALUES (1, N'Sait Fanık Abasıyanık')
INSERT [dbo].[Yazarlar] ([YazarId], [YazarAd]) VALUES (2, N'Reşat Nuri Gültekin')
INSERT [dbo].[Yazarlar] ([YazarId], [YazarAd]) VALUES (3, N'Dan Brown')
INSERT [dbo].[Yazarlar] ([YazarId], [YazarAd]) VALUES (4, N'Ahmet Hamdi Tanpınar')
INSERT [dbo].[Yazarlar] ([YazarId], [YazarAd]) VALUES (5, N'Cemal Süreya')
INSERT [dbo].[Yazarlar] ([YazarId], [YazarAd]) VALUES (6, N'Yunus Emre')
INSERT [dbo].[Yazarlar] ([YazarId], [YazarAd]) VALUES (7, N'Necip Fazıl Kısakürek')
INSERT [dbo].[Yazarlar] ([YazarId], [YazarAd]) VALUES (8, N'John Ronald Reuel Tolkien')
SET IDENTITY_INSERT [dbo].[Yazarlar] OFF
GO
ALTER TABLE [dbo].[Emanetler]  WITH CHECK ADD  CONSTRAINT [FK_Emanetler_Kitaplar] FOREIGN KEY([EmanetKitapId])
REFERENCES [dbo].[Kitaplar] ([KitapId])
GO
ALTER TABLE [dbo].[Emanetler] CHECK CONSTRAINT [FK_Emanetler_Kitaplar]
GO
ALTER TABLE [dbo].[Emanetler]  WITH CHECK ADD  CONSTRAINT [FK_Emanetler_Kullanıcılar] FOREIGN KEY([EmanetKullaniciId])
REFERENCES [dbo].[Kullanicilar] ([KullaniciId])
GO
ALTER TABLE [dbo].[Emanetler] CHECK CONSTRAINT [FK_Emanetler_Kullanıcılar]
GO
ALTER TABLE [dbo].[Emanetler]  WITH CHECK ADD  CONSTRAINT [FK_Emanetler_TeslimDurum] FOREIGN KEY([Durumu])
REFERENCES [dbo].[TeslimDurum] ([DurumId])
GO
ALTER TABLE [dbo].[Emanetler] CHECK CONSTRAINT [FK_Emanetler_TeslimDurum]
GO
ALTER TABLE [dbo].[Favoriler]  WITH CHECK ADD  CONSTRAINT [FK_Favoriler_Kitaplar] FOREIGN KEY([FavoriKitapId])
REFERENCES [dbo].[Kitaplar] ([KitapId])
GO
ALTER TABLE [dbo].[Favoriler] CHECK CONSTRAINT [FK_Favoriler_Kitaplar]
GO
ALTER TABLE [dbo].[Kitaplar]  WITH CHECK ADD  CONSTRAINT [FK_Kitaplar_Turler] FOREIGN KEY([KitapTur])
REFERENCES [dbo].[Turler] ([TurId])
GO
ALTER TABLE [dbo].[Kitaplar] CHECK CONSTRAINT [FK_Kitaplar_Turler]
GO
ALTER TABLE [dbo].[Kitaplar]  WITH CHECK ADD  CONSTRAINT [FK_Kitaplar_Yazarlar] FOREIGN KEY([KitapYazar])
REFERENCES [dbo].[Yazarlar] ([YazarId])
GO
ALTER TABLE [dbo].[Kitaplar] CHECK CONSTRAINT [FK_Kitaplar_Yazarlar]
GO
