














# Lecture 22 - TensorFlow Hello World

## TensorFlow

Hello World of Tensor Flow: from: [https://www.tensorflow.org/tutorials/quickstart/beginner](https://www.tensorflow.org/tutorials/quickstart/beginner)

There are also 2 YouTube videos to watch: [https://www.tensorflow.org/tutorials](https://www.tensorflow.org/tutorials)

```
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

```

## What is `__future__`

This changes the behavior of Python to have additional capabilities.

```
(x_train, y_train), (x_test, y_test) = mnist.load_data()
x_train, x_test = x_train / 255.0, x_test / 255.0
```

## What the data looks like

![minst-data.png](minst-data.png)

Or run the program that generates this.

```
  1: # example of loading and plotting the mnist dataset
  2: from tensorflow.keras.datasets.mnist import load_data
  3: from matplotlib import pyplot
  4: # load dataset
  5: (trainX, trainy), (testX, testy) = load_data()
  6: # summarize loaded dataset
  7: print('Train: X=%s, y=%s' % (trainX.shape, trainy.shape))
  8: print('Test: X=%s, y=%s' % (testX.shape, testy.shape))
  9: # plot first few images
 10: for i in range(25):
 11:     # define subplot
 12:     pyplot.subplot(5, 5, i+1)
 13:     # plot raw pixel data
 14:     pyplot.imshow(trainX[i], cmap=pyplot.get_cmap('gray'))
 15: # show the figure
 16: pyplot.show()

```
