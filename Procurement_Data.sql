USE [SupplyChainRiskDB]
GO

/****** Object:  Table [dbo].[Procurement]    Script Date: 12-05-2026 16:52:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Procurement](
	[PO_Number] [nvarchar](20) NOT NULL,
	[Vendor_Name] [nvarchar](50) NOT NULL,
	[Order_Date] [date] NOT NULL,
	[Committed_Spend] [float] NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PO_Number] PRIMARY KEY CLUSTERED 
(
	[PO_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Procurement]  WITH CHECK ADD  CONSTRAINT [FK_Vendor_Name] FOREIGN KEY([Vendor_Name])
REFERENCES [dbo].[Vendor] ([Entity_Name])
GO

ALTER TABLE [dbo].[Procurement] CHECK CONSTRAINT [FK_Vendor_Name]
GO


