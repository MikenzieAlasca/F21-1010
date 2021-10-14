
m4_include(../../../setup.m4)

# Lecture 16 - More on Objects - An example

## Student / Person Example

```
m4_include(student_ex.py.nu)
```

## More Concrete Example

One of the abilities of classes is that we can set them up as a hierarchy.
This is called "inheritance".

Let's talk about a system with some batteries.

LiFePo4 - Lithium Iron Phosphors has some specific characteristics.

Most people are familiar with Led/Acid batteris - these are theones that start gas and diesel cars.

LiFePo4 - are what you find in some electric cars.

Limits on Charging:  From 0C to 48C.  that is 32F to 131F.   If you charge the battery below freezing you destroy it.
If you charge it aboee 131F it will break the case and destroy it.

Our charging system is off of solar so when the sun is up - if the battery is too hot or too cold
the we are just 100% wasting the solar power.  Let's use the power to change the temprature of the
battery.

Our System....

1. 6 Batteries 
2. Heating Pad
4. Air Conditioner - 2300 BTUs per hour of cooling
6. Battery Temperature Sensor
7. Solar Sensor (Can we charge)
8. Computer to read sensors, control heating pad, charging, AC.


```
m4_include(all.py.nu)
```

