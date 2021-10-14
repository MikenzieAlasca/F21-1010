import current_data

# -----------------------------------------------------------
# -----------------------------------------------------------
class SensorParent:
    def __init__(self,name):
        self.name = name
        self.value = 0

    def get_value(self):
        self.value = current_data.get_data(self.name)
        return self.value


# -----------------------------------------------------------
class BatteryTempSensor(SensorParent):
    def __init__(self,name):
        super().__init__('battery-sensor')
    def too_hi():
        x = self.get_value()
        if x >= 130:
            return True    
        return False
    def too_low():
        x = self.get_value()
        if x <= 0:
            return True    
        return False

# -----------------------------------------------------------
class SolarSensor(SensorParent):
    def __init__(self,name):
        super().__init__('solar-avail')
    def is_avail(self):
        if self.get_value() == 1:
            return True
        return False

# -----------------------------------------------------------
# -----------------------------------------------------------
class SystemDevice:
    def __init__(self,name):
        self.name = name

    def turn_on():
        current_data.device_on(self.name)

    def turn_off():
        current_data.device_off(self.name)

# -----------------------------------------------------------
class AcDev(SystemDevice):
    def __init__(self,name):
        super().__init__('ac-device')

# -----------------------------------------------------------
class HeatDev(SystemDevice):
    def __init__(self,name):
        super().__init__('heat-device')

# -----------------------------------------------------------
# 
# Bat-Temp | Solar Avail | Heat |  AC | 
# --------  ------------   ----- -----
#  low     |   True      |  On  |  0  | 
#  hi      |   True      |  0   |  On | 
#   OK     |   True      |  0   |  0  | 
#  low     |    False    |  0   |  0  |  
#  hi      |    False    |  0   |  0  |  
#   OK     |    False    |  0   |  0  | 
# 

def main():
    current_data.init_sysetm()

    # Inputs
    bat_temp = BatteryTempSensor()
    solar_avail = SolarSensor()

    # Outputs
    ac_dev = ACDev()
    heat_dev = HeatDev()

    while True:
        current_data.advance_time()

        if not solar_avail.is_avail() :
            heat_dev.turn_off()
            ac_dev.turn_off()
        elif bat_temp.too_low() and solar_avail.is_avail():
            heat_dev.turn_on()
            ac_dev.turn_off()
        elif bat_temp.too_hi() and solar_avail.is_avail() :
            heat_dev.turn_off()
            ac_dev.turn_on()
        else:
            heat_dev.turn_off()
            ac_dev.turn_off()

