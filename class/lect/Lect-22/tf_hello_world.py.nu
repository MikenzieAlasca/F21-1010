  1: # Download and install the TensorFlow 2 package. Import TensorFlow into your program:
  2: 
  3: from __future__ import absolute_import, division, print_function, unicode_literals
  4: 
  5: # Install TensorFlow
  6: 
  7: import tensorflow as tf
  8: 
  9: # Load and prepare the MNIST dataset. Convert the samples from integers to floating-point numbers:
 10: 
 11: mnist = tf.keras.datasets.mnist
 12: 
 13: (x_train, y_train), (x_test, y_test) = mnist.load_data()
 14: x_train, x_test = x_train / 255.0, x_test / 255.0
 15: 
 16: # Build the tf.keras.Sequential model by stacking layers. Choose an optimizer and loss function for training:
 17: 
 18: model = tf.keras.models.Sequential([
 19:   tf.keras.layers.Flatten(input_shape=(28, 28)),
 20:   tf.keras.layers.Dense(128, activation='relu'),
 21:   tf.keras.layers.Dropout(0.2),
 22:   tf.keras.layers.Dense(10, activation='softmax')
 23: ])
 24: 
 25: model.compile(optimizer='adam',
 26:               loss='sparse_categorical_crossentropy',
 27:               metrics=['accuracy'])
 28: 
 29: # Train and evaluate the model:
 30: 
 31: model.fit(x_train, y_train, epochs=5)
 32: 
 33: model.evaluate(x_test,  y_test, verbose=2)
