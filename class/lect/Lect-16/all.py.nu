  1: import current_data
  2: 
  3: # ===========================================================
  4: class SensorParent:
  5:     def __init__(self,name):
  6:         self.name = name
  7:         self.value = 0
  8: 
  9:     def get_value(self):
 10:         self.value = current_data.get_data(self.name)
 11:         return self.value
 12: 
 13: 
 14: # -----------------------------------------------------------
 15: class BatteryTempSensor(SensorParent):
 16:     def __init__(self,name):
 17:         super().__init__('battery-sensor')
 18:     def too_hi():
 19:         x = self.get_value()
 20:         if x >= 130:
 21:             return True    
 22:         return False
 23:     def too_low():
 24:         x = self.get_value()
 25:         if x <= 0:
 26:             return True    
 27:         return False
 28: 
 29: # -----------------------------------------------------------
 30: class SolarSensor(SensorParent):
 31:     def __init__(self,name):
 32:         super().__init__('solar-avail')
 33:     def is_avail(self):
 34:         if self.get_value() == 1:
 35:             return True
 36:         return False
 37: 
 38: # ===========================================================
 39: class SystemDevice:
 40:     def __init__(self,name):
 41:         self.name = name
 42: 
 43:     def turn_on():
 44:         current_data.device_on(self.name)
 45: 
 46:     def turn_off():
 47:         current_data.device_off(self.name)
 48: 
 49: # -----------------------------------------------------------
 50: class AcDev(SystemDevice):
 51:     def __init__(self,name):
 52:         super().__init__('ac-device')
 53: 
 54: # -----------------------------------------------------------
 55: class HeatDev(SystemDevice):
 56:     def __init__(self,name):
 57:         super().__init__('heat-device')
 58: 
 59: # -----------------------------------------------------------
 60: # Bat-Temp | Solar Avail | Heat |  AC | 
 61: # --------  ------------   ----- -----
 62: #  low     |   True      |  On  |  0  | 
 63: #  hi      |   True      |  0   |  On | 
 64: #   OK     |   True      |  0   |  0  | 
 65: #  low     |    False    |  0   |  0  |  
 66: #  hi      |    False    |  0   |  0  |  
 67: #   OK     |    False    |  0   |  0  | 
 68: def main():
 69:     current_data.init_sysetm()
 70: 
 71:     # Inputs
 72:     bat_temp = BatteryTempSensor()
 73:     solar_avail = SolarSensor()
 74: 
 75:     # Outputs
 76:     ac_dev = ACDev()
 77:     heat_dev = HeatDev()
 78: 
 79:     while True:
 80:         current_data.advance_time()
 81: 
 82:         if not solar_avail.is_avail() :
 83:             heat_dev.turn_off()
 84:             ac_dev.turn_off()
 85:         elif bat_temp.too_low() and solar_avail.is_avail():
 86:             heat_dev.turn_on()
 87:             ac_dev.turn_off()
 88:         elif bat_temp.too_hi() and solar_avail.is_avail() :
 89:             heat_dev.turn_off()
 90:             ac_dev.turn_on()
 91:         else:
 92:             heat_dev.turn_off()
 93:             ac_dev.turn_off()
