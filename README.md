# Dashboard Link Please Check:
https://app.powerbi.com/view?r=eyJrIjoiMmUxMWQxMDgtNWU2Zi00ZTMwLTlhMGUtMGM3YmJmOWZjYmVjIiwidCI6IjUzM2E1NTQxLTNmNjctNGY2MS1iMDk1LTA5NjhiNDA2MGJlOSJ9

# Supply-Chain-Financing-Vendor-Risk-Assessment
An end-to-end data analytics project identifying supplier vulnerabilities and financial liabilities using Python, SQL, and Power BI.

## The Challenge
The organization lacked visibility into vendor financial health and regional sourcing risks, leading to potential supply chain disruptions and unpredictable cash flow.

## My Solution
I built an end-to-end data pipeline that transforms raw procurement and banking logs into a strategic risk-management tool.

### Data Engineering: 
Integrated multiple sources using Python in Google Colab. I automated the cleaning of over $5M in transaction data, ensuring 100% data accuracy for date and currency fields.

### Database Architecture: 
Designed and implemented a SQL Star Schema. I created a centralized Dim_Procurement table to manage vendor attributes and a Fact_Payments table to track every dollar spent.

<img width="982" height="365" alt="image" src="https://github.com/user-attachments/assets/5bf22a17-4bcc-46a5-b01d-df5f95d680f1" />


### Advanced Analytics: Developed a Power BI dashboard featuring:

1) KPI Cards: Real-time tracking of Total Spend, Amount Paid, and Outstanding Liabilities.

2) Risk Matrix: A dynamic scatter plot that automatically highlights "At-Risk" vendors using DAX-driven conditional formatting.

3) Geographic Insights: Interactive mapping to identify over-reliance on specific regions.

<img width="1347" height="722" alt="image" src="https://github.com/user-attachments/assets/f54ba5e4-1262-44de-8925-012e03537926" />
   

## The Impact
Identified $56K in outstanding debt that was previously untracked.

Visualized a critical risk with a major supplier (Vendor_9), leading to the initiation of a secondary sourcing strategy.

Automated monthly reporting, reducing the time spent on manual data reconciliation by 80%.
