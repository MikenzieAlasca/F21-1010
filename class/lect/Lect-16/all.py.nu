  1: import current_data
  2: 
  3: # -----------------------------------------------------------
  4: # -----------------------------------------------------------
  5: class SensorParent:
  6:     def __init__(self,name):
  7:         self.name = name
  8:         self.value = 0
  9: 
 10:     def get_value(self):
 11:         self.value = current_data.get_data(self.name)
 12:         return self.value
 13: 
 14: 
 15: # -----------------------------------------------------------
 16: class BatteryTempSensor(SensorParent):
 17:     def __init__(self,name):
 18:         super().__init__('battery-sensor')
 19:     def too_hi():
 20:         x = self.get_value()
 21:         if x >= 130:
 22:             return True    
 23:         return False
 24:     def too_low():
 25:         x = self.get_value()
 26:         if x <= 0:
 27:             return True    
 28:         return False
 29: 
 30: # -----------------------------------------------------------
 31: class SolarSensor(SensorParent):
 32:     def __init__(self,name):
 33:         super().__init__('solar-avail')
 34:     def is_avail(self):
 35:         if self.get_value() == 1:
 36:             return True
 37:         return False
 38: 
 39: # -----------------------------------------------------------
 40: # -----------------------------------------------------------
 41: class SystemDevice:
 42:     def __init__(self,name):
 43:         self.name = name
 44: 
 45:     def turn_on():
 46:         current_data.device_on(self.name)
 47: 
 48:     def turn_off():
 49:         current_data.device_off(self.name)
 50: 
 51: # -----------------------------------------------------------
 52: class AcDev(SystemDevice):
 53:     def __init__(self,name):
 54:         super().__init__('ac-device')
 55: 
 56: # -----------------------------------------------------------
 57: class HeatDev(SystemDevice):
 58:     def __init__(self,name):
 59:         super().__init__('heat-device')
 60: 
 61: # -----------------------------------------------------------
 62: # 
 63: # Bat-Temp | Solar Avail | Heat |  AC | 
 64: # --------  ------------   ----- -----
 65: #  low     |   True      |  On  |  0  | 
 66: #  hi      |   True      |  0   |  On | 
 67: #   OK     |   True      |  0   |  0  | 
 68: #  low     |    False    |  0   |  0  |  
 69: #  hi      |    False    |  0   |  0  |  
 70: #   OK     |    False    |  0   |  0  | 
 71: # 
 72: 
 73: def main():
 74:     current_data.init_sysetm()
 75: 
 76:     # Inputs
 77:     bat_temp = BatteryTempSensor()
 78:     solar_avail = SolarSensor()
 79: 
 80:     # Outputs
 81:     ac_dev = ACDev()
 82:     heat_dev = HeatDev()
 83: 
 84:     while True:
 85:         current_data.advance_time()
 86: 
 87:         if not solar_avail.is_avail() :
 88:             heat_dev.turn_off()
 89:             ac_dev.turn_off()
 90:         elif bat_temp.too_low() and solar_avail.is_avail():
 91:             heat_dev.turn_on()
 92:             ac_dev.turn_off()
 93:         elif bat_temp.too_hi() and solar_avail.is_avail() :
 94:             heat_dev.turn_off()
 95:             ac_dev.turn_on()
 96:         else:
 97:             heat_dev.turn_off()
 98:             ac_dev.turn_off()
 99: 
