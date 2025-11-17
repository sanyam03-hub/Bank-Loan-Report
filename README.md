# Bank Loan Analysis Project

## Overview
This project provides a comprehensive analysis of bank loan data, including loan applications, funded amounts, repayment metrics, and various demographic analyses. The project combines Python data analysis with SQL queries and Power BI visualizations to provide insights into loan portfolio performance.

## Project Structure

```
bank-loan/
├── Bank_Loan_Project.ipynb          # Jupyter notebook with full analysis
├── bank_loan_project.py             # Python script version of analysis
├── financial_loan.csv               # Loan data (CSV format)
├── financial_loan.xlsx              # Loan data (Excel format)
├── README.md                        # This file
│
├── SQL Queries/
│   ├── total loan application.sql   # Total applications count
│   ├── total funded amounts.sql     # Sum of funded loan amounts
│   ├── total payments.sql           # Total repayment amounts
│   ├── GOOD loan.sql                # Analysis of fully paid/current loans
│   ├── Bad loan.sql                 # Analysis of charged-off loans
│   ├── loan status.sql              # Loan status distribution
│   ├── INTEREST RATE.sql            # Interest rate analysis
│   └── DTI.sql                      # Debt-to-income ratio analysis
│
├── PowerBI Dashboards/
│   └── bank loan.pbix               # Interactive Power BI dashboard
│
├── Tests/
│   └── test_dataframe.py            # Unit tests for data validation
│
└── venv/                            # Python virtual environment
```

## Key Features & Metrics
## Dashboards

1. Summary Dashboard
This page gives a quick health check of the entire loan dataset.

KPIs
     - Total loan applications
     - Total funded amount
     - Total amount received
     - Average interest rate
     - Average debt-to-income (DTI) ratio
     - Month-to-Date (MTD) and Month-over-Month (MoM) changes
     - Good vs Bad loan segmentation

### Overall Metrics
- **Total Loan Applications**: Count of all loan applications
- **Total Funded Amount**: Sum of all loan amounts funded
- **Total Amount Received**: Total repayment amount from borrowers
- **Average Interest Rate**: Mean interest rate across loans
- **Average Debt-to-Income (DTI) Ratio**: Average DTI for borrowers

### Good Loan Analysis (Status: Fully Paid or Current)
- Percentage of good loan applications
- Funded amount for good loans
- Total received amount from good loans
- Default rate and risk assessment

### Bad Loan Analysis (Status: Charged Off)
- Percentage of defaulted loans
- Loss amount from bad loans
- Default patterns and risk factors

## Overview Dashboard
This page focuses on trends and demographic dimensions.

Charts

- Monthly Trends (Line Chart): applications, funded amount, amount received
- State Map: geographic lending activity
- Loan Term (Donut Chart): 36-month vs 60-month
- Employment Length (Bar Chart)
- Loan Purpose (Bar Chart)
- Home Ownership (Tree Map)

These visuals help show where loans come from, what types dominate, and how different borrower traits affect funding.

## Details Dashboard
A complete record-level view with filters.
Shows:

- Borrower profile
- Loan amounts
- Repayments
- DTI, interest rate
- Loan status
- Term

Useful for drill-downs and audits.

### Dimensional Analysis
- **Monthly Trends**: Funded amounts, received amounts, and application counts by month
- **Regional Analysis**: Loan distribution by state
- **Loan Terms**: Distribution across 36-month and 60-month terms
- **Employment Length**: Funding analysis by employee tenure
- **Loan Purpose**: Distribution by purpose (debt consolidation, credit improvement, etc.)
- **Home Ownership**: Funded amounts by ownership type

## Data Files

### CSV/Excel Data
- **financial_loan.csv**: Raw loan data in CSV format
- **financial_loan.xlsx**: Raw loan data in Excel format

### Database Queries
All SQL files are designed to extract key metrics from the loan database:
- Performance metrics (applications, funding, repayments)
- Good vs. bad loan comparison
- Interest rate and DTI analysis

## Technologies Used

### Data Analysis
- **Python 3.x**
- **Pandas**: Data manipulation and analysis
- **NumPy**: Numerical computations
- **Matplotlib**: Static data visualizations
- **Seaborn**: Advanced visualization
- **Plotly**: Interactive visualizations

### Database
- SQL queries for data extraction and analysis
- Microsoft SQL Server (implied by SQL file structure)

### Business Intelligence
- **Power BI**: Interactive dashboards and reporting

### Development Tools
- **Jupyter Notebook**: Interactive analysis environment
- **Python Virtual Environment**: Isolated project dependencies

## Getting Started

### Prerequisites
- Python 3.x
- Jupyter Notebook
- Required Python packages: pandas, numpy, matplotlib, seaborn, plotly
- SQL Server (for database queries)
- Power BI Desktop (for dashboard viewing)

### Installation

1. Clone or download the project
2. Create and activate virtual environment:
   ```bash
   python -m venv venv
   .\venv\Scripts\activate
   ```

3. Install dependencies:
   ```bash
   pip install pandas numpy matplotlib seaborn plotly jupyter openpyxl
   ```

4. Launch Jupyter Notebook:
   ```bash
   jupyter notebook
   ```

## Usage

### Running Analysis

#### Option 1: Jupyter Notebook
Open `Bank_Loan_Project.ipynb` in Jupyter Notebook to run interactive analysis with visualizations.

#### Option 2: Python Script
Run the analysis script directly:
```bash
python bank_loan_project.py
```

#### Option 3: Power BI
Open `PowerBI Dashboards/bank loan.pbix` to view interactive dashboards and reports.

### Running SQL Queries
Execute SQL files in your SQL Server environment to extract loan metrics and perform custom analysis.

## Analysis Outputs

The project generates:
- **Console Output**: Key metrics and statistics
- **Visualizations**: 
  - Monthly trend charts (area/line plots)
  - Regional distribution (horizontal bar charts)
  - Loan term pie charts
  - Employment length analysis
  - Loan purpose distribution
  - Home ownership treemaps
- **Interactive Dashboards**: Power BI reports with filters and drill-down capabilities

## Key Insights (Example)
- Identifies trends in loan funding and repayment over time
- Compares performance across different states
- Analyzes loan term preferences and their impact
- Examines correlation between employment stability and loan performance
- Evaluates different loan purposes and their default rates

## Testing

Unit tests are provided in `test_dataframe.py` to validate:
- Data integrity and consistency
- Correct calculation of metrics
- Data type validation

Run tests with:
```bash
python -m pytest test_dataframe.py
```

## Project Notes

- Data is sourced from financial loan records
- Analysis includes both year-to-date (YTD) and month-to-date (MTD) metrics
- Currency: INR (₹) for most Indian loan data, with some USD ($) references
- Loan status categories: Fully Paid, Current, Charged Off
- All visualizations use appropriate scales and formatting

## Future Enhancements

- Implement predictive models for default probability
- Add more granular temporal analysis (weekly, daily trends)
- Expand demographic analysis (age, credit score)
- Implement automated alerting for risk metrics
- Create mobile-friendly dashboards

## Contact & Support

For questions about this analysis, please review the Jupyter notebook for detailed comments and methodology.

---

**Last Updated**: November 2025
**Project Type**: Financial Data Analysis
**Status**: Active
