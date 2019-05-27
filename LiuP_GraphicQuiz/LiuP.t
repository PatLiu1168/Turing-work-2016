%This program belongs to Patricia Liu
%it is the graphics quiz program

%BTW there is volume on the third question so get ur headphones ready...
%Also u should recognize the answer for question 3 from somebody elses drawing project


var name : string := ""
var font1 : int := Font.New ("times:24")
var font2 : int := Font.New ("times:18")
var font3 : int := Font.New ("times:14")
var font4 : int := Font.New ("times:30")
var x, y, button : int := 0
var score : int := 0
var pointx, pointy : int
var counter : int := 0


setscreen ("graphics:1000, 650")

%intro

    drawfillbox (320, 500, 680, 590, blue)
    Draw.Text ("What is your name?", 380, 550, font1, 0)
    drawfillbox (400, 515, 600, 540, 0)
    locate (8, 52)
    get name
    delay (1000)

    Font.Draw ("Hello " + name + "! Welcome to the (NOT SO HARD) quiz.", 150, 450, font1, blue)
    Pic.ScreenLoad ("goku1.jpg", 0, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku2.jpg", 0, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku3.jpg", 0, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku4.jpg", 0, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku5.jpg", 150, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku4.jpg", 0, 200, picCopy)
    Pic.ScreenLoad ("goku5.jpg", 150, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku5.jpg", 200, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku5.jpg", 250, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku5.jpg", 325, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku5.jpg", 400, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku5.jpg", 475, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku5.jpg", 550, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku5.jpg", 625, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku5.jpg", 700, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku5.jpg", 775, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku5.jpg", 850, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku5.jpg", 925, 200, picCopy)
    delay (100)
    Pic.ScreenLoad ("goku5.jpg", 1000, 200, picCopy)
    delay (100)
    cls


%question1

    drawfillbox (maxx, 0, 0, maxy, 53)
    Pic.ScreenLoad ("map.jpg", 0, 50, picCopy)
    Font.Draw ("Question #1", 400, 610, font1, red)
    Font.Draw ("Which country does manga originate from?", 250, 570, font2, blue)
    Pic.ScreenLoad ("map.gif", 0, 10, picCopy)
    drawfillbox (880, 570, 950, 650, 12)
    Draw.Text ("SCORE", 885, 555, font3, blue)
    Draw.Text (intstr (score), 905, 595, font4, white)
    buttonwait ("down", x, y, button, button)

    if x > 760 and x < 779 and y < 309 and y > 288 then
	drawoval (769, 295, 20, 20, red)
	delay (500)
	Draw.Text ("You're right " + name + "!", 20, 100, font1, black)
	%Pic.ScreenLoad
	score += 1
    else
	drawoval (x, y, 20, 20, red)
	Draw.Text ("You are wrong...", 20, 100, font1, black)
	%Pic.ScreenLoad
	score -= 1
    end if
    delay (200)
    drawfillbox (880, 570, 950, 650, 12)
    Draw.Text (intstr (score), 905, 595, font4, white)
    delay (1000)

    loop
	counter := counter + 1
	randint (pointx, 1, 925)
	randint (pointy, 1, 640)
	Pic.ScreenLoad ("Al.bmp", pointx, pointy, picCopy)
	delay (5)
	exit when counter = 600
    end loop


    drawfillbox (900, 0, 1000, maxy, black)
    delay (200)
    drawfillbox (800, 0, 1000, maxy, black)
    delay (200)
    drawfillbox (700, 0, 1000, maxy, black)
    delay (200)
    drawfillbox (600, 0, 1000, maxy, black)
    delay (200)
    drawfillbox (500, 0, 1000, maxy, black)
    delay (200)
    drawfillbox (400, 0, 1000, maxy, black)
    delay (200)
    drawfillbox (300, 0, 1000, maxy, black)
    delay (200)
    drawfillbox (200, 0, 1000, maxy, black)
    delay (200)
    drawfillbox (100, 0, 1000, maxy, black)
    delay (200)
    drawfillbox (0, 0, 1000, maxy, black)
    delay (200)
    cls



%question2

    drawfillbox (maxx, 0, 0, maxy, black)
    delay (100)
    drawfillbox (925, 570, 1000, 650, 12)
    Draw.Text ("SCORE", 930, 555, font3, white)
    Draw.Text (intstr (score), 955, 595, font4, white)
    Draw.Text ("In which manga does Natsu Dragneel, Gray Fullbuster, Erza Scarlet and Lucy Heartfilla", 60, 550, font2, white)
    Draw.Text ("star as the main chacters.", 400, 500, font2, white)
    Pic.ScreenLoad ("fairytail.jpg", 150, 300, picCopy)
    Pic.ScreenLoad ("bleach.jpg", 550, 325, picCopy)
    Pic.ScreenLoad ("hunter.jpg", 150, 100, picCopy)
    Pic.ScreenLoad ("naruto.jpg", 550, 100, picCopy)

    loop
	buttonwait ("down", x, y, button, button)

	if x > 150 and x < 448 and y < 405 and y > 300 then
	    delay (500)
	    score += 1
	    drawfillbox (maxx, 0, 0, maxy, 12)
	    Draw.Text ("That's right!!!", 400, 350, font4, white)
	    delay (1000)
	end if

	if x > 150 and x < 450 and y < 235 and y > 100 then
	    delay (500)
	    drawfillbox (maxx, 0, 0, maxy, 12)
	    Draw.Text ("Nope!!!", 440, 350, font4, white)
	    score -= 1
	    delay (1000)
	end if

	if x > 550 and x < 848 and y < 392 and y > 325 then
	    delay (500)
	    drawfillbox (maxx, 0, 0, maxy, 12)
	    Draw.Text ("Non!!!", 440, 350, font4, white)
	    score -= 1
	    delay (1000)
	end if

	if x > 550 and x < 850 and y < 243 and y > 100 then
	    delay (500)
	    drawfillbox (maxx, 0, 0, maxy, 12)
	    Draw.Text ("Wrong!!!", 440, 350, font4, white)
	    score -= 1
	    delay (1000)
	end if
	cls

	drawfillbox (maxx, 0, 0, maxy, black)
	delay (100)
	drawfillbox (925, 570, 1000, 650, 12)
	Draw.Text ("SCORE", 930, 555, font3, white)
	Draw.Text (intstr (score), 955, 595, font4, white)
	Draw.Text ("In which manga does Natsu Dragneel, Gray Fullbuster, Erza Scarlet and Lucy Heartfilla", 60, 550, font2, white)
	Draw.Text ("star as the main chacters.", 400, 500, font2, white)
	Pic.ScreenLoad ("fairytail.jpg", 150, 300, picCopy)
	Pic.ScreenLoad ("bleach.jpg", 550, 325, picCopy)
	Pic.ScreenLoad ("hunter.jpg", 150, 100, picCopy)
	Pic.ScreenLoad ("naruto.jpg", 550, 100, picCopy)

	exit when x > 150 and x < 448 and y < 405 and y > 300
    end loop
    delay (300)
    Pic.ScreenLoad ("Happy.jpg", 0, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 128, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 50, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 178, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 100, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 228, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 150, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 278, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 200, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 328, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 250, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 378, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 300, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 428, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 350, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 478, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 400, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 528, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 450, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 578, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 500, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 628, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 550, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 678, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 600, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 728, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 650, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 778, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 700, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 828, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 750, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 878, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 800, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 928, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 850, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 978, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 900, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 1000, 375, 34)
    Pic.ScreenLoad ("Happy.jpg", 950, 275, picCopy)
    delay (300)
    drawfillbox (0, 275, 1000, 375, 34)
    delay (100)
    drawfillbox (0, 250, 1000, 400, 34)
    delay (100)
    drawfillbox (0, 225, 1000, 425, 34)
    delay (100)
    drawfillbox (0, 200, 1000, 450, 34)
    delay (100)
    drawfillbox (0, 175, 1000, 475, 34)
    delay (100)
    drawfillbox (0, 150, 1000, 500, 34)
    delay (100)
    drawfillbox (0, 125, 1000, 525, 34)
    delay (100)
    drawfillbox (0, 100, 1000, 550, 34)
    delay (100)
    drawfillbox (0, 75, 1000, 575, 34)
    delay (100)
    drawfillbox (0, 50, 1000, 600, 34)
    delay (100)
    drawfillbox (0, 25, 1000, 625, 34)
    delay (100)
    drawfillbox (0, 00, 1000, 650, 34)
    delay (100)
    cls


%question3

    drawfillbox (0, 00, 1000, 650, 34)
    Draw.Text ("Which charcter is Koro-sensei from the manga <Assassination Classroom> ?", 125, 550, font2, white)
    Draw.Text ("(There is volume when you click btw)", 300, 500, font2, white)
    Pic.ScreenLoad ("korosensei.jpg", 25, 100, picCopy)
    Pic.ScreenLoad ("bear.jpg", 350, 155, picCopy)
    Pic.ScreenLoad ("kon.jpg", 675, 125, picCopy)
    drawfillbox (925, 570, 1000, 650, 12)
    Draw.Text ("SCORE", 930, 555, font3, white)
    Draw.Text (intstr (score), 955, 595, font4, white)


    loop
	buttonwait ("down", x, y, button, button)

	if x > 25 and x < 325 and y < 429 and y > 100 then
	    Music.PlayFileLoop ("korosensei.MP3")
	    delay (3000)
	    drawfillbox (maxx, 0, 0, maxy, 12)
	    Draw.Text ("Correct " + name + "!", 420, 425, font4, white)
	    Draw.Text ("Korosensei is a genetically expiremented human", 230, 400, font1, white)
	    Draw.Text ("targeted by the government for assassination.", 260, 370, font1, white)
	    Draw.Text ("He is also one of the teacher of Class E (the assasination classroom).", 80, 342, font1, white)
	    delay (3000)
	    cls
	    score += 1
	end if

	if x > 350 and x < 650 and y < 375 and y > 125 then
	    Music.PlayFileLoop ("mono.MP3")
	    delay (3000)
	    drawfillbox (maxx, 0, 0, maxy, 12)
	    Draw.Text ("That's wrong " + name + "!", 350, 400, font4, white)
	    Draw.Text ("This is Monokuma.", 390, 370, font1, white)
	    Draw.Text ("He is a robotic bear from the anime Dangarompa.", 200, 340, font1, white)
	    delay (4000)
	    score -= 1
	    cls
	end if

	if x > 650 and x < 975 and y < 405 and y > 155 then
	    Music.PlayFileLoop ("kon.MP3")
	    delay (3000)
	    drawfillbox (maxx, 0, 0, maxy, 12)
	    Draw.Text ("That's wrong " + name + "!", 400, 400, font4, white)
	    Draw.Text ("That's Kon.", 450, 370, font1, white)
	    Draw.Text ("He's this sort of talking lion stuffy.", 325, 340, font1, white)
	    delay (4000)
	    score -= 1
	end if
	
	drawfillbox (0, 00, 1000, 650, 34)
	Draw.Text ("Which charcter is Koro-sensei from the manga <Assassination Classroom> ?", 125, 550, font2, white)
	Draw.Text ("(There is volume when you click btw)", 300, 500, font2, white)
	Pic.ScreenLoad ("korosensei.jpg", 25, 100, picCopy)
	Pic.ScreenLoad ("bear.jpg", 350, 155, picCopy)
	Pic.ScreenLoad ("kon.jpg", 675, 125, picCopy)
	drawfillbox (925, 570, 1000, 650, 12)
	Draw.Text ("SCORE", 930, 555, font3, white)
	Draw.Text (intstr (score), 955, 595, font4, white)
	delay (3000)
	Music.PlayFileStop

	exit when x > 25 and x < 325 and y < 429 and y > 100
    end loop
delay (500)
drawfillbox (maxx,0,  900, 100, 9)
delay (100)
drawfillbox (maxx,0,  800, 175, 9)
delay (100)
drawfillbox (maxx,0,  700, 250, 9)
delay (100)
drawfillbox (maxx,0,  600, 325, 9)
delay (100)
drawfillbox (maxx,0,  500, 400, 9)
delay (100)
drawfillbox (maxx,0,  400, 475, 9)
delay (100)
drawfillbox (maxx,0,  300, 525, 9)
delay (100)
drawfillbox (maxx,0,  200, 600, 9)
delay (100)
drawfillbox (maxx,0,  100, 625, 9)
delay (100)
drawfillbox (maxx, 0, 0, maxy, 9)

cls



%ending

drawfillbox (maxx, 0, 0, maxy, 9)
Draw.Text ("GOOD JOB "+name+"!!!!! You Made It Throught The (NOT SO HARD) Quiz." , 0, 450, font1, white)
delay (500)
Draw.Text ("Your Score is ", 400, 400, font1, white)
Draw.Text (intstr (score), 595, 400, font1, white)

delay (3000)
Draw.Text ("Have a good day!", 395, 200, font1, white)




