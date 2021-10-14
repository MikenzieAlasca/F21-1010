  1: 
  2: # -----------------------------------------------------------
  3: # current_data
  4: import sys
  5: 
  6: name_to_col = {
  7:         "battery-sensor": 1,
  8:         "solar-avail": 2,
  9:         "heater": 4,
 10:         "ac": 5,
 11:         }
 12: 
 13: time = 0
 14: input_width = 4
 15: 
 16: def init_devices ():
 17:     print ( "called init devices" )
 18: 
 19: def time_advance ():
 20:     time = time + 1
 21:     print ( "called time advance" )
 22: 
 23: def get_data(name):
 24:     ## use name_to_col to map the nane into the column of input data.
 25:     if name in name_to_col:
 26:         col = name_to_col[name]
 27:     else:
 28:         print ( "fatal error -invalid sensor name {}".format(name) )
 29:         sys.exit(1)
 30:     return 0
 31: 
 32: def device_on(name):
 33:     if name in name_to_col:
 34:         col = name_to_col[name]
 35:     else:
 36:         print ( "fatal error -invalid sensor name {}".format(name) )
 37:         sys.exit(1)
 38:     if col >= input_width:
 39:         print ("is a device" )
 40: 
