USE [Renovacion]
GO
/****** Object:  Table [dbo].[Accesos]    Script Date: 11/5/2019 7:03:00 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accesos](
	[Access_ID] [int] IDENTITY(1,1) NOT NULL,
	[Access_Staff] [varchar](11) NULL,
	[Access_Nombre] [varchar](60) NOT NULL,
	[Access_Tipo] [nchar](14) NOT NULL,
	[Access_GUID] [varchar](40) NOT NULL,
	[Access_Email] [varchar](60) NOT NULL,
	[Access_Rol] [nchar](16) NOT NULL,
	[Access_Status] [nchar](10) NOT NULL,
	[Access_FechaAlta] [datetime] NOT NULL,
 CONSTRAINT [PK_Accessos] PRIMARY KEY CLUSTERED 
(
	[Access_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccOficina]    Script Date: 11/5/2019 7:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccOficina](
	[AOfi_ID] [int] NOT NULL,
	[AOfi_AccID] [int] NOT NULL,
	[AOfi_OfiID] [int] NOT NULL,
 CONSTRAINT [PK_AccOficina] PRIMARY KEY CLUSTERED 
(
	[AOfi_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bitacora]    Script Date: 11/5/2019 7:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bitacora](
	[Bit_ID] [int] NOT NULL,
	[Bit_MovID] [int] NOT NULL,
	[Bit_Autor] [varchar](70) NOT NULL,
	[Bit_Tipo] [varchar](50) NOT NULL,
	[Bit_Descrip] [varchar](200) NULL,
	[Bit_Fecha]  AS (getdate()),
 CONSTRAINT [PK_Bitacora] PRIMARY KEY CLUSTERED 
(
	[Bit_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cuestionarios]    Script Date: 11/5/2019 7:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuestionarios](
	[Cuest_ID] [int] NOT NULL,
	[Cuest_PregID] [int] NOT NULL,
	[Cuest_RenoID] [int] NOT NULL,
	[Cuest_Respuesta] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Cuestionarios] PRIMARY KEY CLUSTERED 
(
	[Cuest_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Envios]    Script Date: 11/5/2019 7:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Envios](
	[Env_ID] [int] NOT NULL,
	[Env_NotID] [int] NOT NULL,
	[Env_RenoID] [int] NOT NULL,
	[Env_Fecha]  AS (getdate()),
 CONSTRAINT [PK_Envios] PRIMARY KEY CLUSTERED 
(
	[Env_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Laptops]    Script Date: 11/5/2019 7:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laptops](
	[Lap_ID] [int] IDENTITY(1,1) NOT NULL,
	[Lap_Caja] [varbinary](50) NOT NULL,
	[Lap_NoSerie] [varbinary](50) NOT NULL,
	[Lap_Descrip] [varbinary](50) NULL,
 CONSTRAINT [PK_Laptops] PRIMARY KEY CLUSTERED 
(
	[Lap_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notificaciones]    Script Date: 11/5/2019 7:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notificaciones](
	[Not_ID] [int] NOT NULL,
	[Not_ProyID] [int] NOT NULL,
	[Not_Tipo] [tinyint] NOT NULL,
	[Not_RenoStatus] [tinyint] NULL,
	[Not_Titulo] [varchar](100) NOT NULL,
	[Not_Subject] [varbinary](200) NOT NULL,
	[Not_Mensaje] [text] NOT NULL,
	[Not_AutoNum] [tinyint] NULL,
	[Not_FecEnvio] [datetime] NULL,
	[Not_Status] [bit] NOT NULL,
 CONSTRAINT [PK_Notificaciones] PRIMARY KEY CLUSTERED 
(
	[Not_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Oficinas]    Script Date: 11/5/2019 7:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Oficinas](
	[Oficina_ID] [int] IDENTITY(1,1) NOT NULL,
	[Oficina_Nombre] [varchar](30) NOT NULL,
	[Oficina_NomAbrev] [nchar](10) NOT NULL,
	[Oficina_Status] [nchar](1) NOT NULL,
 CONSTRAINT [PK_Oficinas] PRIMARY KEY CLUSTERED 
(
	[Oficina_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Opciones]    Script Date: 11/5/2019 7:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opciones](
	[Op_ID] [int] NOT NULL,
	[Op_Valor] [int] NOT NULL,
	[Op_Desc] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Opciones] PRIMARY KEY CLUSTERED 
(
	[Op_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partes]    Script Date: 11/5/2019 7:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partes](
	[Part_ID] [int] NOT NULL,
	[Part_Nombre] [varchar](200) NOT NULL,
	[Part_Costo] [money] NOT NULL,
	[Part_Status] [bit] NOT NULL,
 CONSTRAINT [PK_Partes] PRIMARY KEY CLUSTERED 
(
	[Part_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartesProy]    Script Date: 11/5/2019 7:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartesProy](
	[PProy_ID] [int] NOT NULL,
	[PProy_ProyID] [int] NOT NULL,
	[PProy_ParteID] [int] NOT NULL,
	[PProy_Costo] [money] NOT NULL,
 CONSTRAINT [PK_PartesProy] PRIMARY KEY CLUSTERED 
(
	[PProy_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartesRenova]    Script Date: 11/5/2019 7:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartesRenova](
	[PRenova_ID] [int] NOT NULL,
	[PRenova__RenID] [int] NOT NULL,
	[PRenova__PartID] [int] NOT NULL,
 CONSTRAINT [PK_ParteRenova] PRIMARY KEY CLUSTERED 
(
	[PRenova_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 11/5/2019 7:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Preguntas](
	[Preg_ID] [int] NOT NULL,
	[Preg_Pregunta] [varchar](max) NOT NULL,
	[Preg_Tipo] [nchar](1) NOT NULL,
	[Preg_Status] [bit] NOT NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[Preg_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proyectos]    Script Date: 11/5/2019 7:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proyectos](
	[Proy_ID] [int] IDENTITY(1,1) NOT NULL,
	[Proy_Nombre] [varchar](150) NOT NULL,
	[Proy_FecInicio] [date] NOT NULL,
	[Proy_FecFin] [date] NOT NULL,
	[Proy_Status] [tinyint] NOT NULL,
	[Proy_NoPersonas] [int] NOT NULL,
	[Proy_NoLaptops] [int] NOT NULL,
	[Proy_FecCreado] [datetime] NOT NULL,
	[Proy_Autor] [varchar](11) NOT NULL,
 CONSTRAINT [PK_Proyectos] PRIMARY KEY CLUSTERED 
(
	[Proy_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Renovacion]    Script Date: 11/5/2019 7:03:01 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Renovacion](
	[Ren_ID] [int] IDENTITY(1,1) NOT NULL,
	[Ren_ProyID] [int] NOT NULL,
	[Ren_Staff] [varchar](11) NULL,
	[Ren_Modelo] [varchar](40) NOT NULL,
	[Ren_NoSerieAnt] [varchar](40) NOT NULL,
	[Ren_RenovaFec] [date] NULL,
	[Ren_RenovaHora] [time](7) NULL,
	[Ren_Status] [tinyint] NOT NULL,
	[Ren_StatusRen] [tinyint] NOT NULL,
	[Ren_Lugar] [varchar](200) NULL,
	[Ren_Atendio] [varchar](60) NOT NULL,
	[Ren_FecRenova] [datetime] NOT NULL,
	[Ren_MaquinaID] [int] NULL,
	[Ren_Oficina] [int] NOT NULL,
	[Ren_Regresada] [bit] NULL,
	[Ren_Comentarios] [nvarchar](max) NULL,
 CONSTRAINT [PK_Renovacion] PRIMARY KEY CLUSTERED 
(
	[Ren_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Proyectos] ADD  CONSTRAINT [DF_Proyectos_Proy_Status]  DEFAULT ((0)) FOR [Proy_Status]
GO
ALTER TABLE [dbo].[Proyectos] ADD  CONSTRAINT [DF_Proyectos_Proy_NoPersonas]  DEFAULT ((0)) FOR [Proy_NoPersonas]
GO
ALTER TABLE [dbo].[Proyectos] ADD  CONSTRAINT [DF_Proyectos_Proy_NoLaptops]  DEFAULT ((0)) FOR [Proy_NoLaptops]
GO
ALTER TABLE [dbo].[AccOficina]  WITH CHECK ADD  CONSTRAINT [FK_AccOficina_Acceso] FOREIGN KEY([AOfi_AccID])
REFERENCES [dbo].[Accesos] ([Access_ID])
GO
ALTER TABLE [dbo].[AccOficina] CHECK CONSTRAINT [FK_AccOficina_Acceso]
GO
ALTER TABLE [dbo].[AccOficina]  WITH CHECK ADD  CONSTRAINT [FK_AccOficina_Oficina] FOREIGN KEY([AOfi_OfiID])
REFERENCES [dbo].[Oficinas] ([Oficina_ID])
GO
ALTER TABLE [dbo].[AccOficina] CHECK CONSTRAINT [FK_AccOficina_Oficina]
GO
ALTER TABLE [dbo].[Cuestionarios]  WITH CHECK ADD  CONSTRAINT [FK_Cuestionarios_Pregunta] FOREIGN KEY([Cuest_PregID])
REFERENCES [dbo].[Preguntas] ([Preg_ID])
GO
ALTER TABLE [dbo].[Cuestionarios] CHECK CONSTRAINT [FK_Cuestionarios_Pregunta]
GO
ALTER TABLE [dbo].[Cuestionarios]  WITH CHECK ADD  CONSTRAINT [FK_Cuestionarios_Renovacion] FOREIGN KEY([Cuest_RenoID])
REFERENCES [dbo].[Renovacion] ([Ren_ID])
GO
ALTER TABLE [dbo].[Cuestionarios] CHECK CONSTRAINT [FK_Cuestionarios_Renovacion]
GO
ALTER TABLE [dbo].[Envios]  WITH CHECK ADD  CONSTRAINT [FK_Envios_Notificaciones] FOREIGN KEY([Env_NotID])
REFERENCES [dbo].[Notificaciones] ([Not_ID])
GO
ALTER TABLE [dbo].[Envios] CHECK CONSTRAINT [FK_Envios_Notificaciones]
GO
ALTER TABLE [dbo].[Envios]  WITH CHECK ADD  CONSTRAINT [FK_Envios_Renovacion] FOREIGN KEY([Env_RenoID])
REFERENCES [dbo].[Renovacion] ([Ren_ID])
GO
ALTER TABLE [dbo].[Envios] CHECK CONSTRAINT [FK_Envios_Renovacion]
GO
ALTER TABLE [dbo].[Notificaciones]  WITH CHECK ADD  CONSTRAINT [FK_Notificaciones_Proyectos] FOREIGN KEY([Not_ProyID])
REFERENCES [dbo].[Proyectos] ([Proy_ID])
GO
ALTER TABLE [dbo].[Notificaciones] CHECK CONSTRAINT [FK_Notificaciones_Proyectos]
GO
ALTER TABLE [dbo].[PartesProy]  WITH CHECK ADD  CONSTRAINT [FK_PartesProy_Partes] FOREIGN KEY([PProy_ParteID])
REFERENCES [dbo].[Partes] ([Part_ID])
GO
ALTER TABLE [dbo].[PartesProy] CHECK CONSTRAINT [FK_PartesProy_Partes]
GO
ALTER TABLE [dbo].[PartesProy]  WITH CHECK ADD  CONSTRAINT [FK_PartesProy_Proyect] FOREIGN KEY([PProy_ProyID])
REFERENCES [dbo].[Proyectos] ([Proy_ID])
GO
ALTER TABLE [dbo].[PartesProy] CHECK CONSTRAINT [FK_PartesProy_Proyect]
GO
ALTER TABLE [dbo].[PartesRenova]  WITH CHECK ADD  CONSTRAINT [FK_ParteRenova_Renovacion] FOREIGN KEY([PRenova__RenID])
REFERENCES [dbo].[Renovacion] ([Ren_ID])
GO
ALTER TABLE [dbo].[PartesRenova] CHECK CONSTRAINT [FK_ParteRenova_Renovacion]
GO
ALTER TABLE [dbo].[PartesRenova]  WITH CHECK ADD  CONSTRAINT [FK_PartesRenova_Parte] FOREIGN KEY([PRenova__PartID])
REFERENCES [dbo].[PartesProy] ([PProy_ID])
GO
ALTER TABLE [dbo].[PartesRenova] CHECK CONSTRAINT [FK_PartesRenova_Parte]
GO
ALTER TABLE [dbo].[Renovacion]  WITH CHECK ADD  CONSTRAINT [FK_Renovacion_Laptops] FOREIGN KEY([Ren_MaquinaID])
REFERENCES [dbo].[Laptops] ([Lap_ID])
GO
ALTER TABLE [dbo].[Renovacion] CHECK CONSTRAINT [FK_Renovacion_Laptops]
GO
ALTER TABLE [dbo].[Renovacion]  WITH CHECK ADD  CONSTRAINT [FK_Renovacion_Oficina] FOREIGN KEY([Ren_Oficina])
REFERENCES [dbo].[Oficinas] ([Oficina_ID])
GO
ALTER TABLE [dbo].[Renovacion] CHECK CONSTRAINT [FK_Renovacion_Oficina]
GO
