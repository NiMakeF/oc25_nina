"""
Nina Makeeva
21 août 2025
introduction au micro:bit

code démonstratif avec 10 programs
bouton a : incrémenter le program
bouton b : executer 

0 - écrit "Hi" et prononce "Yeaaah"
1 - demande "Where are you ?"
2 - joue le son "gigle"
3 - montre un cannard et fait "Kuak"
4 - joue la musique "CHASE"
5 - montre un emoji triste et dit "I an tired"
6 - dit " I am not a robot, I am not a robot"
7 - dit "lizzard" et montre "HEHEHE"
8 - si bruits ambiant fort montre un grand coeur, si bruit faible montre petit coeur
9 - joue never gonna give you up

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
            speech.say('YEAAAAH')
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
            speech.say('I AM, NOT, A, ROBOT . I AM, NOT, A, ROBOT.')
        if p == 7 : 
            speech.say('LIIZARD')
            display.scroll('HEHEHE')
        if p == 8:
            if microphone.current_event() == SoundEvent.LOUD:
                display.show(Image.HEART)
                sleep(200)
            if microphone.current_event() == SoundEvent.QUIET:
                display.show(Image.HEART_SMALL)
        if p == 9 :
            music.play(['c:2', 'd:2', 'e:2', 'c:2', 'a:4', 'a:4', 'g:8','c:2', 'd:2', 'e:2', 'c:2', 'g:4', 'g:4', 'f:8', 'c:2', 'd:2', 'e:2', 'c:2', 'f:4', 'g:4', 'E:4', 'c:4','g:4', 'f:4'])
            