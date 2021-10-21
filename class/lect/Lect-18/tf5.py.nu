  1: 
  2: import tensorflow as tf
  3: 
  4: v3 = tf.constant(3)
  5: v5 = tf.constant(5)
  6: b = tf.math.add(v3,v5)
  7: print_output = tf.print(b)
  8: 
  9: v2 = tf.constant(2)
 10: c = tf.math.multiply ( print_output, v2 )
 11: 
 12: print(c)
