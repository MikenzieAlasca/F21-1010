
# -----------------------------------------------------------
# current_data
import sys

name_to_col = {
        "battery-sensor": 1,
        "solar-avail": 2,
        "heater": 4,
        "ac": 5,
        }

time = 0
input_width = 4

def init_devices ():
    print ( "called init devices" )

def time_advance ():
    time = time + 1
    print ( "called time advance" )

def get_data(name):
    ## use name_to_col to map the nane into the column of input data.
    if name in name_to_col:
        col = name_to_col[name]
    else:
        print ( "fatal error -invalid sensor name {}".format(name) )
        sys.exit(1)
    return 0

def device_on(name):
    if name in name_to_col:
        col = name_to_col[name]
    else:
        print ( "fatal error -invalid sensor name {}".format(name) )
        sys.exit(1)
    if col >= input_width:
        print ("is a device" )

