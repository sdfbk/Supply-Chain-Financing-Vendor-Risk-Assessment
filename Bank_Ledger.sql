USE [SupplyChainRiskDB]
GO

/****** Object:  Table [dbo].[Bank]    Script Date: 12-05-2026 16:54:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Bank](
	[Transaction_ID] [nvarchar](50) NOT NULL,
	[Transaction_Narrative] [nvarchar](50) NOT NULL,
	[Amount_Paid] [float] NOT NULL,
	[Payment_Date] [date] NOT NULL,
	[PO_Key] [nvarchar](20) NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Bank]  WITH CHECK ADD  CONSTRAINT [FK_PO_KEY] FOREIGN KEY([PO_Key])
REFERENCES [dbo].[Procurement] ([PO_Number])
GO

ALTER TABLE [dbo].[Bank] CHECK CONSTRAINT [FK_PO_KEY]
GO


