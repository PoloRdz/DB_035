USE [ENCUESTA]
GO
/****** Object:  Table [dbo].[encuesta]    Script Date: 3/7/2020 9:24:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[encuesta](
	[id_encuesta] [int] IDENTITY(1,1) NOT NULL,
	[id_pregunta] [int] NULL,
	[id_respuesta] [int] NULL,
	[id_empleado] [int] NULL,
 CONSTRAINT [PK_encuesta] PRIMARY KEY CLUSTERED 
(
	[id_encuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[seccion]    Script Date: 3/7/2020 9:24:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seccion](
	[id_seccion] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar] (250) NOT NULL,
	[identificador] [varchar] (20) NOT NULL,
 CONSTRAINT [PK_seccion] PRIMARY KEY CLUSTERED 
(
	[id_seccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[preguntas]    Script Date: 3/7/2020 9:24:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[preguntas](
	[id_pregunta] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](250) NOT NULL,
	[identificador] [varchar] (20) NOT NULL,
	[id_seccion] [int],
 CONSTRAINT [PK_preguntas] PRIMARY KEY CLUSTERED 
(
	[id_pregunta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [preguntas]
ADD CONSTRAINT [FK_seccion] FOREIGN KEY ([id_seccion])
REFERENCES [dbo].[seccion]([id_seccion])
GO
/****** Object:  Table [dbo].[respuestas]    Script Date: 3/7/2020 9:24:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[respuestas](
	[id_respuesta] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[identificador] [varchar] (20) NOT NULL,
	[valor] [int] NULL,
 CONSTRAINT [PK_respuestas] PRIMARY KEY CLUSTERED 
(
	[id_respuesta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[encuesta] ON 
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (1, 1, 2, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (2, 2, 1, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (3, 3, 2, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (4, 4, 1, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (5, 5, 2, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (6, 6, 1, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (7, 7, 2, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (8, 8, 2, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (9, 9, 2, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (10, 10, 1, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (11, 11, 2, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (12, 12, 2, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (13, 13, 1, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (14, 14, 2, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (15, 15, 2, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (16, 16, 2, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (17, 17, 1, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (18, 18, 2, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (19, 19, 2, 1)
GO
INSERT [dbo].[encuesta] ([id_encuesta], [id_pregunta], [id_respuesta], [id_empleado]) VALUES (20, 20, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[encuesta] OFF
GO
SET IDENTITY_INSERT [dbo].[preguntas] ON 
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (1, N'¿Accidente que tenga como consecuencia la muerte, la pérdida de un miembro o una lesión grave?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (2, N'¿Asaltos?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (3, N'¿Actos violentos que derivaron en lesiones graves?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (4, N'¿Secuestro?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (5, N'¿Amenazas?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (6, N'¿Cualquier otro que ponga en riesgo su vida o salud, y/o la de otras personas?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (7, N'¿Ha tenido recuerdos recurrentes sobre el acontecimiento que le provocan malestares?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (8, N'¿Ha tenido sueños de carácter recurrente sobre el acontecimiento, que le producen malestar?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (9, N'¿Se ha esforzado por evitar todo tipo de sentimientos, conversaciones o situaciones que le puedan recordar el acontecimiento?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (10, N'¿Se ha esforzado por evitar todo tipo de actividades, lugares o personas que motivan recuerdos del acontecimiento? ', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (11, N'¿Ha tenido dificultad para recordar alguna parte importante del evento?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (12, N'¿Ha disminuido su interés en sus actividades cotidianas?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (13, N'¿Se ha sentido usted alejado o distante de los demás?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (14, N'¿Ha notado que tiene dificultad para expresar sus sentimientos?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (15, N'¿Ha tenido la impresión de que su vida se va a acortar, que va a morir antes que otras personas o que tiene un futuro limitado?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (16, N'¿Ha tenido usted dificultades para dormir?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (17, N'¿Ha estado particularmente irritable o le han dado arranques de coraje?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (18, N'¿Ha tenido dificultad para concentrarse?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (19, N'¿Ha estado nervioso o constantemente en alerta?', '')
GO
INSERT [dbo].[preguntas] ([id_pregunta], [descripcion], [identificador]) VALUES (20, N'¿Se ha sobresaltado fácilmente por cualquier cosa?', '')
GO
SET IDENTITY_INSERT [dbo].[preguntas] OFF
GO
SET IDENTITY_INSERT [dbo].[respuestas] ON 
GO
INSERT [dbo].[respuestas] ([id_respuesta], [descripcion], [identificador]) VALUES (1, N'Si', '')
GO
INSERT [dbo].[respuestas] ([id_respuesta], [descripcion], [identificador]) VALUES (2, N'No', '')
GO
INSERT [dbo].[respuestas] ([id_respuesta], [descripcion], [identificador]) VALUES (3, N'Siempre', '')
GO
INSERT [dbo].[respuestas] ([id_respuesta], [descripcion], [identificador]) VALUES (4, N'Casi Siempre', '')
GO
INSERT [dbo].[respuestas] ([id_respuesta], [descripcion], [identificador]) VALUES (5, N'Algunas Veces', '')
GO
INSERT [dbo].[respuestas] ([id_respuesta], [descripcion], [identificador]) VALUES (6, N'Casi Nunca', '')
GO
INSERT [dbo].[respuestas] ([id_respuesta], [descripcion], [identificador]) VALUES (7, N'Nunca', '')
GO
SET IDENTITY_INSERT [dbo].[respuestas] OFF
GO
/****** Object:  StoredProcedure [dbo].[IN_PREGUNTAS]    Script Date: 3/7/2020 9:24:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[IN_PREGUNTAS]
	-- Add the parameters for the stored procedure here
	@PREGUNTA AS VARCHAR(250)
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO PREGUNTAS (descripcion) VALUES (@PREGUNTA)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_ID_PREGUNTA]    Script Date: 3/7/2020 9:24:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CONSULTAR_ID_PREGUNTA]
	-- Add the parameters for the stored procedure here
	@DESCRIPCION_PREGUNTA AS VARCHAR(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id_pregunta FROM preguntas WHERE descripcion = @DESCRIPCION_PREGUNTA
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CONSULTAR_ID_RESPUESTA]    Script Date: 3/7/2020 9:24:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_CONSULTAR_ID_RESPUESTA]
	-- Add the parameters for the stored procedure here
	@DESCRIPCION_RESPUESTA AS VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id_respuesta FROM respuestas WHERE descripcion = @DESCRIPCION_RESPUESTA
END
GO
/****** Object:  StoredProcedure [dbo].[SP_REGISTRAR_ENCUESTA]    Script Date: 3/7/2020 9:24:27 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_REGISTRAR_ENCUESTA] 
	-- Add the parameters for the stored procedure here
	@ID_PREGUNTA AS INT,
	@ID_RESPUESTA AS INT,
	@ID_EMPLEADO AS INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO dbo.encuesta (id_pregunta, id_respuesta, id_empleado) VALUES (@ID_PREGUNTA, @ID_RESPUESTA, @ID_EMPLEADO) 
END
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_REQUIERE_ATENCION_CLINICA] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT id_empleado, COUNT(E.id_respuesta) AS respuestas_si
	FROM encuesta E
		INNER JOIN preguntas P
			ON E.id_pregunta = P.id_pregunta
	WHERE E.id_respuesta = 1 AND P.id_seccion = 2
	GROUP BY id_empleado
END
GO
