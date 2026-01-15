"""
Nina Makeeva
21 août 2025
introduction au micro:bit

code démonstratif avec 10 programs
bouton a : incrémenter le program
bouton b : executer 

0 - écrit "Hi" et le prononce
1 - demande "Where are you ?"
2
3
4
5
6
7
8
9

"""

# Imports go at the top
from microbit import *
import speech
import music

# on commence avec le program 0
p= 0

while True: 
    # choix du program avrc bouton a 
    display.show(p)
    if button_a.was_pressed():
        p = p + 1 
        if p == 10 :
            p=0

    # le bouton b execute le program actuel (0...9)
    if button_b.is_pressed():
        if p==0 :
            speech.say('IAAAAAAaa')
            display.scroll('Hi !')
        if p==1 :
            display.scroll('Where are you ?')
        if p==2 :
            audio.play(Sound.GIGGLE)
        if p==3 :
            speech.say('KUAK')
            display.show(Image.DUCK)
            sleep(1000)
        if p ==4:
            music.play(music.CHASE)
        if p ==5 :
            display.show(Image.SAD)
            sleep(1000)
            speech.say('I am tired')
        if p ==6 :
            speech.say('I AM NOT A ROBOT . I AM NOT A ROBOT.')
        if p==7 :
        
           
        
    