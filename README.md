# Bank Loan Analysis

Hi! This is a project where I analyzed a dataset of bank loans to understand lending patterns and portfolio health. The goal was to figure out how many loans are "good" (being paid back) vs "bad" (defaulted) and visualizing it all.

## What's in here?

I used a mix of **Python**, **SQL**, and **Power BI** to dig into the data.

*   **Python Analysis**: I used Pandas to clean the data and calculate key metrics like Total Funded Amount and Average Interest Rates. You can find the main analysis in `Bank_Loan_Project.ipynb`.
*   **SQL Queries**: I wrote several queries (in the `SQL Queries` folder) to extract specific numbers directly from the database, like checking loan status or calculating debt-to-income ratios.
*   **Dashboards**: There's a Power BI file (`bank loan.pbix`) included that visualizes everything—from geographic maps of where loans are going to trends over time.

## How to run it

1.  **Get the data**: The data is in `financial_loan.csv` (or `.xlsx`).
2.  **Install dependencies**:
    ```bash
    pip install pandas numpy matplotlib seaborn plotly jupyter openpyxl
    ```
3.  **Run the notebook**:
    Open `Bank_Loan_Project.ipynb` in Jupyter/VS Code and run the cells to see the analysis step-by-step.
    *Or just run the script version:* `python bank_loan_project.py`

## Quick Insights

*   Most loans are actually "Good" (Fully Paid or Current).
*   I looked at things like **Employment Length** and **Purpose** (e.g., debt consolidation) to see if they impact repayment.
*   You can see month-over-month trends in the visuals.

Feel free to poke around the code!
