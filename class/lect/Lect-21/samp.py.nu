  1: #!/Users/philip/opt/anaconda3/bin/python
  2: 
  3: import numpy as np
  4: import pandas as pd
  5: import re
  6: import matplotlib.pyplot as plt
  7: 
  8: dataset_path = "./train-data.csv"
  9: 
 10: column_names = ['Ind', 'Name', 'Location', 'Year', 'Kilometers_Driven',
 11:     'Fuel_Type', 'Transmission', 'Owner_Type', 'Mileage', 'Engine',
 12:     'Power', 'Seats', 'New_Price', 'Price']
 13: raw_dataset = pd.read_csv(dataset_path, names=column_names,
 14:     na_values = "?", comment='\t', skiprows=1, sep=",",
 15:     skipinitialspace=True)
 16: 
 17: dataset = raw_dataset.copy()
 18: print ( dataset.head() )
 19: 
 20: dataset = dataset.drop(columns=['Ind', 'Name', 'Location', 'New_Price'])
 21: print ( dataset.head() )
 22: 
 23: # To see a good description of the dataset
 24: 
 25: print ( dataset.describe() )
 26: 
 27: # Cleaning the data
 28: # The dataset contains a few unknown values. Let’s find them and drop them.
 29: 
 30: dataset.isna().sum()
 31: dataset = dataset.dropna()
 32: dataset = dataset.reset_index(drop=True)
 33: 
 34: print ( dataset.head() )
 35: 
 36: 
 37: dataset['Mileage'] = pd.Series([re.sub('[^.0-9]', '', str(val)) for val in dataset['Mileage']], index = dataset.index)
 38: dataset['Engine'] = pd.Series([re.sub('[^.0-9]', '', str(val)) for val in dataset['Engine']], index = dataset.index)
 39: dataset['Power'] = pd.Series([re.sub('[^.0-9]', '', str(val)) for val in dataset['Power']], index = dataset.index)
 40: 
 41: # The prices are by default in INR Lakhs. So, we have to convert them to USD
 42: 
 43: dataset['Price'] = pd.Series([int(float(val)*1521.22) for val in dataset['Price']], index = dataset.index)
 44: 
 45: print ( dataset.head() )
 46: 
 47: dataset = dataset.replace(r'^\s*$', np.nan, regex=True)
 48: dataset.isna().sum()
 49: dataset = dataset.dropna()
 50: 
 51: dataset = dataset.reset_index(drop=True)
 52: print ( dataset.head() )
 53: 
 54: # Next, we’ll convert the strings in the below columns into float values. Remember that we can only work with numerical values.
 55: 
 56: dataset['Mileage'] = pd.Series([int(float(str(val))*2.3521458) for val in dataset['Mileage']], index = dataset.index)
 57: dataset['Engine'] = pd.Series([float(str(val)) for val in dataset['Engine']], index = dataset.index)
 58: dataset['Power'] = pd.Series([float(val) for val in dataset['Power']], index = dataset.index)
 59: dataset['Seats'] = pd.Series([float(val) for val in dataset['Seats']], index = dataset.index)
 60: dataset['Miles_Driven'] = pd.Series([(int(float(val)*0.621371)) for val in dataset['Kilometers_Driven']], index = dataset.index)
 61: dataset = dataset.drop(columns=['Kilometers_Driven'])
 62: 
 63: print ( dataset.head() )
 64: 
 65: dataset.to_csv(path_or_buf="new-car-data.csv")
 66: 
 67: #  Year  Kilometers_Driven Fuel_Type Transmission Owner_Type  Mileage  Engine   Power  Price
 68: # 1. Kilometers_Driven -> Miles_Driven
 69: # 2. Milage is in kmpl (Km Per Leter) -> convert to Mi per Gal
 70: 
 71: 
 72: ## One-Hot the Fule_Type
 73: 
 74: print(dataset['Fuel_Type'].unique())
 75: dataset['Fuel_Type'] = pd.Categorical(dataset['Fuel_Type'])
 76: dfFuel_Type = pd.get_dummies(dataset['Fuel_Type'], prefix = 'Fuel_Type')
 77: print ( dfFuel_Type.head() )
 78: 
 79: ## One-Hot the Transmission
 80: ## xyzzy - student section
 81: 
 82: print(dataset['Transmission'].unique())
 83: dataset['Transmission'] = pd.Categorical(dataset['Transmission'])
 84: dfTransmission = pd.get_dummies(dataset['Transmission'], prefix = 'Transmission')
 85: print ( dfTransmission.head() )
 86: 
 87: ## One-Hot the Owner
 88: ## xyzzy - student section
 89: 
 90: print(dataset['Owner_Type'].unique())
 91: dataset['Owner_Type'] = pd.Categorical(dataset['Owner_Type'])
 92: dfOwner_Type = pd.get_dummies(dataset['Owner_Type'], prefix = 'Owner_Type')
 93: print ( dfOwner_Type.head() )
 94: 
 95: ## Concat it all together
 96: 
 97: dataset = pd.concat([dataset, dfFuel_Type, dfTransmission, dfOwner_Type], axis=1)
 98: dataset = dataset.drop(columns=['Owner_Type', 'Transmission', 'Fuel_Type'])
 99: print ( dataset.head() )
100: 
101: 
102: dataset.to_csv(path_or_buf="new-car-data2.csv")
103: 
104: dataset.plot(kind='scatter',x='Price',y='Miles_Driven',color='red')
105: plt.show()
106: 
107: dataset.plot(kind='scatter',x='Price',y='Power',color='green')
108: plt.show()
109: 
110: dataset.plot(kind='scatter',x='Price',y='Year',color='blue')
111: plt.show()
112: 
113: dataset.plot(kind='scatter',x='Price',y='Mileage',color='red')
114: plt.show()
115: 
116: dataset.plot(kind='scatter',x='Price',y='Seats',color='green')
117: plt.show()
118: 
119: dataset.hist(column='Price')
120: plt.show()
