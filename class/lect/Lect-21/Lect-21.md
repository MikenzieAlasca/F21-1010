














# Lecture 21 - More on Data Cleanup 

Let's take a close look at the code for data cleanup.

1. Input
2. Discarding nonexistent data. - The first cleanup step.
3. Fixing Columns of data.

0. Generating on-hot-encoding
0. Some Graphs
0. Saving data - Output

Your lab...
Add in some sections - add some graphs.

## Part 1 - read data.

```
  1: 
  2: # Step 1 - Just do the input and verify the file works.
  3: 
  4: import numpy as np
  5: import pandas as pd
  6: import re
  7: import matplotlib.pyplot as plt
  8: 
  9: dataset_path = "./train-data.csv"
 10: 
 11: # Specify the columns
 12: 
 13: column_names = ['Ind', 'Name', 'Location', 'Year', 'Kilometers_Driven',
 14:     'Fuel_Type', 'Transmission', 'Owner_Type', 'Mileage', 'Engine',
 15:     'Power', 'Seats', 'New_Price', 'Price']
 16: 
 17: # Read the data.
 18: 
 19: raw_dataset = pd.read_csv(dataset_path, names=column_names,
 20:     na_values = "?", comment='\t', skiprows=1, sep=",",
 21:     skipinitialspace=True)
 22: 
 23: # Print some conformation (the 1st "test")
 24: 
 25: dataset = raw_dataset.copy()
 26: print ( dataset.head() )

```

## Part 2 - First cleanup.

Get rid of columns you don't need at all.  Get rid of missing data.

```
  1: 
  2: # From Before...
  3: 
  4: import numpy as np
  5: import pandas as pd
  6: import re
  7: import matplotlib.pyplot as plt
  8: 
  9: dataset_path = "./train-data.csv"
 10: 
 11: column_names = ['Ind', 'Name', 'Location', 'Year', 'Kilometers_Driven',
 12:     'Fuel_Type', 'Transmission', 'Owner_Type', 'Mileage', 'Engine',
 13:     'Power', 'Seats', 'New_Price', 'Price']
 14: raw_dataset = pd.read_csv(dataset_path, names=column_names,
 15:     na_values = "?", comment='\t', skiprows=1, sep=",",
 16:     skipinitialspace=True)
 17: 
 18: dataset = raw_dataset.copy()
 19: print ( dataset.head() )
 20: 
 21: ############################## ##############################
 22: # New Code...
 23: ############################## ##############################
 24: 
 25: # Get rid of columns.
 26: 
 27: dataset = dataset.drop(columns=['Ind', 'Name', 'Location', 'New_Price'])
 28: print ( dataset.head() )
 29: 
 30: # To see a good description of the dataset
 31: 
 32: print ( dataset.describe() )
 33: 
 34: # Cleaning the data
 35: # The dataset contains a few unknown values. Let’s find them and drop them.
 36: 
 37: dataset.isna().sum()
 38: dataset = dataset.dropna()
 39: dataset = dataset.reset_index(drop=True)
 40: 
 41: print ( dataset.head() )

```

## Part 3 - Second cleanup.

Get rid of Text in numeric fields.

```
  1: 
  2: import numpy as np
  3: import pandas as pd
  4: import re
  5: import matplotlib.pyplot as plt
  6: 
  7: dataset_path = "./train-data.csv"
  8: 
  9: column_names = ['Ind', 'Name', 'Location', 'Year', 'Kilometers_Driven',
 10:     'Fuel_Type', 'Transmission', 'Owner_Type', 'Mileage', 'Engine',
 11:     'Power', 'Seats', 'New_Price', 'Price']
 12: raw_dataset = pd.read_csv(dataset_path, names=column_names,
 13:     na_values = "?", comment='\t', skiprows=1, sep=",",
 14:     skipinitialspace=True)
 15: 
 16: dataset = raw_dataset.copy()
 17: print ( dataset.head() )
 18: 
 19: dataset = dataset.drop(columns=['Ind', 'Name', 'Location', 'New_Price'])
 20: print ( dataset.head() )
 21: 
 22: print ( dataset.describe() )
 23: 
 24: dataset.isna().sum()
 25: dataset = dataset.dropna()
 26: dataset = dataset.reset_index(drop=True)
 27: 
 28: print ( dataset.head() )
 29: 
 30: ################################## ##################################
 31: # Text in Fields
 32: ################################## ##################################
 33: 
 34: dataset['Mileage'] = pd.Series([re.sub('[^.0-9]', '', str(val))
 35:     for val in dataset['Mileage']], index = dataset.index)
 36: dataset['Engine'] = pd.Series([re.sub('[^.0-9]', '', str(val))
 37:     for val in dataset['Engine']], index = dataset.index)
 38: dataset['Power'] = pd.Series([re.sub('[^.0-9]', '', str(val))
 39:     for val in dataset['Power']], index = dataset.index)
 40: 
 41: print ( dataset.head() )

```

## Part 3 - Third cleanup.

Convert numbers, get rid of more missing data.


```
  1: 
  2: import numpy as np
  3: import pandas as pd
  4: import re
  5: import matplotlib.pyplot as plt
  6: 
  7: dataset_path = "./train-data.csv"
  8: 
  9: column_names = ['Ind', 'Name', 'Location', 'Year', 'Kilometers_Driven',
 10:     'Fuel_Type', 'Transmission', 'Owner_Type', 'Mileage', 'Engine',
 11:     'Power', 'Seats', 'New_Price', 'Price']
 12: raw_dataset = pd.read_csv(dataset_path, names=column_names,
 13:     na_values = "?", comment='\t', skiprows=1, sep=",",
 14:     skipinitialspace=True)
 15: 
 16: dataset = raw_dataset.copy()
 17: print ( dataset.head() )
 18: 
 19: dataset = dataset.drop(columns=['Ind', 'Name', 'Location', 'New_Price'])
 20: print ( dataset.head() )
 21: 
 22: print ( dataset.describe() )
 23: 
 24: dataset.isna().sum()
 25: dataset = dataset.dropna()
 26: dataset = dataset.reset_index(drop=True)
 27: 
 28: print ( dataset.head() )
 29: 
 30: 
 31: dataset['Mileage'] = pd.Series([re.sub('[^.0-9]', '', str(val))
 32:     for val in dataset['Mileage']], index = dataset.index)
 33: dataset['Engine'] = pd.Series([re.sub('[^.0-9]', '', str(val))
 34:     for val in dataset['Engine']], index = dataset.index)
 35: dataset['Power'] = pd.Series([re.sub('[^.0-9]', '', str(val))
 36:     for val in dataset['Power']], index = dataset.index)
 37: 
 38: 
 39: ################################## ##################################
 40: # Numbers and missing data.
 41: ################################## ##################################
 42: 
 43: # The prices are by default in INR Lakhs. So, we have to convert them to USD
 44: 
 45: dataset['Price'] = pd.Series([int(float(val)*1521.22)
 46:     for val in dataset['Price']], index = dataset.index)
 47: 
 48: print ( dataset.head() )
 49: 
 50: dataset = dataset.replace(r'^\s*$', np.nan, regex=True)
 51: dataset.isna().sum()
 52: dataset = dataset.dropna()
 53: 
 54: dataset = dataset.reset_index(drop=True)
 55: print ( dataset.head() )
 56: 

```






## Your Code to start with for the lab.

```
  1: import numpy as np
  2: import pandas as pd
  3: import re
  4: import matplotlib.pyplot as plt
  5: 
  6: dataset_path = "./train-data.csv"
  7: 
  8: column_names = ['Ind', 'Name', 'Location', 'Year', 'Kilometers_Driven',
  9:     'Fuel_Type', 'Transmission', 'Owner_Type', 'Mileage', 'Engine',
 10:     'Power', 'Seats', 'New_Price', 'Price']
 11: raw_dataset = pd.read_csv(dataset_path, names=column_names,
 12:     na_values = "?", comment='\t', skiprows=1, sep=",",
 13:     skipinitialspace=True)
 14: 
 15: dataset = raw_dataset.copy()
 16: print ( dataset.head() )
 17: 
 18: dataset = dataset.drop(columns=['Ind', 'Name', 'Location', 'New_Price'])
 19: print ( dataset.head() )
 20: 
 21: # To see a good description of the dataset
 22: 
 23: print ( dataset.describe() )
 24: 
 25: # Cleaning the data
 26: # The dataset contains a few unknown values. Let’s find them and drop them.
 27: 
 28: dataset.isna().sum()
 29: dataset = dataset.dropna()
 30: dataset = dataset.reset_index(drop=True)
 31: 
 32: print ( dataset.head() )
 33: 
 34: 
 35: dataset['Mileage'] = pd.Series([re.sub('[^.0-9]', '', str(val)) for val in dataset['Mileage']], index = dataset.index)
 36: dataset['Engine'] = pd.Series([re.sub('[^.0-9]', '', str(val)) for val in dataset['Engine']], index = dataset.index)
 37: dataset['Power'] = pd.Series([re.sub('[^.0-9]', '', str(val)) for val in dataset['Power']], index = dataset.index)
 38: 
 39: # The prices are by default in INR Lakhs. So, we have to convert them to USD
 40: 
 41: dataset['Price'] = pd.Series([int(float(val)*1521.22) for val in dataset['Price']], index = dataset.index)
 42: 
 43: print ( dataset.head() )
 44: 
 45: dataset = dataset.replace(r'^\s*$', np.nan, regex=True)
 46: dataset.isna().sum()
 47: dataset = dataset.dropna()
 48: 
 49: dataset = dataset.reset_index(drop=True)
 50: print ( dataset.head() )
 51: 
 52: # Next, we’ll convert the strings in the below columns into float values. Remember that we can only work with numerical values.
 53: 
 54: #  Year  Kilometers_Driven Fuel_Type Transmission Owner_Type  Mileage  Engine   Power  Price
 55: # 1. Kilometers_Driven -> Miles_Driven
 56: # 2. Milage is in kmpl (Km Per Leter) -> convert to Mi per Gal
 57: 
 58: dataset['Mileage'] = pd.Series([int(float(str(val))*2.3521458) for val in dataset['Mileage']], index = dataset.index)
 59: dataset['Engine'] = pd.Series([float(str(val)) for val in dataset['Engine']], index = dataset.index)
 60: #### dataset['Power'] = pd.Series([float(val) for val in dataset['Power']], index = dataset.index)
 61: #### dataset['Seats'] = pd.Series([float(val) for val in dataset['Seats']], index = dataset.index)
 62: #### dataset['Miles_Driven'] = pd.Series([(int(float(val)*0.621371)) for val in dataset['Kilometers_Driven']], index = dataset.index)
 63: dataset = dataset.drop(columns=['Kilometers_Driven'])
 64: 
 65: print ( dataset.head() )
 66: 
 67: dataset.to_csv(path_or_buf="new-car-data.csv")
 68: 
 69: 
 70: ## One-Hot the Fule_Type
 71: 
 72: print(dataset['Fuel_Type'].unique())
 73: dataset['Fuel_Type'] = pd.Categorical(dataset['Fuel_Type'])
 74: dfFuel_Type = pd.get_dummies(dataset['Fuel_Type'], prefix = 'Fuel_Type')
 75: print ( dfFuel_Type.head() )
 76: 
 77: ## One-Hot the Transmission
 78: ## xyzzy - student section
 79: 
 80: #### print(dataset['Transmission'].unique())
 81: #### dataset['Transmission'] = pd.Categorical(dataset['Transmission'])
 82: #### dfTransmission = pd.get_dummies(dataset['Transmission'], prefix = 'Transmission')
 83: #### print ( dfTransmission.head() )
 84: 
 85: ## One-Hot the Owner
 86: #### xyzzy - student section
 87: 
 88: #### print(dataset['Owner_Type'].unique())
 89: #### dataset['Owner_Type'] = pd.Categorical(dataset['Owner_Type'])
 90: ####f dfOwner_Type = pd.get_dummies(dataset['Owner_Type'], prefix = 'Owner_Type')
 91: #### print ( dfOwner_Type.head() )
 92: 
 93: ## Concat it all together
 94: 
 95: #### dataset = pd.concat([dataset, dfFuel_Type, dfTransmission, dfOwner_Type], axis=1)
 96: dataset = pd.concat([dataset, dfFuel_Type], axis=1)
 97: dataset = dataset.drop(columns=['Owner_Type', 'Transmission', 'Fuel_Type'])
 98: print ( dataset.head() )
 99: 
100: 
101: dataset.to_csv(path_or_buf="new-car-data2.csv")
102: 
103: #### dataset.plot(kind='scatter',x='Price',y='Miles_Driven',color='red')
104: #### plt.show()
105: 
106: #### dataset.plot(kind='scatter',x='Price',y='Power',color='green')
107: #### plt.show()
108: 
109: dataset.plot(kind='scatter',x='Price',y='Year',color='blue')
110: plt.show()
111: 
112: #### dataset.plot(kind='scatter',x='Price',y='Mileage',color='red')
113: #### plt.show()
114: 
115: #### dataset.plot(kind='scatter',x='Price',y='Seats',color='green')
116: #### plt.show()
117: 
118: #### dataset.hist(column='Price')
119: #### plt.show()

```


