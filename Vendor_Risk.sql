USE [SupplyChainRiskDB]
GO

/****** Object:  Table [dbo].[Vendor]    Script Date: 12-05-2026 16:53:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Vendor](
	[Entity_Name] [nvarchar](50) NOT NULL,
	[Country] [nvarchar](50) NOT NULL,
	[Credit_Score] [smallint] NOT NULL,
	[Financial_Rating] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Entity_Name] PRIMARY KEY CLUSTERED 
(
	[Entity_Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


