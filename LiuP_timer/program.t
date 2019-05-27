%This program belongs to Patricia Liu
%Pacman is tired of dots. He wants fruit now!
%Created the 11th of november
%ENJOY!!


%TURN UP THE VOLUME TOO!!!!%
%DON'T FORGET OR ELSE THE GAME ISN"T AS FUN%

var x : int := 50
var y : int := 50
var a, b : int := 0
var chars : array char of boolean
var initialTime, gameTime : real
var Pic1, Sprite1, Pic2, Sprite2 : int
var x2, y2, x3, y3, x4, y4, x5, y5, x6, y6, x7, y7, x8, y8 : int
var score : int := 0
var font1 : int := Font.New ("times:20")
var font2 : int := Font.New ("times:15")
var font3 : int := Font.New ("times:50")
var font4 : int := Font.New ("times:12")
var font5 : int := Font.New ("times:8")
var font6 : int := Font.New ("times:100:bold")
var count : int := 30
var button : int

Pic1 := Pic.FileNew ("pacman.bmp")
Sprite1 := Sprite.New (Pic1)
Pic2 := Pic.FileNew ("pacman2.bmp")
Sprite2 := Sprite.New (Pic2)

%TURN UP THE VOLUME!!!!%

procedure main
    drawfillbox (0, 0, maxx, maxy, black)
    randint (x2, 0, 605)
    randint (y2, 0, 385)
    Pic.ScreenLoad ("apple.bmp", x2, y2, picMerge)
    randint (x3, 0, 605)
    randint (y3, 0, 385)
    Pic.ScreenLoad ("peach.bmp", x3, y3, picMerge)
    randint (x4, 0, 605)
    randint (y4, 0, 385)
    Pic.ScreenLoad ("banana.bmp", x4, y4, picMerge)
    randint (x5, 0, 605)
    randint (y5, 0, 385)
    Pic.ScreenLoad ("watermelon.bmp", x5, y5, picMerge)
    randint (x6, 0, 605)
    randint (y6, 0, 385)
    Pic.ScreenLoad ("cherry.bmp", x6, y6, picMerge)
    randint (x7, 0, 605)
    randint (y7, 0, 385)
    Pic.ScreenLoad ("orange.bmp", x7, y7, picMerge)
    randint (x8, 0, 605)
    randint (y8, 0, 385)
    Pic.ScreenLoad ("lemon.bmp", x8, y8, picMerge)

    drawfillbox (0, 355, 45, 400, red)
    Draw.Text (intstr (score), 15, 360, font1, white)
    Draw.Text ("SCORE", 5, 385, font5, white)

    drawfillbox (260, 370, 365, 400, red)
    Draw.Text ("TIMER: ", 270, 380, font4, white)
    Draw.Text (intstr (count), 325, 375, font1, white)

    initialTime := Time.Elapsed
    loop
	gameTime := Time.Elapsed
	if (gameTime - initialTime >= 1000) then
	    count -= 1
	    drawfillbox (260, 370, 365, 400, red)
	    Draw.Text ("TIMER: ", 270, 380, font4, white)
	    Draw.Text (intstr (count), 325, 375, font1, white)

	    initialTime := gameTime
	end if

	Input.KeyDown (chars)
	if chars ('d') then
	    x += 1
	    Sprite.Show (Sprite1)
	    Sprite.Hide (Sprite2)
	end if
	if chars ('s') then
	    y -= 1
	    Sprite.Show (Sprite1)
	    Sprite.Hide (Sprite2)
	end if
	if chars ('w') then
	    y += 1
	    Sprite.Show (Sprite1)
	    Sprite.Hide (Sprite2)
	end if

	if chars ('a') then
	    x -= 1
	    Sprite.Hide (Sprite1)
	    Sprite.Show (Sprite2)
	end if

	Sprite.SetPosition (Sprite1, x, y, true)
	Sprite.SetPosition (Sprite2, x, y, true)
	delay (10)
	%drawbox(x2,y2,x2+21,y2+21,red)

	if x > x2 and y > y2 and x < x2 + 21 and y < y2 + 20 then
	    score += 1
	    drawfillbox (x2, y2, x2 + 21, y2 + 20, black)
	    randint (x2, 0, 605)
	    randint (y2, 0, 385)
	    Pic.ScreenLoad ("apple.bmp", x2, y2, picMerge)
	    drawfillbox (0, 355, 45, 400, red)
	    Draw.Text (intstr (score), 15, 360, font1, white)
	    Draw.Text ("SCORE", 5, 385, font5, white)
	end if

	if x > x3 and y > y3 and x < x3 + 21 and y < y3 + 20 then
	    score += 1
	    drawfillbox (x3, y3, x3 + 21, y3 + 20, black)
	    randint (x3, 0, 605)
	    randint (y3, 0, 385)
	    Pic.ScreenLoad ("peach.bmp", x3, y3, picMerge)
	    drawfillbox (0, 355, 45, 400, red)
	    Draw.Text (intstr (score), 15, 360, font1, white)
	    Draw.Text ("SCORE", 5, 385, font5, white)
	end if

	if x > x4 and y > y4 and x < x4 + 20 and y < y4 + 20 then
	    score += 1
	    drawfillbox (x4, y4, x4 + 20, y4 + 20, black)
	    randint (x4, 0, 605)
	    randint (y4, 0, 385)
	    Pic.ScreenLoad ("banana.bmp", x4, y4, picMerge)
	    drawfillbox (0, 355, 45, 400, red)
	    Draw.Text (intstr (score), 15, 360, font1, white)
	    Draw.Text ("SCORE", 5, 385, font5, white)
	end if

	if x > x5 and y > y5 and x < x5 + 25 and y < y5 + 20 then
	    score += 1
	    drawfillbox (x5, y5, x5 + 25, y5 + 20, black)
	    randint (x5, 0, 605)
	    randint (y5, 0, 385)
	    Pic.ScreenLoad ("watermelon.bmp", x5, y5, picMerge)
	    drawfillbox (0, 355, 45, 400, red)
	    Draw.Text (intstr (score), 15, 360, font1, white)
	    Draw.Text ("SCORE", 5, 385, font5, white)
	end if

	if x > x6 and y > y6 and x < x6 + 21 and y < y6 + 20 then
	    score += 1
	    drawfillbox (x6, y6, x6 + 21, y6 + 20, black)
	    randint (x6, 0, 605)
	    randint (y6, 0, 385)
	    Pic.ScreenLoad ("cherry.bmp", x6, y6, picMerge)
	    drawfillbox (0, 355, 45, 400, red)
	    Draw.Text (intstr (score), 15, 360, font1, white)
	    Draw.Text ("SCORE", 5, 385, font5, white)
	end if

	if x > x7 and y > y7 and x < x7 + 22 and y < y7 + 20 then
	    score += 1
	    drawfillbox (x7, y7, x7 + 25, y7 + 20, black)
	    randint (x7, 0, 605)
	    randint (y7, 0, 385)
	    Pic.ScreenLoad ("orange.bmp", x7, y7, picMerge)
	    drawfillbox (0, 355, 45, 400, red)
	    Draw.Text (intstr (score), 15, 360, font1, white)
	    Draw.Text ("SCORE", 5, 385, font5, white)
	end if

	if x > x8 and y > y8 and x < x8 + 22 and y < y8 + 20 then
	    score += 1
	    drawfillbox (x8, y8, x8 + 25, y8 + 20, black)
	    randint (x8, 0, 605)
	    randint (y8, 0, 385)
	    Pic.ScreenLoad ("lemon.bmp", x8, y8, picMerge)
	    drawfillbox (0, 355, 45, 400, red)
	    Draw.Text (intstr (score), 15, 360, font1, white)
	    Draw.Text ("SCORE", 5, 385, font5, white)
	end if
	
	if count = 0 then 
	Draw.Text ("TIME", 100, 200, font6, white)
	delay (1000)
	drawfillbox(0, 0, maxx, maxy, black)
	end if

	exit when count = 0
    end loop
end main

%START
drawfillbox (0, 0, maxx, maxy, black)
Draw.Text ("PACMAN", 180, 250, font3, white)
Draw.Text ("NO MORE PAC-DOTS!", 220, 200, font2, white)
Draw.Text ("CLICK THE SCREEN TO START", 205, 50, font4, white)
Music.PlayFileLoop ("song.WAV")


Pic.ScreenLoad ("pacman.bmp", 0, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman3.bmp", 25, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman.bmp", 50, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman3.bmp", 75, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman.bmp", 100, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman3.bmp", 125, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman.bmp", 150, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman3.bmp", 175, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman.bmp", 200, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman3.bmp", 200, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman.bmp", 225, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman3.bmp", 250, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman3.bmp", 275, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman.bmp", 300, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman3.bmp", 350, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman.bmp", 375, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman3.bmp", 400, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman.bmp", 425, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman3.bmp", 450, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman3.bmp", 500, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman.bmp", 525, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman3.bmp", 550, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman3.bmp", 575, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman.bmp", 600, 100, picCopy)
delay (100)
drawfillbox (0, 100, 625, 150, black)
Pic.ScreenLoad ("pacman3.bmp", 625, 100, picCopy)
delay (100)
drawfillbox (0, 100, 650, 150, black)


buttonwait ("down", a, b, button, button)
if a > 0 and b > 0 and a < 566 and b < 400 then

    Sprite.SetPosition (Sprite1, x, y, true)
    Sprite.Show (Sprite1)
    Sprite.SetPosition (Sprite2, x, y, true)

    drawfillbox (0, 0, maxx, maxy, black)
    randint (x2, 0, 605)
    randint (y2, 0, 385)
    Pic.ScreenLoad ("apple.bmp", x2, y2, picMerge)
    randint (x3, 0, 605)
    randint (y3, 0, 385)
    Pic.ScreenLoad ("peach.bmp", x3, y3, picMerge)
    randint (x4, 0, 605)
    randint (y4, 0, 385)
    Pic.ScreenLoad ("banana.bmp", x4, y4, picMerge)
    randint (x5, 0, 605)
    randint (y5, 0, 385)
    Pic.ScreenLoad ("watermelon.bmp", x5, y5, picMerge)
    randint (x6, 0, 605)
    randint (y6, 0, 385)
    Pic.ScreenLoad ("cherry.bmp", x6, y6, picMerge)
    randint (x7, 0, 605)
    randint (y7, 0, 385)
    Pic.ScreenLoad ("orange.bmp", x7, y7, picMerge)
    randint (x8, 0, 605)
    randint (y8, 0, 385)
    Pic.ScreenLoad ("lemon.bmp", x8, y8, picMerge)

    drawfillbox (0, 355, 45, 400, red)
    Draw.Text (intstr (score), 15, 360, font1, white)
    Draw.Text ("SCORE", 5, 385, font5, white)

    drawfillbox (260, 370, 365, 400, red)
    Draw.Text ("TIMER: ", 270, 380, font4, white)
    Draw.Text (intstr (count), 325, 375, font1, white)

    %tutorial
    drawfillbox (400, 0, 650, 400, 0)
    drawbox (400 + 10, 10, 640 - 10, 400 - 10, black)
    Draw.Text ("PACMAN is tired of pac-dots!", 415, 370, font4, black)
    Draw.Text ("He wants to eat fruit instead!", 415, 350, font4, black)
    Draw.Text ("For each fruit PACMAN eats, ", 415, 330, font4, black)
    Draw.Text ("he gets one point.", 415, 310, font4, black)
    Draw.Text ("Help PACMAN eat as many fruit", 415, 290, font4, black)
    Draw.Text ("as he can in 30 seconds.", 415, 270, font4, black)
    delay (3000)
    Draw.Text ("Press A to move left.", 415, 240, font4, black)
    delay (750)
    Draw.Text ("Press D to move right.", 415, 210, font4, black)
    delay (750)
    Draw.Text ("Press W to move up.", 415, 180, font4, black)
    delay (750)
    Draw.Text ("Press S to move down.", 415, 150, font4, black)
    delay (750)
    Draw.Text ("GOOD LUCK!!", 415, 120, font4, black)
    delay (1500)
    loop
	main

	drawfillbox (0, 0, maxx, maxy, black)
	Sprite.Hide (Sprite1)
	Sprite.Hide (Sprite2)

	%Score less than 10
	if score < 10 then
	    Draw.Text ("PACMAN is still hungry! Try harder next time.", 60, 300, font1, 0)
	    drawfillbox (110, 175, 290, 250, 0)
	    Draw.Text ("EXIT", 170, 200, font1, black)

	    drawfillbox (350, 175, 525, 250, 0)
	    Draw.Text ("PLAY AGAIN", 360, 200, font1, black)

	    buttonwait ("down", a, b, button, button)

	    %play again
	    if a > 350 and b > 175 and a < 525 and b < 250 then
		delay (500)
		Sprite.Show (Sprite1)
		Sprite.Hide (Sprite2)
		x := 50
		y := 50
		score := 0
		count := 30

	    end if

	    if a > 110 and b > 175 and a < 290 and b < 250 then
		delay (1000)
		drawfillbox (0, 0, maxx, maxy, black)
	    end if

	    %score between 10-20

	else
	    if score < 20 and score > 10 or score = 10 then
		Draw.Text ("PACMAN is full and happy. SWEET!", 120, 300, font1, 0)
		drawfillbox (110, 175, 290, 250, 0)
		Draw.Text ("EXIT", 170, 200, font1, black)

		drawfillbox (350, 175, 525, 250, 0)
		Draw.Text ("PLAY AGAIN", 360, 200, font1, black)

		buttonwait ("down", a, b, button, button)

		if a > 350 and b > 175 and a < 525 and b < 250 then
		    delay (500)
		    Sprite.Show (Sprite1)
		    Sprite.Hide (Sprite2)
		    x := 50
		    y := 50
		    score := 0
		    count := 30
		end if

		if a > 110 and b > 175 and a < 290 and b < 250 then
		    delay (1000)
		    drawfillbox (0, 0, maxx, maxy, black)
		end if

	    else
		if score < 20 and score > 30 or score = 20 then
		    Draw.Text ("PACMAN is super full and you just broke the game", 25, 300, font1, 0)
		    drawfillbox (110, 175, 290, 250, 0)
		    Draw.Text ("EXIT", 170, 200, font1, black)

		    drawfillbox (350, 175, 525, 250, 0)
		    Draw.Text ("PLAY AGAIN", 360, 200, font1, black)

		    buttonwait ("down", a, b, button, button)

		    if a > 350 and b > 175 and a < 525 and b < 250 then
			delay (500)
			Sprite.Show (Sprite1)
			Sprite.Hide (Sprite2)
			x := 50
			y := 50
			score := 0
			count := 30
		    end if

		    if a > 110 and b > 175 and a < 290 and b < 250 then
			delay (1000)
			drawfillbox (0, 0, maxx, maxy, black)
		    end if
		end if
	    end if
	end if


	exit when a > 110 and b > 175 and a < 290 and b < 250
    end loop
Music.PlayFileStop
end if
