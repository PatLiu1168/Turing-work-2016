%This program belogns to Patricia Liu.
%Started October 3 2016
%Please don't hate. I tried.
%Also play the program several times. The first few time there may be some timing problems related to the computer.
%Basically, if the program glitches a bit, restart it plz.
%THANK YOU

var font1 : int := Font.New ("times:15")
var font2 : int := Font.New ("times:25")
var font3 : int := Font.New ("times:10")
var x, y, b : int := 0
var pika : int := 600
var pika2 : int := 400


drawfillbox (225, 175, 400, 250, 64)
Draw.Text ("START", 260, 200, font2, white)
buttonwait ("down", x, y, b, b)
if x > 225 and x < 400 and y < 250 and y > 175 then
    delay (500)
    cls
end if


Pic.ScreenLoad ("Pictures/Raichu1.bmp", 600, 0, picMerge) %moving
delay (190)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu1.bmp", 575, 0, picMerge)
delay (180)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu1.bmp", 550, 0, picMerge)
delay (170)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu2.bmp", 525, 0, picMerge)
delay (160)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu2.bmp", 500, 0, picMerge)
delay (150)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu2.bmp", 475, 0, picMerge)
delay (100)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu3.bmp", 450, 0, picMerge)
delay (100)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu3.bmp", 425, 0, picMerge)
delay (100)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu3.bmp", 400, 0, picMerge)
delay (100)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu4.bmp", 375, 0, picMerge)
delay (90)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu4.bmp", 350, 0, picMerge)
delay (90)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu4.bmp", 325, 0, picMerge)
delay (90)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu4.bmp", 300, 0, picMerge)
delay (90)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu4.bmp", 275, 0, picMerge)
delay (90)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu4.bmp", 250, 0, picMerge)
delay (90)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu4.bmp", 225, 0, picMerge)
delay (90)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu5.bmp", 200, 0, picMerge)
delay (80)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu5.bmp", 175, 0, picMerge)
delay (80)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu5.bmp", 150, 0, picMerge)
delay (80)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu5.bmp", 125, 0, picMerge)
delay (80)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu5.bmp", 100, 0, picMerge)
delay (80)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu5.bmp", 75, 0, picMerge)
delay (80)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu5.bmp", 50, 0, picMerge)
delay (70)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu5.bmp", 25, 0, picMerge)
delay (70)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu5.bmp", 0, 0, picMerge)
delay (70)
drawfillbox (0, 0, 650, 120, white)
Pic.ScreenLoad ("Pictures/Raichu5.bmp", -2, 0, picMerge)
Draw.Text ("BOOM", 0, 125, font1, black)
delay (75)
drawfillbox (0, 125, 100, 150, white)

for i : 6 .. 47 %falling down
    delay (25)
    Pic.ScreenLoad ("Pictures/Raichu" + intstr (i) + ".bmp", 0, 0, picCopy)
end for


%two choices
drawfillbox (100, 175, 300, 250, 64)  
Draw.Text ("EXIT", 165, 200, font2, white)

drawfillbox (350, 175, 525, 250, 64) %pikachu comes to help
Draw.Text ("CALL HELP", 350, 200, font2, white)

buttonwait ("down", x, y, b, b)
if x > 100 and x < 300 and y < 250 and y > 175 then%exit
    delay (250)
    cls
end if

if x > 350 and x < 525 and y < 250 and y > 175 then%pikachu comes to help
    delay (250)
    drawfillbox (100, 175, 300, 250, 0)

    drawfillbox (350, 175, 525, 250, 0)

    loop
	delay (75)
	drawfillbox (650, 0, 400, 100, white)
	Pic.ScreenLoad ("Pictures/P3.bmp", pika, 0, picMerge)
	pika -= 10
	exit when pika = 400
    end loop
    delay (500)
    drawfillbox (650, 0, 400, 100, white)
    Pic.ScreenLoad ("Pictures/P1.bmp", 400, 0, picMerge)
    Draw.Text (". . .", 425, 75, font1, black)
    delay (1000)

    drawfillbox (650, 0, 400, 100, white)
    Pic.ScreenLoad ("Pictures/P2.bmp", 400, 0, picMerge)
    Draw.Text ("lolol", 390, 50, font3, black)
    delay (500)
    Draw.Text ("lolol", 390, 38, font3, black)
    delay (500)
    Draw.Text ("lolol", 390, 26, font3, black)
    delay (1500)
    drawfillbox (650, 0, 380, 100, white)
end if

Pic.ScreenLoad ("Pictures/P1.bmp", 400, 0, picMerge)

loop
    delay (75)
    drawfillbox (650, 0, 400, 100, white)
    Pic.ScreenLoad ("Pictures/P4.bmp", pika2, 0, picMerge)
    pika2 += 10
    exit when pika = 600
end loop
