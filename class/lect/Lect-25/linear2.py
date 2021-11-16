import tensorflow as tf
import numpy as np
from tensorflow import keras
model = tf.keras.Sequential([keras.layers.Dense(units=1, input_shape=[1])])
model.compile(optimizer='sgd', loss='mean_squared_error')

# y = 4x - 6
xs = np.array([ -1.0,  0.0,  1.0,  2.0,  3.0,  4.0,  5.0,  6.0,  7.0], dtype=float)
ys = np.array([-10.0, -6.0, -2.0,  2.0,  6.0, 10.0, 14.0, 18.0, 22.0], dtype=float)

model.fit(xs, ys, epochs=500)

print("expect output of approximately 34.0")
print(model.predict([10]))
