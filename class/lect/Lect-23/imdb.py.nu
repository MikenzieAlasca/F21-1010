  1: #!/Users/philip/opt/anaconda3/bin/python
  2: 
  3: # TensorFlow 2.7
  4: # From: https://www.tensorflow.org/tutorials/keras/text_classification
  5: 
  6: import matplotlib.pyplot as plt
  7: import os
  8: import re
  9: import shutil
 10: import string
 11: import tensorflow as tf
 12: 
 13: from tensorflow.keras import layers
 14: from tensorflow.keras import losses
 15: 
 16: print("TensorFlow Version: {}".format(tf.__version__))
 17: 
 18: url = "https://ai.stanford.edu/~amaas/data/sentiment/aclImdb_v1.tar.gz"
 19: 
 20: dataset = tf.keras.utils.get_file("aclImdb_v1", url,
 21:                                     untar=True, cache_dir='.',
 22:                                     cache_subdir='')
 23: 
 24: dataset_dir = os.path.join(os.path.dirname(dataset), 'aclImdb')
 25: 
 26: os.listdir(dataset_dir)
 27: 
 28: train_dir = os.path.join(dataset_dir, 'train')
 29: os.listdir(train_dir)
 30: 
 31: sample_file = os.path.join(train_dir, 'pos/1181_9.txt')
 32: print ( "PJS: input sample: {}".format(sample_file) )
 33: with open(sample_file) as f:
 34:     print(f.read())
 35: 
 36: remove_dir = os.path.join(train_dir, 'unsup')
 37: shutil.rmtree(remove_dir)
 38: 
 39: batch_size = 32
 40: seed = 42
 41: 
 42: raw_train_ds = tf.keras.utils.text_dataset_from_directory(
 43:     'aclImdb/train',
 44:     batch_size=batch_size,
 45:     validation_split=0.2,
 46:     subset='training',
 47:     seed=seed)
 48: 
 49: for text_batch, label_batch in raw_train_ds.take(1):
 50:     for i in range(3):
 51:         print("Review", text_batch.numpy()[i])
 52:         print("Label", label_batch.numpy()[i])
 53: 
 54: print("Label 0 corresponds to", raw_train_ds.class_names[0])
 55: print("Label 1 corresponds to", raw_train_ds.class_names[1])
 56: 
 57: raw_val_ds = tf.keras.utils.text_dataset_from_directory(
 58:     'aclImdb/train',
 59:     batch_size=batch_size,
 60:     validation_split=0.2,
 61:     subset='validation',
 62:     seed=seed)
 63: 
 64: raw_test_ds = tf.keras.utils.text_dataset_from_directory(
 65:     'aclImdb/test',
 66:     batch_size=batch_size)
 67: 
 68: 
 69: def custom_standardization(input_data):
 70:     lowercase = tf.strings.lower(input_data)
 71:     stripped_html = tf.strings.regex_replace(lowercase, '<br />', ' ')
 72:     return tf.strings.regex_replace(stripped_html, '[%s]' % re.escape(string.punctuation), '')
 73: 
 74: 
 75: max_features = 10000
 76: sequence_length = 250
 77: 
 78: vectorize_layer = layers.TextVectorization(
 79:     standardize=custom_standardization,
 80:     max_tokens=max_features,
 81:     output_mode='int',
 82:     output_sequence_length=sequence_length)
 83: 
 84: # Make a text-only dataset (without labels), then call adapt
 85: train_text = raw_train_ds.map(lambda x, y: x)
 86: vectorize_layer.adapt(train_text)
 87: 
 88: def vectorize_text(text, label):
 89:     text = tf.expand_dims(text, -1)
 90:     return vectorize_layer(text), label
 91: 
 92: # retrieve a batch (of 32 reviews and labels) from the dataset
 93: text_batch, label_batch = next(iter(raw_train_ds))
 94: first_review, first_label = text_batch[0], label_batch[0]
 95: print("Review", first_review)
 96: print("Label", raw_train_ds.class_names[first_label])
 97: print("Vectorized review", vectorize_text(first_review, first_label))
 98: 
 99: print("1287 ---> ",vectorize_layer.get_vocabulary()[1287])
100: print(" 313 ---> ",vectorize_layer.get_vocabulary()[313])
101: print('Vocabulary size: {}'.format(len(vectorize_layer.get_vocabulary())))
102: 
103: 
104: train_ds = raw_train_ds.map(vectorize_text)
105: val_ds = raw_val_ds.map(vectorize_text)
106: test_ds = raw_test_ds.map(vectorize_text)
107: 
108: AUTOTUNE = tf.data.AUTOTUNE
109: 
110: train_ds = train_ds.cache().prefetch(buffer_size=AUTOTUNE)
111: val_ds = val_ds.cache().prefetch(buffer_size=AUTOTUNE)
112: test_ds = test_ds.cache().prefetch(buffer_size=AUTOTUNE)
113: 
114: embedding_dim = 16
115: 
116: 
117: model = tf.keras.Sequential([
118:     layers.Embedding(max_features + 1, embedding_dim),
119:     layers.Dropout(0.2),
120:     layers.GlobalAveragePooling1D(),
121:     layers.Dropout(0.2),
122:     layers.Dense(1)])
123: 
124: model.summary()
125: 
126: 
127: model.compile(loss=losses.BinaryCrossentropy(from_logits=True),
128:               optimizer='adam',
129:               metrics=tf.metrics.BinaryAccuracy(threshold=0.0))
130: 
131: epochs = 10
132: history = model.fit(
133:     train_ds,
134:     validation_data=val_ds,
135:     epochs=epochs)
136: 
137: loss, accuracy = model.evaluate(test_ds)
138: 
139: print("Loss: ", loss)
140: print("Accuracy: ", accuracy)
141: 
142: history_dict = history.history
143: history_dict.keys()
144: 
145: acc = history_dict['binary_accuracy']
146: val_acc = history_dict['val_binary_accuracy']
147: loss = history_dict['loss']
148: val_loss = history_dict['val_loss']
149: 
150: epochs = range(1, len(acc) + 1)
151: 
152: # "bo" is for "blue dot"
153: plt.plot(epochs, loss, 'bo', label='Training loss')
154: # b is for "solid blue line"
155: plt.plot(epochs, val_loss, 'b', label='Validation loss')
156: plt.title('Training and validation loss')
157: plt.xlabel('Epochs')
158: plt.ylabel('Loss')
159: plt.legend()
160: 
161: plt.show()
162: 
163: 
164: plt.plot(epochs, acc, 'bo', label='Training acc')
165: plt.plot(epochs, val_acc, 'b', label='Validation acc')
166: plt.title('Training and validation accuracy')
167: plt.xlabel('Epochs')
168: plt.ylabel('Accuracy')
169: plt.legend(loc='lower right')
170: 
171: plt.show()
172: 
173: # --------------------------------------------------------------------------------------------------------
174: 
175: export_model = tf.keras.Sequential([
176:   vectorize_layer,
177:   model,
178:   layers.Activation('sigmoid')
179: ])
180: 
181: export_model.compile(
182:     loss=losses.BinaryCrossentropy(from_logits=False), optimizer="adam", metrics=['accuracy']
183: )
184: 
185: # Test it with `raw_test_ds`, which yields raw strings
186: loss, accuracy = export_model.evaluate(raw_test_ds)
187: print(accuracy)
188: 
189: examples = [
190:   "The movie was great!",
191:   "The movie was okay.",
192:   "The movie was terrible..."
193: ]
194: 
195: print ( export_model.predict(examples) )
