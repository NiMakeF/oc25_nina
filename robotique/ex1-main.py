# Imports go at the top
from microbit import *
import speech
import music

while True:
    if pin_logo.is_touched():
        display.scroll('WELCOME')
        sleep(1000)
        display.show(Image.DUCK)
    if button_a.is_pressed():
        speech.say('Hello, world. How are you?')
         
        
        music.play(['b4:4', 'f4:4', 'g4:8'])
        
        