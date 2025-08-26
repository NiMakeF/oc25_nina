# Imports go at the top
from microbit import *
import neopixel


while True: 
    if button_a.get_presses():
        np = neopixel.NeoPixel(pin8, 60)
        np[10] = (10, 0, 0)
        np[11] = (0, 10, 0)
        np[12] = (0, 0, 10)
        np.show()
    if button_b.get_presses():
         np = neopixel.NeoPixel(pin8, 60)
        for i in range .....