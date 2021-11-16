  1: from __future__ import absolute_import
  2: from __future__ import division
  3: from __future__ import print_function
  4: 
  5: from datetime import datetime
  6: from packaging import version
  7: 
  8: import tensorflow as tf
  9: from tensorflow import keras
 10: import matplotlib.pyplot as plt
 11: plt.style.use('seaborn-whitegrid')
 12: import numpy as np
 13: 
 14: print("TensorFlow version: ", tf.__version__)
 15: assert version.parse(tf.__version__).release[0] >= 2,
 16:     "This notebook requires TensorFlow 2.0 or above."
 17: 
 18: #######################################################################34
 19: 
 20: data_size = 1000
 21: # 80% of the data is for training.
 22: train_pct = 0.8
 23: 
 24: train_size = int(data_size * train_pct)
 25: 
 26: # Create some input data between -1 and 1 and randomize it.
 27: x = np.linspace(-1, 1, data_size)
 28: np.random.shuffle(x)
 29: 
 30: # Generate the output data.
 31: # y = 0.5x + 2 + noise
 32: y = 0.5 * x + 2 + np.random.normal(0, 0.05, (data_size, ))
 33: 
 34: # Split into test and train pairs.
 35: x_train, y_train = x[:train_size], y[:train_size]
 36: x_test, y_test = x[train_size:], y[train_size:]
 37: 
 38: # print ( x_train )
 39: plt.plot(x_train, y_train, 'o', color='black')
 40: plt.show()
 41: 
 42: # input("Press Enter to continue...")
 43: # exit(0)
 44: 
 45: #######################################################################33
 46: 
 47: logdir = "logs/scalars/" + datetime.now().strftime("%Y%m%d-%H%M%S")
 48: tensorboard_callback = keras.callbacks.TensorBoard(log_dir=logdir)
 49: 
 50: model = keras.models.Sequential([
 51:     keras.layers.Dense(16, input_dim=1),
 52:     keras.layers.Dense(1),
 53: ])
 54: 
 55: model.compile(
 56:     loss='mse', # keras.losses.mean_squared_error
 57:     optimizer=keras.optimizers.SGD(lr=0.2),
 58: )
 59: 
 60: print("Training ... With default parameters, this takes less than 10 seconds.")
 61: training_history = model.fit(
 62:     x_train, # input
 63:     y_train, # output
 64:     batch_size=train_size,
 65:     verbose=0, # Suppress chatty output; use Tensorboard instead
 66:     epochs=100,
 67:     validation_data=(x_test, y_test),
 68:     callbacks=[tensorboard_callback],
 69: )
 70: 
 71: print("Average test loss: ", np.average(training_history.history['loss']))
 72: 
 73: ## Save our trained model
 74: model.save ( "./save/model.h5" )
