USE [SupplyChainRiskDB];

-- Dimension table
SELECT 
    p.PO_Number,
    p.Category,
    p.Order_Date,
    p.Committed_Spend,
    v.Entity_Name AS Vendor_Name,
    v.Country,
    v.Credit_Score,
    v.Financial_Rating
INTO dbo.Dim_Procurement
FROM dbo.Procurement p
LEFT JOIN dbo.Vendor v ON p.Vendor_Name = v.Entity_Name;

-- Add Primary Key
ALTER TABLE dbo.Dim_Procurement 
ADD CONSTRAINT PK_Dim_Procurement PRIMARY KEY (PO_Number);



-- Fact table
SELECT 
    Transaction_ID,
    Transaction_Narrative,
    Amount_Paid,
    Payment_Date,
    PO_Key AS PO_Number -- Renaming to match our Dim PK
INTO dbo.Fact_Payments
FROM dbo.Bank;

-- Add Primary Key
ALTER TABLE dbo.Fact_Payments 
ADD CONSTRAINT PK_Fact_Payments PRIMARY KEY (Transaction_ID);


-- Joing this 2 tables
ALTER TABLE dbo.Fact_Payments
ADD CONSTRAINT FK_Fact_Procurement
FOREIGN KEY (PO_Number) REFERENCES dbo.Dim_Procurement(PO_Number);


