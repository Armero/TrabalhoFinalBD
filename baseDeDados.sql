USE [master]
GO
/****** Object:  Database [b27]    Script Date: 20/11/2016 15:36:19 ******/
CREATE DATABASE [b27]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'b27', FILENAME = N'E:\Programas\SQL_Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\b27.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'b27_log', FILENAME = N'E:\Programas\SQL_Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\b27_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [b27] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [b27].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [b27] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [b27] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [b27] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [b27] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [b27] SET ARITHABORT OFF 
GO
ALTER DATABASE [b27] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [b27] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [b27] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [b27] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [b27] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [b27] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [b27] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [b27] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [b27] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [b27] SET  DISABLE_BROKER 
GO
ALTER DATABASE [b27] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [b27] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [b27] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [b27] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [b27] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [b27] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [b27] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [b27] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [b27] SET  MULTI_USER 
GO
ALTER DATABASE [b27] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [b27] SET DB_CHAINING OFF 
GO
ALTER DATABASE [b27] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [b27] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [b27] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [b27] SET QUERY_STORE = OFF
GO
USE [b27]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [b27]
GO
/****** Object:  Table [dbo].[Bairro]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bairro](
	[Cd_Bairro] [int] NOT NULL,
	[Nm_Bairro] [char](60) NULL,
	[Cd_Municipio] [int] NULL,
 CONSTRAINT [XPKBairro] PRIMARY KEY CLUSTERED 
(
	[Cd_Bairro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Cd_Cliente] [int] NOT NULL,
	[Cd_Pessoa_Jurídica] [int] NULL,
	[Cd_Pessoa_Física] [int] NULL,
 CONSTRAINT [XPKCliente] PRIMARY KEY CLUSTERED 
(
	[Cd_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Duplicata]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Duplicata](
	[Cd_Duplicata] [int] NOT NULL,
	[Dt_Vencimento_Parcial] [date] NULL,
	[Vl_Parcial] [numeric](7, 2) NULL,
	[Cd_Nota_Fiscal] [int] NOT NULL,
	[Dt_Pagamento] [datetime] NULL,
 CONSTRAINT [XPKDuplicata] PRIMARY KEY CLUSTERED 
(
	[Cd_Duplicata] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Endereco]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Endereco](
	[Cd_Endereco] [int] NOT NULL,
	[Nu_Endereco] [int] NULL,
	[Cd_Bairro] [int] NOT NULL,
	[Nu_CEP] [numeric](8, 0) NULL,
	[Cd_Logradouro] [int] NULL,
	[Cd_Tipo_Complemento] [int] NOT NULL,
 CONSTRAINT [XPKEndereco] PRIMARY KEY CLUSTERED 
(
	[Cd_Endereco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Entrada]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Entrada](
	[Dt_Entrada] [datetime] NULL,
	[Cd_Transportador] [int] NULL,
	[Cd_Nota_Fiscal] [int] NOT NULL,
 CONSTRAINT [XPKEntrada] PRIMARY KEY CLUSTERED 
(
	[Cd_Nota_Fiscal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Estado]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[Cd_Estado] [int] NOT NULL,
	[Nm_Estado] [char](60) NULL,
	[Cd_País] [int] NULL,
 CONSTRAINT [XPKEstado] PRIMARY KEY CLUSTERED 
(
	[Cd_Estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Item_NF]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Item_NF](
	[Qt_Produto] [int] NULL,
	[Cd_Item_NF] [int] NOT NULL,
	[Cd_Produto] [int] NOT NULL,
	[Cd_Nota_Fiscal] [int] NOT NULL,
 CONSTRAINT [XPKItem_NF] PRIMARY KEY CLUSTERED 
(
	[Cd_Item_NF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Logradouro]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logradouro](
	[Cd_Logradouro] [int] NOT NULL,
	[Nm_Logradouro] [char](60) NULL,
	[Cd_Tipo_Logradouro] [int] NOT NULL,
 CONSTRAINT [XPKLogradouro] PRIMARY KEY CLUSTERED 
(
	[Cd_Logradouro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[Cd_Estado] [int] NULL,
	[Cd_Municipio] [int] NOT NULL,
	[Nm_Municipio] [char](60) NULL,
 CONSTRAINT [XPKMunicipio] PRIMARY KEY CLUSTERED 
(
	[Cd_Municipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Nota_Fiscal]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota_Fiscal](
	[Cd_Nota_Fiscal] [int] NOT NULL,
	[Dt_Emissão] [date] NULL,
	[Dt_Limite_Emissão] [date] NULL,
	[Ds_Dados_Adicionais] [char](60) NULL,
	[Nu_Controle_Formulario] [int] NULL,
	[Ds_Natureza_Operação] [char](60) NULL,
	[Nu_CFOP] [numeric](18, 0) NULL,
	[Cd_Cliente] [int] NOT NULL,
 CONSTRAINT [XPKNota_Fiscal] PRIMARY KEY CLUSTERED 
(
	[Cd_Nota_Fiscal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pagamento]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagamento](
	[Cd_Duplicata] [int] NOT NULL,
	[Cd_Pagamento] [int] NOT NULL,
	[Dt_Pagamento] [datetime] NULL,
	[Vl_Pagamento] [decimal](9, 2) NULL,
 CONSTRAINT [XPKPagamento] PRIMARY KEY CLUSTERED 
(
	[Cd_Pagamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[País]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[País](
	[Cd_País] [int] NOT NULL,
	[Nm_País] [char](60) NULL,
 CONSTRAINT [XPKPaís] PRIMARY KEY CLUSTERED 
(
	[Cd_País] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pessoa]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pessoa](
	[Cd_Pessoa] [int] NOT NULL,
	[Cd_Endereco] [int] NULL,
	[Cd_Telefone] [int] NULL,
 CONSTRAINT [XPKPessoa] PRIMARY KEY CLUSTERED 
(
	[Cd_Pessoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pessoa_Física]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pessoa_Física](
	[Nu_CPF] [numeric](18, 0) NULL,
	[Nm_Nome] [char](60) NULL,
	[Nm_Sobrenome] [char](60) NULL,
	[Cd_Pessoa_Física] [int] NOT NULL,
 CONSTRAINT [XPKPessoa_Física] PRIMARY KEY CLUSTERED 
(
	[Cd_Pessoa_Física] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pessoa_Jurídica]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pessoa_Jurídica](
	[Nu_CNPJ] [numeric](18, 0) NULL,
	[Nu_Inscrição_Estadual] [int] NULL,
	[Nm_Razão_Social] [char](60) NULL,
	[Nu_Inscricao_Estadual_Substituto_Tributário] [numeric](18, 0) NULL,
	[Nu_Loja] [int] NULL,
	[Nu_Estabelecimento] [int] NULL,
	[Cd_Pessoa_Jurídica] [int] NOT NULL,
 CONSTRAINT [XPKPessoa_Jurídica] PRIMARY KEY CLUSTERED 
(
	[Cd_Pessoa_Jurídica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Produto]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produto](
	[Cd_Produto] [int] NOT NULL,
	[Vl_Seguro] [numeric](9, 2) NULL,
	[Vl_Frete] [numeric](9, 2) NULL,
	[Nm_Produto] [char](60) NULL,
	[Vl_Peso_Bruto] [numeric](9, 3) NULL,
	[Vl_Peso_Liquido] [numeric](9, 3) NULL,
	[Qt_Estoque] [int] NULL,
	[Vl_Produto_Sem_Imposto] [decimal](9, 2) NULL,
	[Vl_ICMS] [char](18) NULL,
 CONSTRAINT [XPKProduto] PRIMARY KEY CLUSTERED 
(
	[Cd_Produto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Saída]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Saída](
	[Cd_Transportador] [int] NULL,
	[Dt_Saída] [datetime] NULL,
	[Cd_Nota_Fiscal] [int] NOT NULL,
 CONSTRAINT [XPKSaida] PRIMARY KEY CLUSTERED 
(
	[Cd_Nota_Fiscal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Telefone]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Telefone](
	[Cd_Tipo_Telefone] [int] NOT NULL,
	[Cd_Telefone] [int] NOT NULL,
	[Nu_Telefone] [numeric](11, 0) NULL,
 CONSTRAINT [XPKTelefone] PRIMARY KEY CLUSTERED 
(
	[Cd_Telefone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Complemento]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Complemento](
	[Cd_Tipo_Complemento] [int] NOT NULL,
	[Nm_Complemento] [char](60) NULL,
 CONSTRAINT [XPKTipo_Complemento] PRIMARY KEY CLUSTERED 
(
	[Cd_Tipo_Complemento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Logradouro]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Logradouro](
	[Cd_TIpo_Logradouro] [int] NOT NULL,
	[Nm_Tipo_Logradouro] [char](60) NULL,
 CONSTRAINT [XPKTipo_Logradouro] PRIMARY KEY CLUSTERED 
(
	[Cd_TIpo_Logradouro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Telefone]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Telefone](
	[Cd_Tipo_Telefone] [int] NOT NULL,
	[Nm_Tipo_Telefone] [char](60) NULL,
 CONSTRAINT [XPKTipo_Telefone] PRIMARY KEY CLUSTERED 
(
	[Cd_Tipo_Telefone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Transportador]    Script Date: 20/11/2016 15:36:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transportador](
	[Ic_Frete_Para_Conta] [binary](1) NULL,
	[Cd_Transportador] [int] NOT NULL,
	[Cd_Pessoa_Jurídica] [int] NOT NULL,
 CONSTRAINT [XPKTransportador] PRIMARY KEY CLUSTERED 
(
	[Cd_Transportador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Bairro]  WITH CHECK ADD  CONSTRAINT [Pertence6] FOREIGN KEY([Cd_Municipio])
REFERENCES [dbo].[Municipio] ([Cd_Municipio])
GO
ALTER TABLE [dbo].[Bairro] CHECK CONSTRAINT [Pertence6]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [É3] FOREIGN KEY([Cd_Pessoa_Jurídica])
REFERENCES [dbo].[Pessoa_Jurídica] ([Cd_Pessoa_Jurídica])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [É3]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [É4] FOREIGN KEY([Cd_Pessoa_Física])
REFERENCES [dbo].[Pessoa_Física] ([Cd_Pessoa_Física])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [É4]
GO
ALTER TABLE [dbo].[Duplicata]  WITH CHECK ADD  CONSTRAINT [Gera2] FOREIGN KEY([Cd_Nota_Fiscal])
REFERENCES [dbo].[Nota_Fiscal] ([Cd_Nota_Fiscal])
GO
ALTER TABLE [dbo].[Duplicata] CHECK CONSTRAINT [Gera2]
GO
ALTER TABLE [dbo].[Endereco]  WITH CHECK ADD  CONSTRAINT [Pertence5] FOREIGN KEY([Cd_Bairro])
REFERENCES [dbo].[Bairro] ([Cd_Bairro])
GO
ALTER TABLE [dbo].[Endereco] CHECK CONSTRAINT [Pertence5]
GO
ALTER TABLE [dbo].[Endereco]  WITH CHECK ADD  CONSTRAINT [Tem5] FOREIGN KEY([Cd_Logradouro])
REFERENCES [dbo].[Logradouro] ([Cd_Logradouro])
GO
ALTER TABLE [dbo].[Endereco] CHECK CONSTRAINT [Tem5]
GO
ALTER TABLE [dbo].[Endereco]  WITH CHECK ADD  CONSTRAINT [Tem7] FOREIGN KEY([Cd_Tipo_Complemento])
REFERENCES [dbo].[Tipo_Complemento] ([Cd_Tipo_Complemento])
GO
ALTER TABLE [dbo].[Endereco] CHECK CONSTRAINT [Tem7]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [Compra_de_produto] FOREIGN KEY([Cd_Nota_Fiscal])
REFERENCES [dbo].[Nota_Fiscal] ([Cd_Nota_Fiscal])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [Compra_de_produto]
GO
ALTER TABLE [dbo].[Entrada]  WITH CHECK ADD  CONSTRAINT [Transporta1] FOREIGN KEY([Cd_Transportador])
REFERENCES [dbo].[Transportador] ([Cd_Transportador])
GO
ALTER TABLE [dbo].[Entrada] CHECK CONSTRAINT [Transporta1]
GO
ALTER TABLE [dbo].[Estado]  WITH CHECK ADD  CONSTRAINT [Pertence1] FOREIGN KEY([Cd_País])
REFERENCES [dbo].[País] ([Cd_País])
GO
ALTER TABLE [dbo].[Estado] CHECK CONSTRAINT [Pertence1]
GO
ALTER TABLE [dbo].[Item_NF]  WITH CHECK ADD  CONSTRAINT [É_parte_de] FOREIGN KEY([Cd_Nota_Fiscal])
REFERENCES [dbo].[Nota_Fiscal] ([Cd_Nota_Fiscal])
GO
ALTER TABLE [dbo].[Item_NF] CHECK CONSTRAINT [É_parte_de]
GO
ALTER TABLE [dbo].[Item_NF]  WITH CHECK ADD  CONSTRAINT [Gera1] FOREIGN KEY([Cd_Produto])
REFERENCES [dbo].[Produto] ([Cd_Produto])
GO
ALTER TABLE [dbo].[Item_NF] CHECK CONSTRAINT [Gera1]
GO
ALTER TABLE [dbo].[Logradouro]  WITH CHECK ADD  CONSTRAINT [É_do_tipo] FOREIGN KEY([Cd_Tipo_Logradouro])
REFERENCES [dbo].[Tipo_Logradouro] ([Cd_TIpo_Logradouro])
GO
ALTER TABLE [dbo].[Logradouro] CHECK CONSTRAINT [É_do_tipo]
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD  CONSTRAINT [Pertence2] FOREIGN KEY([Cd_Estado])
REFERENCES [dbo].[Estado] ([Cd_Estado])
GO
ALTER TABLE [dbo].[Municipio] CHECK CONSTRAINT [Pertence2]
GO
ALTER TABLE [dbo].[Nota_Fiscal]  WITH CHECK ADD  CONSTRAINT [Possui] FOREIGN KEY([Cd_Cliente])
REFERENCES [dbo].[Cliente] ([Cd_Cliente])
GO
ALTER TABLE [dbo].[Nota_Fiscal] CHECK CONSTRAINT [Possui]
GO
ALTER TABLE [dbo].[Pagamento]  WITH CHECK ADD  CONSTRAINT [Pagamento_Realizado] FOREIGN KEY([Cd_Duplicata])
REFERENCES [dbo].[Duplicata] ([Cd_Duplicata])
GO
ALTER TABLE [dbo].[Pagamento] CHECK CONSTRAINT [Pagamento_Realizado]
GO
ALTER TABLE [dbo].[Pessoa]  WITH CHECK ADD  CONSTRAINT [Tem1] FOREIGN KEY([Cd_Telefone])
REFERENCES [dbo].[Telefone] ([Cd_Telefone])
GO
ALTER TABLE [dbo].[Pessoa] CHECK CONSTRAINT [Tem1]
GO
ALTER TABLE [dbo].[Pessoa]  WITH CHECK ADD  CONSTRAINT [Tem6] FOREIGN KEY([Cd_Endereco])
REFERENCES [dbo].[Endereco] ([Cd_Endereco])
GO
ALTER TABLE [dbo].[Pessoa] CHECK CONSTRAINT [Tem6]
GO
ALTER TABLE [dbo].[Pessoa_Física]  WITH CHECK ADD  CONSTRAINT [É2] FOREIGN KEY([Cd_Pessoa_Física])
REFERENCES [dbo].[Pessoa] ([Cd_Pessoa])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pessoa_Física] CHECK CONSTRAINT [É2]
GO
ALTER TABLE [dbo].[Pessoa_Jurídica]  WITH CHECK ADD  CONSTRAINT [É1] FOREIGN KEY([Cd_Pessoa_Jurídica])
REFERENCES [dbo].[Pessoa] ([Cd_Pessoa])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Pessoa_Jurídica] CHECK CONSTRAINT [É1]
GO
ALTER TABLE [dbo].[Saída]  WITH CHECK ADD  CONSTRAINT [Transporta2] FOREIGN KEY([Cd_Transportador])
REFERENCES [dbo].[Transportador] ([Cd_Transportador])
GO
ALTER TABLE [dbo].[Saída] CHECK CONSTRAINT [Transporta2]
GO
ALTER TABLE [dbo].[Saída]  WITH CHECK ADD  CONSTRAINT [Venda_de_Produto] FOREIGN KEY([Cd_Nota_Fiscal])
REFERENCES [dbo].[Nota_Fiscal] ([Cd_Nota_Fiscal])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Saída] CHECK CONSTRAINT [Venda_de_Produto]
GO
ALTER TABLE [dbo].[Telefone]  WITH CHECK ADD  CONSTRAINT [Tem8] FOREIGN KEY([Cd_Tipo_Telefone])
REFERENCES [dbo].[Tipo_Telefone] ([Cd_Tipo_Telefone])
GO
ALTER TABLE [dbo].[Telefone] CHECK CONSTRAINT [Tem8]
GO
ALTER TABLE [dbo].[Transportador]  WITH CHECK ADD  CONSTRAINT [É5] FOREIGN KEY([Cd_Pessoa_Jurídica])
REFERENCES [dbo].[Pessoa_Jurídica] ([Cd_Pessoa_Jurídica])
GO
ALTER TABLE [dbo].[Transportador] CHECK CONSTRAINT [É5]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [LIMITADOR_PRECOS] CHECK  (([Vl_Produto_Sem_Imposto]<(1000)))
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [LIMITADOR_PRECOS]
GO
USE [master]
GO
ALTER DATABASE [b27] SET  READ_WRITE 
GO
