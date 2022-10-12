
USE [MEDHEAD]
GO
/****** Object:  Table [dbo].[account_type]    Script Date: 12/10/2022 20:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account_type](
	[type_id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[addresse]    Script Date: 12/10/2022 20:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[addresse](
	[addresseid] [bigint] IDENTITY(1,1) NOT NULL,
	[display_name] [varchar](255) NULL,
	[icon] [varchar](255) NULL,
	[lat] [varchar](255) NULL,
	[lon] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[addresseid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[app_authorization]    Script Date: 12/10/2022 20:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[app_authorization](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[app_user]    Script Date: 12/10/2022 20:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[app_user](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[password] [nvarchar](60) NOT NULL,
	[username] [nvarchar](60) NOT NULL,
	[validated] [bit] NOT NULL,
	[account_type_type_id] [bigint] NOT NULL,
 CONSTRAINT [PK__app_user__3213E83F891D7132] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[app_user_authorizations]    Script Date: 12/10/2022 20:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[app_user_authorizations](
	[app_user_id] [bigint] NOT NULL,
	[authorizations_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[groupe]    Script Date: 12/10/2022 20:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groupe](
	[groupeid] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[groupeid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hopital]    Script Date: 12/10/2022 20:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hopital](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[userid] [bigint] NOT NULL,
	[addresseid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hopital_specialites]    Script Date: 12/10/2022 20:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hopital_specialites](
	[hopital_id] [bigint] NOT NULL,
	[specialites_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lit]    Script Date: 12/10/2022 20:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lit](
	[lit_id] [bigint] IDENTITY(1,1) NOT NULL,
	[hopital_id] [bigint] NULL,
	[specid] [bigint] NULL,
	[libre] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[lit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lits]    Script Date: 12/10/2022 20:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lits](
	[lit_id] [bigint] IDENTITY(1,1) NOT NULL,
	[hopital_id] [bigint] NULL,
	[specialite_id] [bigint] NULL,
	[specid] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[lit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[specialite]    Script Date: 12/10/2022 20:08:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[specialite](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[groupeid] [bigint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[account_type] ON 
GO
INSERT [dbo].[account_type] ([type_id], [name]) VALUES (1, N'ADMIN')
GO
INSERT [dbo].[account_type] ([type_id], [name]) VALUES (2, N'HOSPITAL')
GO
INSERT [dbo].[account_type] ([type_id], [name]) VALUES (3, N'GUEST')
GO
SET IDENTITY_INSERT [dbo].[account_type] OFF
GO
SET IDENTITY_INSERT [dbo].[addresse] ON 
GO
INSERT [dbo].[addresse] ([addresseid], [display_name], [icon], [lat], [lon]) VALUES (10, N'American University Hospital, Maamari Street, El Hamra, Beirut, El Hamra, Ras Beirut, Beirut Governorate, 1103, Lebanon', N'https://nominatim.openstreetmap.org/ui/mapicons/health_hospital.p.20.png', N'33.8985594', N'35.4849331')
GO
INSERT [dbo].[addresse] ([addresseid], [display_name], [icon], [lat], [lon]) VALUES (11, N'Al Rassoul Al Azam Hospital, El Imam El Khomayni, Burj El Brajneh, Baabda District, Mount Lebanon Governorate, 1001, Lebanon', N'https://nominatim.openstreetmap.org/ui/mapicons/health_hospital.p.20.png', N'33.84364195', N'35.49916905902286')
GO
INSERT [dbo].[addresse] ([addresseid], [display_name], [icon], [lat], [lon]) VALUES (12, N'Hôtel Dieu, Alfred Naccache Road, Adliyeh, Hotel Dieu, Achrafieh, Beirut Governorate, 1100, Lebanon', N'https://nominatim.openstreetmap.org/ui/mapicons/health_hospital.p.20.png', N'33.881951400000005', N'35.51894843839874')
GO
INSERT [dbo].[addresse] ([addresseid], [display_name], [icon], [lat], [lon]) VALUES (13, N'Al Zahraa University Medical Center, Cheikh Sabah Al-Salem Al-Sabah, Bir Hassan, Jnah, Baabda District, Mount Lebanon Governorate, 2833 4219, Lebanon', N'https://nominatim.openstreetmap.org/ui/mapicons/health_hospital.p.20.png', N'33.863760799999994', N'35.48693199825297')
GO
INSERT [dbo].[addresse] ([addresseid], [display_name], [icon], [lat], [lon]) VALUES (14, N'Polyclinique Avicenne, Boulevard Achalme, Marcory Résidentiel, Marcory, Abidjan, Côte d''Ivoire', N'https://nominatim.openstreetmap.org/ui/mapicons/health_hospital.p.20.png', N'5.3162153', N'-3.9966557')
GO
INSERT [dbo].[addresse] ([addresseid], [display_name], [icon], [lat], [lon]) VALUES (15, N'Nouvelle Clinique Farah, Rue des Framirés, Marcory, Abidjan, Côte d''Ivoire', N'https://nominatim.openstreetmap.org/ui/mapicons/health_hospital.p.20.png', N'5.3106702', N'-3.9864509915505337')
GO
SET IDENTITY_INSERT [dbo].[addresse] OFF
GO
SET IDENTITY_INSERT [dbo].[app_authorization] ON 
GO
INSERT [dbo].[app_authorization] ([id], [name]) VALUES (1, N'ADMIN')
GO
INSERT [dbo].[app_authorization] ([id], [name]) VALUES (2, N'HOPITAL')
GO
SET IDENTITY_INSERT [dbo].[app_authorization] OFF
GO
SET IDENTITY_INSERT [dbo].[app_user] ON 
GO
INSERT [dbo].[app_user] ([id], [password], [username], [validated], [account_type_type_id]) VALUES (1, N'$2a$10$nl2s2dXI7msAlyedJi/gDOwKVgy48EcNNNCIt7VSNDAuibL3WYyQu', N'mohamad', 1, 1)
GO
INSERT [dbo].[app_user] ([id], [password], [username], [validated], [account_type_type_id]) VALUES (38, N'$2a$10$Gug5fcxtpiRkkRBOJ92H/u6zA3cPUX2YSfU7eiOvIfO/KD4KpIXgK', N'AUBMC', 1, 2)
GO
INSERT [dbo].[app_user] ([id], [password], [username], [validated], [account_type_type_id]) VALUES (39, N'$2a$10$uHHJnbKzNZ/OfI8Ze06SsOa0tAY4/Nz643xQm/m34E3/7Qxs139Iu', N'RAUH', 1, 2)
GO
INSERT [dbo].[app_user] ([id], [password], [username], [validated], [account_type_type_id]) VALUES (40, N'$2a$10$z/7wF0wyNhKwWSkfEUHQv.i/y6tnoiyCOCQxKsaLz1FrRBF0emKl2', N'ZHUMC', 1, 2)
GO
INSERT [dbo].[app_user] ([id], [password], [username], [validated], [account_type_type_id]) VALUES (41, N'$2a$10$7NVsokrpILdsjpJwBWz5tuVHEzXWmKr5vHthXs8VHPk2zo9MRqCAa', N'USJMC', 1, 2)
GO
INSERT [dbo].[app_user] ([id], [password], [username], [validated], [account_type_type_id]) VALUES (42, N'$2a$10$Shm3Szfhx1QV6gmi9ldLmexWDbppKyeAR8oxiHmq5SVKy95GcdvkW', N'Avicennes', 1, 2)
GO
INSERT [dbo].[app_user] ([id], [password], [username], [validated], [account_type_type_id]) VALUES (43, N'$2a$10$uvd7rkqW3Sba/i8EKZEQ1OFWRzxsS1D1yXz5M5QobeIwObDpe5cxm', N'PCF', 1, 2)
GO
SET IDENTITY_INSERT [dbo].[app_user] OFF
GO
INSERT [dbo].[app_user_authorizations] ([app_user_id], [authorizations_id]) VALUES (1, 1)
GO
INSERT [dbo].[app_user_authorizations] ([app_user_id], [authorizations_id]) VALUES (1, 1)
GO
INSERT [dbo].[app_user_authorizations] ([app_user_id], [authorizations_id]) VALUES (1, 1)
GO
INSERT [dbo].[app_user_authorizations] ([app_user_id], [authorizations_id]) VALUES (1, 1)
GO
INSERT [dbo].[app_user_authorizations] ([app_user_id], [authorizations_id]) VALUES (1, 1)
GO
INSERT [dbo].[app_user_authorizations] ([app_user_id], [authorizations_id]) VALUES (1, 1)
GO
INSERT [dbo].[app_user_authorizations] ([app_user_id], [authorizations_id]) VALUES (1, 1)
GO
INSERT [dbo].[app_user_authorizations] ([app_user_id], [authorizations_id]) VALUES (1, 1)
GO
SET IDENTITY_INSERT [dbo].[groupe] ON 
GO
INSERT [dbo].[groupe] ([groupeid], [name]) VALUES (113, N'Anesthésie')
GO
INSERT [dbo].[groupe] ([groupeid], [name]) VALUES (125, N'Groupe chirurgical')
GO
INSERT [dbo].[groupe] ([groupeid], [name]) VALUES (117, N'Groupe de médecine générale')
GO
INSERT [dbo].[groupe] ([groupeid], [name]) VALUES (120, N'Groupe de pathologie')
GO
INSERT [dbo].[groupe] ([groupeid], [name]) VALUES (122, N'Groupe de psychiatrie')
GO
INSERT [dbo].[groupe] ([groupeid], [name]) VALUES (123, N'Groupe de radiologie')
GO
INSERT [dbo].[groupe] ([groupeid], [name]) VALUES (115, N'Groupe dentaire')
GO
INSERT [dbo].[groupe] ([groupeid], [name]) VALUES (119, N'Groupe pédiatrique')
GO
INSERT [dbo].[groupe] ([groupeid], [name]) VALUES (121, N'Groupe Pronostiques et gestion de la santé/Santé communautaire')
GO
INSERT [dbo].[groupe] ([groupeid], [name]) VALUES (116, N'Médecine d''urgence')
GO
INSERT [dbo].[groupe] ([groupeid], [name]) VALUES (132, N'Neuro-chirurgie')
GO
INSERT [dbo].[groupe] ([groupeid], [name]) VALUES (118, N'Obstétrique et gynécologie')
GO
INSERT [dbo].[groupe] ([groupeid], [name]) VALUES (114, N'Oncologie clinique')
GO
INSERT [dbo].[groupe] ([groupeid], [name]) VALUES (131, N'test')
GO
SET IDENTITY_INSERT [dbo].[groupe] OFF
GO
SET IDENTITY_INSERT [dbo].[hopital] ON 
GO
INSERT [dbo].[hopital] ([id], [name], [userid], [addresseid]) VALUES (32, N'American University In Beirut Medical Center', 38, 10)
GO
INSERT [dbo].[hopital] ([id], [name], [userid], [addresseid]) VALUES (33, N'Al Rassoul Al AAzam Hopistal', 39, 11)
GO
INSERT [dbo].[hopital] ([id], [name], [userid], [addresseid]) VALUES (34, N'Al Zahraa University Hospital', 40, 13)
GO
INSERT [dbo].[hopital] ([id], [name], [userid], [addresseid]) VALUES (35, N'Hotel Dieu De France', 41, 12)
GO
INSERT [dbo].[hopital] ([id], [name], [userid], [addresseid]) VALUES (36, N'Polyclinique Avicennes', 42, 14)
GO
INSERT [dbo].[hopital] ([id], [name], [userid], [addresseid]) VALUES (37, N'Polyclinnique Farah', 43, 15)
GO
SET IDENTITY_INSERT [dbo].[hopital] OFF
GO
INSERT [dbo].[hopital_specialites] ([hopital_id], [specialites_id]) VALUES (32, 66)
GO
INSERT [dbo].[hopital_specialites] ([hopital_id], [specialites_id]) VALUES (32, 66)
GO
INSERT [dbo].[hopital_specialites] ([hopital_id], [specialites_id]) VALUES (32, 66)
GO
INSERT [dbo].[hopital_specialites] ([hopital_id], [specialites_id]) VALUES (32, 66)
GO
INSERT [dbo].[hopital_specialites] ([hopital_id], [specialites_id]) VALUES (32, 66)
GO
INSERT [dbo].[hopital_specialites] ([hopital_id], [specialites_id]) VALUES (32, 66)
GO
INSERT [dbo].[hopital_specialites] ([hopital_id], [specialites_id]) VALUES (32, 66)
GO
INSERT [dbo].[hopital_specialites] ([hopital_id], [specialites_id]) VALUES (32, 66)
GO
SET IDENTITY_INSERT [dbo].[lit] ON 
GO
INSERT [dbo].[lit] ([lit_id], [hopital_id], [specid], [libre]) VALUES (24, 32, 66, 1)
GO
INSERT [dbo].[lit] ([lit_id], [hopital_id], [specid], [libre]) VALUES (25, 36, 66, 1)
GO
INSERT [dbo].[lit] ([lit_id], [hopital_id], [specid], [libre]) VALUES (26, 37, 66, 1)
GO
INSERT [dbo].[lit] ([lit_id], [hopital_id], [specid], [libre]) VALUES (27, 37, 66, 1)
GO
SET IDENTITY_INSERT [dbo].[lit] OFF
GO
SET IDENTITY_INSERT [dbo].[specialite] ON 
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (65, N'Anesthésie', 113)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (66, N'Soins intensifs', 113)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (68, N'Oncologie Clinique', 114)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (69, N'Radiologie dentaire et maxillo-faciale', 115)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (70, N'Endodontie', 115)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (71, N'Chirurgie buccale et maxillo-faciale', 115)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (72, N'Pathologie buccale et maxillo-faciale', 115)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (73, N'Médecine buccale', 115)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (74, N'Chirurgie buccale', 115)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (75, N'Orthodontie', 115)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (76, N'Dentisterie pédiatrique', 115)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (77, N'Parodontie', 115)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (78, N'Prosthodontie', 115)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (79, N'Dentisterie restauratrice', 115)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (80, N'Dentisterie de soins spéciaux', 115)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (81, N'Médecine d''urgence', 116)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (82, N'Médecine interne de soins aigus', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (83, N'Allergie', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (84, N'Médecine audiovestibulaire', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (85, N'Cardiologie', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (86, N'Génétique clinique', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (87, N'Neurophysiologie clinique', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (88, N'Pharmacologie clinique et thérapeutique', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (89, N'Dermatologie', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (90, N'Endocrinologie et diabète sucré', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (91, N'Gastroentérologie', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (92, N'Médecine générale (interne)', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (93, N'Médecin généraliste', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (94, N'Médecine générale (GP) 6 mois', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (95, N'Médecine génito-urinaire', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (96, N'Médecine gériatrique', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (97, N'Maladies infectieuses', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (98, N'Oncologie médicale', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (99, N'Ophtalmologie médicale', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (100, N'Neurologie', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (101, N'Médecine du travail', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (102, N'Autre', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (103, N'Médecine palliative', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (104, N'Médecine de réadaptation', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (105, N'Médecine rénale', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (106, N'Médecine respiratoire', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (107, N'Rhumatologie', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (108, N'Médecine du sport et de l''exercice', 117)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (109, N'Santé publique sexuelle et procréative', 118)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (110, N'Cardiologie pédiatrique', 119)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (111, N'Pédiatrie', 119)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (113, N'Pathologie chimique', 120)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (114, N'Neuropathologie diagnostique', 120)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (115, N'Histopathologie médico-légale', 120)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (116, N'Pathologie générale', 120)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (117, N'Hématologie', 120)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (118, N'Histopathologie', 120)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (119, N'Immunologie', 120)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (120, N'Microbiologie médicale', 120)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (121, N'Pathologie pédiatrique et périnatale', 120)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (122, N'Virologie', 120)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (123, N'Service de santé communautaire dentaire', 121)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (124, N'Service de santé communautaire médical', 121)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (125, N'Santé publique dentaire', 121)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (126, N'Praticien de l’art dentaire', 121)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (127, N'Santé publique', 121)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (128, N'Psychiatrie infantile et adolescente', 122)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (129, N'Psychiatrie légale', 122)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (130, N'Psychiatrie générale', 122)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (131, N'Psychiatrie de la vieillesse', 122)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (132, N'Psychiatrie des troubles d''apprentissage', 122)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (133, N'Psychothérapie', 122)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (134, N'Radiologie clinique', 123)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (135, N'Médecine nucléaire', 123)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (136, N'Chirurgie cardiothoracique', 125)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (137, N'Chirurgie générale', 125)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (138, N'Neurochirurgie', 125)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (139, N'Ophtalmologie', 125)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (140, N'Otolaryngologie', 125)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (141, N'Chirurgie pédiatrique', 125)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (142, N'Chirurgie plastique', 125)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (143, N'Traumatologie et chirurgie orthopédique', 125)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (144, N'Urologie', 125)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (145, N'Chirurgie vasculaire', 125)
GO
INSERT [dbo].[specialite] ([id], [name], [groupeid]) VALUES (146, N'blva', 132)
GO
SET IDENTITY_INSERT [dbo].[specialite] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_mbxu7nn49jkyqh3x1s2wt1l3w]    Script Date: 12/10/2022 20:08:29 ******/
ALTER TABLE [dbo].[app_authorization] ADD  CONSTRAINT [UK_mbxu7nn49jkyqh3x1s2wt1l3w] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_3k4cplvh82srueuttfkwnylq0]    Script Date: 12/10/2022 20:08:29 ******/
ALTER TABLE [dbo].[app_user] ADD  CONSTRAINT [UK_3k4cplvh82srueuttfkwnylq0] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_3gdppnywpdr0jqbrjddp810br]    Script Date: 12/10/2022 20:08:29 ******/
ALTER TABLE [dbo].[groupe] ADD  CONSTRAINT [UK_3gdppnywpdr0jqbrjddp810br] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UK_f77doexyb2ha5xwjb9oy9wp0o]    Script Date: 12/10/2022 20:08:29 ******/
ALTER TABLE [dbo].[specialite] ADD  CONSTRAINT [UK_f77doexyb2ha5xwjb9oy9wp0o] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[app_user]  WITH CHECK ADD  CONSTRAINT [FKpxn69iqjk39x6puud01iekkhe] FOREIGN KEY([account_type_type_id])
REFERENCES [dbo].[account_type] ([type_id])
GO
ALTER TABLE [dbo].[app_user] CHECK CONSTRAINT [FKpxn69iqjk39x6puud01iekkhe]
GO
ALTER TABLE [dbo].[app_user_authorizations]  WITH CHECK ADD  CONSTRAINT [FK2ky3a7y92ap1d71nu0eka8tgu] FOREIGN KEY([app_user_id])
REFERENCES [dbo].[app_user] ([id])
GO
ALTER TABLE [dbo].[app_user_authorizations] CHECK CONSTRAINT [FK2ky3a7y92ap1d71nu0eka8tgu]
GO
ALTER TABLE [dbo].[app_user_authorizations]  WITH CHECK ADD  CONSTRAINT [FKgn4xqlwagn6ca559ofid85b8x] FOREIGN KEY([authorizations_id])
REFERENCES [dbo].[app_authorization] ([id])
GO
ALTER TABLE [dbo].[app_user_authorizations] CHECK CONSTRAINT [FKgn4xqlwagn6ca559ofid85b8x]
GO
ALTER TABLE [dbo].[hopital]  WITH CHECK ADD  CONSTRAINT [FK815n69m9bh1hj80dcs54uofk9] FOREIGN KEY([addresseid])
REFERENCES [dbo].[addresse] ([addresseid])
GO
ALTER TABLE [dbo].[hopital] CHECK CONSTRAINT [FK815n69m9bh1hj80dcs54uofk9]
GO
ALTER TABLE [dbo].[hopital]  WITH CHECK ADD  CONSTRAINT [FKmf7lmpvrivdm42jj3557qb1ws] FOREIGN KEY([userid])
REFERENCES [dbo].[app_user] ([id])
GO
ALTER TABLE [dbo].[hopital] CHECK CONSTRAINT [FKmf7lmpvrivdm42jj3557qb1ws]
GO
ALTER TABLE [dbo].[hopital_specialites]  WITH CHECK ADD  CONSTRAINT [FK1f0l5q6m0yxi3b159brp7otyn] FOREIGN KEY([hopital_id])
REFERENCES [dbo].[hopital] ([id])
GO
ALTER TABLE [dbo].[hopital_specialites] CHECK CONSTRAINT [FK1f0l5q6m0yxi3b159brp7otyn]
GO
ALTER TABLE [dbo].[hopital_specialites]  WITH CHECK ADD  CONSTRAINT [FK6vigeu4yy1vg7u9u6p4j0961n] FOREIGN KEY([specialites_id])
REFERENCES [dbo].[specialite] ([id])
GO
ALTER TABLE [dbo].[hopital_specialites] CHECK CONSTRAINT [FK6vigeu4yy1vg7u9u6p4j0961n]
GO
ALTER TABLE [dbo].[lit]  WITH CHECK ADD  CONSTRAINT [FK8ya1f6u2roa63pfm0xavp1lb5] FOREIGN KEY([specid])
REFERENCES [dbo].[specialite] ([id])
GO
ALTER TABLE [dbo].[lit] CHECK CONSTRAINT [FK8ya1f6u2roa63pfm0xavp1lb5]
GO
ALTER TABLE [dbo].[lit]  WITH CHECK ADD  CONSTRAINT [FKqc3b9bb7u9bwlg62a2qt4xwl6] FOREIGN KEY([hopital_id])
REFERENCES [dbo].[hopital] ([id])
GO
ALTER TABLE [dbo].[lit] CHECK CONSTRAINT [FKqc3b9bb7u9bwlg62a2qt4xwl6]
GO
ALTER TABLE [dbo].[lits]  WITH CHECK ADD  CONSTRAINT [FK1b1bvyfankrjcoa3r4d73hf9h] FOREIGN KEY([specid])
REFERENCES [dbo].[specialite] ([id])
GO
ALTER TABLE [dbo].[lits] CHECK CONSTRAINT [FK1b1bvyfankrjcoa3r4d73hf9h]
GO
ALTER TABLE [dbo].[lits]  WITH CHECK ADD  CONSTRAINT [FK8yxehlee5dak8204svq6lyk6m] FOREIGN KEY([specialite_id])
REFERENCES [dbo].[specialite] ([id])
GO
ALTER TABLE [dbo].[lits] CHECK CONSTRAINT [FK8yxehlee5dak8204svq6lyk6m]
GO
ALTER TABLE [dbo].[lits]  WITH CHECK ADD  CONSTRAINT [FKdvb10a1l8sfxdsko87ha67klj] FOREIGN KEY([hopital_id])
REFERENCES [dbo].[hopital] ([id])
GO
ALTER TABLE [dbo].[lits] CHECK CONSTRAINT [FKdvb10a1l8sfxdsko87ha67klj]
GO
ALTER TABLE [dbo].[specialite]  WITH CHECK ADD  CONSTRAINT [FKgs78bdp5vqdyagt6vwb13bkea] FOREIGN KEY([groupeid])
REFERENCES [dbo].[groupe] ([groupeid])
GO
ALTER TABLE [dbo].[specialite] CHECK CONSTRAINT [FKgs78bdp5vqdyagt6vwb13bkea]
GO
