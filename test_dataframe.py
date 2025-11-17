import pandas as pd
import numpy as np

# Create a sample DataFrame to test
data = {
    'loan_id': [1001, 1002, 1003, 1004, 1005],
    'amount': [10000, 15000, 20000, 25000, 30000],
    'interest_rate': [3.5, 4.2, 3.8, 4.0, 4.5],
    'term_months': [36, 48, 60, 36, 48],
    'status': ['approved', 'rejected', 'approved', 'pending', 'approved']
}

df = pd.DataFrame(data)

# Display first 5 rows
print(df.head())

# If you want to see more rows, specify the number
print("\nFirst 3 rows:")
print(df.head(3))