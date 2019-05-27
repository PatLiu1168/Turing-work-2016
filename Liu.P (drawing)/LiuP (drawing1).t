%This program is by Patricia Liu
%Started September 8 2016
% version 1.0
%Assignement to Mr. Reid
%Watch out! The second time it turns on, the time changes :P

var name:string:= ""
var name2:string:= ""
var myPic : int := Pic.FileNew ("cat.jpg")
var font1:int:= Font.New ("HelveticaUltraLight:30")
var font2:int:= Font.New ("HelveticaUltraLight:7")
var font3:int:= Font.New ("HelveticaUltraLight:9")

put "ENTER YOUR NAME TO BEGIN :)"
get name
put "ENTER THE NAME OF ANOTHER PERSON YOU KNOW :D"
get name2
put "**********"
put "Thank you ",name,"!"
put "please wait ..."
delay(2000)
cls

    drawfillbox (238, 30, 412, 385, 29) %this is the ipod rim (it's gray :])
    drawfillbox (240, 32, 410, 383, 0)
    drawfillbox (235, 320, 238, 345, 29) %this is the louder sound button
    drawfillbox (235, 290, 238, 315, 29) %this is the quieter sound button
    drawfillbox (365, 385, 390, 387, 29) %on and off button
    drawfilloval (325, 360, 3, 3, 20) %this is the camera
    drawoval (325, 55, 17, 17, 27) %this is the home button
    drawbox (320, 50, 330, 60, 27)

    drawfillbox (250, 80, 400, 335, 20) %black screen
    delay (1000)
    drawfillbox (365, 385, 390, 387, 0) %press the on button
    drawline (365, 385, 390, 385, 29)
    delay (200)
    drawfillbox (365, 385, 390, 387, 29) 
    delay (20)
    
    Pic.Draw (myPic, 250, 80, picMerge)%on screen
    drawbox (382, 330, 394,334, black) %battery
    drawfill (387, 331, green, black)
    Draw.Text ("7:00",  290, 275, font1, 0)
    Draw.Text ("Iphone no connection :(", 251, 330, font2, 0)
    Draw.Text ("Friday, September 9", 270, 260, font3, 0)
    drawfillbox (255, 195, 395, 245, 54)
    Draw.Text ("ALARM",308, 230, font3, 0) %notification 1
    Draw.Text ("Wakey Wakey "+name+"!!!!" , 257, 222, font2, 0)
    Draw.Text ("It's time for school..." , 257, 213, font2, 0)
    Draw.Text ("(>'-')> GET UP", 257, 205, font2, 0)
    delay (1000)
    drawfillbox (255, 135, 395, 185, 54)
    delay (200)
    Draw.Text ("REMINDER", 287, 170, font3, 0) %notification 2
    Draw.Text ("You thought the program ended?", 257, 162, font2, 0)
    Draw.Text ("Haha nope! Just keep watching.", 257, 153, font2, 0)
    Draw.Text ("(O-O) *eyes wide open*", 257, 144, font2, 0)
    delay (10000)
    
    
    cls %to prevent overlapping, etc.
    
    drawfillbox (238, 30, 412, 385, 29) %recreate the ipod
    drawfillbox (240, 32, 410, 383, 0)
    drawfillbox (235, 320, 238, 345, 29) 
    drawfillbox (235, 290, 238, 315, 29) 
    drawfillbox (365, 385, 390, 387, 29) 
    drawfilloval (325, 360, 3, 3, 20) 
    drawoval (325, 55, 17, 17, 27) 
    drawbox (320, 50, 330, 60, 27)
    drawfillbox (250, 80, 400, 335, 20) 
    delay (1000)
    drawfillbox (365, 385, 390, 387, 0) %press on button again
    drawline (365, 385, 390, 385, 29)
    delay (200)
    drawfillbox (365, 385, 390, 387, 29) 
    delay (20)
    
    Pic.Draw (myPic, 250, 80, picMerge)%on screen again
    drawbox (382, 330, 394,334, black) %battery
    drawfill (387, 331, green, black)
    Draw.Text ("7:50",  290, 275, font1, 0)
    Draw.Text ("Iphone ROGERS NETWORK", 251, 330, font2, 0)
    Draw.Text ("Battery Charging",290, 260, font3, 0)
    drawfillbox (255, 183, 395, 245, 54)
    Draw.Text ("MESSENGER", 287, 230, font3, 0)
    Draw.Text ("From "+name2+" " , 257, 221, font2, 0)
    Draw.Text ("Where are heck you? You were ", 257, 212, font2, 0)
    Draw.Text ("supposed to arrive at ", 257, 203, font2, 0)
    Draw.Text ("school 5 minutes ago!! >:(", 257, 195, font2, 0) 
    Draw.Text ("OMFG R U STILL SLEEPING?" , 257, 186, font2, 0)
    delay (2000)
    
    Pic.Draw (myPic, 250, 80, picMerge)%on screen again
    drawbox (382, 330, 394,334, black) %battery
    drawfill (387, 331, green, black)
    Draw.Text ("7:51",  290, 275, font1, 0)
    Draw.Text ("Iphone ROGERS NETWORK", 251, 330, font2, 0)
    Draw.Text ("Battery Charging",290, 260, font3, 0)
    drawfillbox (255, 183, 395, 245, 54)
    Draw.Text ("MESSENGER", 287, 230, font3, 0)
    Draw.Text ("From "+name2+" " , 257, 221, font2, 0)
    Draw.Text ("Where are heck you? You were ", 257, 212, font2, 0)
    Draw.Text ("supposed to arrive at ", 257, 203, font2, 0)
    Draw.Text ("school 5 minutes ago!! >:(", 257, 195, font2, 0) 
    Draw.Text ("OMFG R U STILL SLEEPING?" , 257, 186, font2, 0)
    drawfillbox (255, 140, 395, 172, 54)
    Draw.Text ("CALL MISSED", 257, 160, font3, 0)
    Draw.Text (""+name2+" called 20 seconds ago.", 260, 145, font2,0)
    delay(2000)
    Pic.Draw (myPic, 250, 80, picMerge)%on screen again
    drawbox (382, 330, 394,334, black) %battery
    drawfill (387, 331, green, black)
    Draw.Text ("7:52",  290, 275, font1, 0)
    Draw.Text ("Iphone ROGERS NETWORK", 251, 330, font2, 0)
    Draw.Text ("Battery Charging",290, 260, font3, 0)
    drawfillbox (255, 183, 395, 245, 54)
    Draw.Text ("MESSENGER", 287, 230, font3, 0)
    Draw.Text ("From "+name2+" " , 257, 221, font2, 0)
    Draw.Text ("Where are heck you? You were ", 257, 212, font2, 0)
    Draw.Text ("supposed to arrive at ", 257, 203, font2, 0)
    Draw.Text ("school 5 minutes ago!! >:(", 257, 195, font2, 0) 
    Draw.Text ("OMFG R U STILL SLEEPING?" , 257, 186, font2, 0)
    drawfillbox (255, 140, 395, 172, 54)
    Draw.Text ("CALL MISSED", 257, 160, font3, 0)
    Draw.Text (""+name2+" called 1 minute ago.", 260, 145, font2,0)
    drawfillbox (255, 98, 395, 130, 54)
    Draw.Text ("CALL MISSED", 257, 118, font3, 0)
    Draw.Text (""+name2+" called 10 seconds ago.", 260, 103, font2, 0)
    delay (8000)
    
    cls %to prevent overlapping, etc.
    
    drawfillbox (238, 30, 412, 385, 29) %recreate the ipod again
    drawfillbox (240, 32, 410, 383, 0)
    drawfillbox (235, 320, 238, 345, 29) 
    drawfillbox (235, 290, 238, 315, 29) 
    drawfillbox (365, 385, 390, 387, 29) 
    drawfilloval (325, 360, 3, 3, 20) 
    drawoval (325, 55, 17, 17, 27) 
    drawbox (320, 50, 330, 60, 27)
    drawfillbox (250, 80, 400, 335, 20) 
    delay (1000)
    drawfillbox (365, 385, 390, 387, 0) %press on button again
    drawline (365, 385, 390, 385, 29)
    delay (200)
    drawfillbox (365, 385, 390, 387, 29) 
    delay (20)
    
    Pic.Draw (myPic, 250, 80, picMerge)%on screen again
    drawbox (382, 330, 394,334, black) %battery
    drawfill (387, 331, green, black)
    Draw.Text ("9:23",  290, 275, font1, 0)
    Draw.Text ("Iphone ROGERS NETWORK", 251, 330, font2, 0)
    Draw.Text ("Friday, September 9", 270, 260, font3, 0)
    delay (2000)
    drawfillbox (255, 180, 395, 245, 54)
    Draw.Text ("MESSENGER", 287, 230, font3, 0)
    Draw.Text ("From Patricia Liu " , 257, 221, font2, 0)
    Draw.Text ("Don't worry "+name+". You got", 257, 211, font2, 0)
    Draw.Text ("to school only an hour late. :) XD", 257, 202, font2, 0)
    Draw.Text ("Hmm The program is almost over.", 257, 194, font2, 0) 
    Draw.Text ("Time to go! Bye Bye "+name+"!!!" , 257, 185, font2, 0)
    delay (8000)
    
    drawfillbox (365, 385, 390, 387, 0) %press off button
    drawline (365, 385, 390, 385, 29)
    delay (200)
    drawfillbox (365, 385, 390, 387, 29)
    delay (200)
    cls %to prevent overlapping, etc.
    drawfillbox (238, 30, 412, 385, 29) %recreate the ipod for the fourth and last time
    drawfillbox (240, 32, 410, 383, 0)
    drawfillbox (235, 320, 238, 345, 29) 
    drawfillbox (235, 290, 238, 315, 29) 
    drawfillbox (365, 385, 390, 387, 29) 
    drawfilloval (325, 360, 3, 3, 20) 
    drawoval (325, 55, 17, 17, 27) 
    drawbox (320, 50, 330, 60, 27)
    drawfillbox (250, 80, 400, 335, 20) 
    
    
 
    



