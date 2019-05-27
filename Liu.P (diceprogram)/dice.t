%This program belongs to Patricia Liu
%Started October 13, 1016
%It is a program random number generator?
% SUPER IMPORTANT NOTE : IF THE ANIMATIONS GLITCHES A LITTLE WHEN RUNNING, ITS BECAUSE THE PICTURES HAVE NOT BEEN LOADED ON
%YOUR COMPUTER.IT'S NOT THE PROGRAMS FAULT (I THINK ANYWAY).

var num1, num2, num3, num6 : int := 0
var font1 : int := Font.New ("times:25")
var font2 : int := Font.New ("times:30:bold")
var font3 : int := Font.New ("times:12")
var font4 : int := Font.New ("times:15")
var x, y, b : int := 0
var movement : int := 320
var num4, num5 : int := 0
var score : int := 0

setscreen ("graphics:620, 420")

procedure TenthDigit0
    loop
	Pic.ScreenLoad ("Pictures/S0.bmp", movement, 152, picCopy)
	movement -= 15
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 230
    end loop
end TenthDigit0

procedure TenthDigit1
    loop
	Pic.ScreenLoad ("Pictures/S1.bmp", movement, 152, picCopy)
	movement -= 15
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 230
    end loop
end TenthDigit1

procedure TenthDigit2
    loop
	Pic.ScreenLoad ("Pictures/S2.bmp", movement, 152, picCopy)
	movement -= 15
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 230
    end loop
end TenthDigit2

procedure TenthDigit3
    loop
	Pic.ScreenLoad ("Pictures/S3.bmp", movement, 152, picCopy)
	movement -= 15
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 230
    end loop
end TenthDigit3

procedure TenthDigit4
    loop
	Pic.ScreenLoad ("Pictures/S4.bmp", movement, 152, picCopy)
	movement -= 15
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 230
    end loop
end TenthDigit4

procedure TenthDigit5
    loop
	Pic.ScreenLoad ("Pictures/S5.bmp", movement, 152, picCopy)
	movement -= 15
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 230
    end loop
end TenthDigit5

procedure TenthDigit6
    loop
	Pic.ScreenLoad ("Pictures/S6.bmp", movement, 152, picCopy)
	movement -= 15
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 230
    end loop
end TenthDigit6

procedure TenthDigit7
    loop
	Pic.ScreenLoad ("Pictures/S7.bmp", movement, 152, picCopy)
	movement -= 15
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 230
    end loop
end TenthDigit7

procedure TenthDigit8
    loop
	Pic.ScreenLoad ("Pictures/S8.bmp", movement, 152, picCopy)
	movement -= 15
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 230
    end loop
end TenthDigit8

procedure TenthDigit9
    loop
	Pic.ScreenLoad ("Pictures/S9.bmp", movement, 152, picCopy)
	movement -= 15
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 230
    end loop
end TenthDigit9

procedure OneDigit0
    loop
	Pic.ScreenLoad ("Pictures/C0.bmp", movement, 152, picCopy)
	movement -= 16
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 232
    end loop
end OneDigit0

procedure OneDigit1
    loop
	Pic.ScreenLoad ("Pictures/C1.bmp", movement, 152, picCopy)
	movement -= 16
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 232
    end loop
end OneDigit1

procedure OneDigit2
    loop
	Pic.ScreenLoad ("Pictures/C2.bmp", movement, 152, picCopy)
	movement -= 16
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 232
    end loop
end OneDigit2

procedure OneDigit3
    loop
	Pic.ScreenLoad ("Pictures/C3.bmp", movement, 152, picCopy)
	movement -= 16
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 232
    end loop
end OneDigit3

procedure OneDigit4
    loop
	Pic.ScreenLoad ("Pictures/C4.bmp", movement, 152, picCopy)
	movement -= 16
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 232
    end loop
end OneDigit4

procedure OneDigit5
    loop
	Pic.ScreenLoad ("Pictures/C5.bmp", movement, 152, picCopy)
	movement -= 16
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 232
    end loop
end OneDigit5

procedure OneDigit6
    loop
	Pic.ScreenLoad ("Pictures/C6.bmp", movement, 152, picCopy)
	movement -= 16
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 232
    end loop
end OneDigit6

procedure OneDigit7
    loop
	Pic.ScreenLoad ("Pictures/C7.bmp", movement, 152, picCopy)
	movement -= 16
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 232
    end loop
end OneDigit7

procedure OneDigit8
    loop
	Pic.ScreenLoad ("Pictures/C8.bmp", movement, 152, picCopy)
	movement -= 16
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 232
    end loop
end OneDigit8

procedure OneDigit9
    loop
	Pic.ScreenLoad ("Pictures/C9.bmp", movement, 152, picCopy)
	movement -= 16
	delay (250)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	exit when movement = 232
    end loop
end OneDigit9

Draw.Text ("Generate some numbers!!!", 100, 350, font2, black)
Pic.ScreenLoad ("Pictures/generator.bmp", 50, 100, picMerge)
Draw.Text ("EXIT", 145, 205, font3, black)
Draw.Text ("GENERATE", 420, 205, font3, black)

%%%%%%%%%%%%%%%%%%
%START OF PROGRAM%
%%%%%%%%%%%%%%%%%%

View.Update
loop     %press the buttons generate to start
    movement := 320
    buttonwait ("down", x, y, b, b)
    drawfillbox (260, 230, 360, 280, black)
    if x > 120 and x < 200 and y > 170 and y < 300 then
	delay (250)
	cls
    end if
    exit when x > 120 and x < 200 and y > 170 and y < 300

    if x > 420 and x < 500 and y > 170 and y < 300 then
	randint (num1, 0, 9)
	randint (num2, 0, 9)
	randint (num3, 0, 9)
	randint (num6, 0, 9)
	%num1 := 3
	%num2 := 3
       % num3 := 3
	%num6 := 3
	delay (100)
	Draw.Text (intstr (num1), 270, 240, font1, white)
	delay (50)
	Draw.Text (intstr (num2), 290, 240, font1, white)
	delay (50)
	Draw.Text (intstr (num3), 310, 240, font1, white)
	delay (50)
	Draw.Text (intstr (num6), 330, 240, font1, white)

	delay (500)
	drawfillbox (230, 150, 390, 210, 0)
	drawbox (230, 150, 390, 210, black)
	delay (500)

	if num1 = 0 then
	    TenthDigit0
	end if

	if num1 = 1 then
	    TenthDigit1
	end if

	if num1 = 2 then
	    TenthDigit2
	end if

	if num1 = 3 then
	    TenthDigit3
	end if

	if num1 = 4 then
	    TenthDigit4
	end if

	if num1 = 5 then
	    TenthDigit5
	end if

	if num1 = 6 then
	    TenthDigit6
	end if

	if num1 = 7 then
	    TenthDigit7
	end if

	if num1 = 8 then
	    TenthDigit8
	end if

	if num1 = 9 then
	    TenthDigit9
	end if


	movement := 312

	if num2 = 9 then
	    OneDigit9
	end if

	if num2 = 8 then
	    OneDigit8
	end if

	if num2 = 7 then
	    OneDigit7
	end if

	if num2 = 6 then
	    OneDigit6
	end if

	if num2 = 5 then
	    OneDigit5
	end if

	if num2 = 4 then
	    OneDigit4
	end if

	if num2 = 3 then
	    OneDigit3
	end if

	if num2 = 2 then
	    OneDigit2
	end if

	if num2 = 1 then
	    OneDigit1
	end if

	if num2 = 0 then
	    OneDigit0
	end if

	movement := 320

	if num3 = 0 then
	    TenthDigit0
	end if

	if num3 = 1 then
	    TenthDigit1
	end if

	if num3 = 2 then
	    TenthDigit2
	end if

	if num3 = 3 then
	    TenthDigit3
	end if

	if num3 = 4 then
	    TenthDigit4
	end if

	if num3 = 5 then
	    TenthDigit5
	end if

	if num3 = 6 then
	    TenthDigit6
	end if

	if num3 = 7 then
	    TenthDigit7
	end if

	if num3 = 8 then
	    TenthDigit8
	end if

	if num3 = 9 then
	    TenthDigit9
	end if

	movement := 312

	if num6 = 9 then
	    OneDigit9
	end if

	if num6 = 8 then
	    OneDigit8
	end if

	if num6 = 7 then
	    OneDigit7
	end if

	if num6 = 6 then
	    OneDigit6
	end if

	if num6 = 5 then
	    OneDigit5
	end if

	if num6 = 4 then
	    OneDigit4
	end if

	if num6 = 3 then
	    OneDigit3
	end if

	if num6 = 2 then
	    OneDigit2
	end if

	if num6 = 1 then
	    OneDigit1
	end if

	if num6 = 0 then
	    OneDigit0
	end if

	delay (500)
	Pic.ScreenLoad ("Pictures/generator.bmp", 50, 100, picMerge)
	Draw.Text ("EXIT", 145, 205, font3, black)
	Draw.Text ("GENERATE", 420, 205, font3, black)
	%Draw.Text ("Generate some numbers!!!", 100, 350, font2, black)
	if num1 = num2 and num2 = num3 and num3 = num6 then
	    Draw.Text ("You got a quadruple! You're SUPER LUCKY!", 0, 25, font1, black)
	    delay (2000)
	    drawfillbox (0, 0, 625, 75, 0)
	else
	    if num1 = num2 and num3 = num1 or num2 = num3 and num3 = num6 or num1 = num3 and num3 = num6 or num1 = num2 and num2 = num6 then
		Draw.Text ("Woot! You got a triple! You're VERY LUCKY!", 0, 25, font1, black)
		delay (2000)
		drawfillbox (0, 0, 625, 75, 0)

	    else
		if num1 = num2 or num2 = num3 or num3 = num1 or num1 = num6 or num2 = num6 or num3 = num6 then
		    Draw.Text ("Woot! You got a double! You're LUCKY!", 30, 25, font1, black)
		    delay (1500)
		    drawfillbox (0, 0, 625, 75, 0)
		else
		    Draw.Text ("You are not lucky... Enjoy Squirtle and Charmander walking instead...", 30, 25, font4, black)
		    delay (3000)
		    drawfillbox (0, 0, 625, 75, 0)
		end if
	    end if
	end if
    end if

end loop

%ADD ON
cls
delay (500)
Draw.Text ("JK THE PROGRAM IS NOT OVER", 75, 250, font1, black)
delay (2000)
cls
drawfillbox (120, 75, 500, 150, 12)
drawbox (120, 75, 500, 150, black)
Draw.Text ("CLICK TO PLAY", 180, 100, font1, 0)
drawfillbox (220, 10, 400, 60, 12)
drawbox (220, 10, 400, 60, black)
Draw.Text ("EXIT", 275, 25, font1, white)
drawfillbox (275, 340, 345, 420, 12)
drawbox (275, 340, 345, 420, black)
Draw.Text ("SCORE", 285, 400, font3, white)
Draw.Text (intstr (score), 302, 360, font1, white)

loop
    buttonwait ("down", x, y, b, b)
    if x < 500 and x > 120 and y < 150 and y > 75 then
	drawfillbox (0, 155, 274, 360, 0)
	drawfillbox (345, 155, 620, 274, 0)
	drawfillbox (250, 250, 400, 300, 0)
	randint (num4, 1, 3)
	randint (num5, 1, 3)
	if num4 = 1 then %rock
	    Pic.ScreenLoad ("Pictures/paper2.bmp", 0, 155, picCopy)
	    Draw.Text ("YOUR HAND", 40, 275, font3, black)
	end if

	if num4 = 2 then %paper
	    Pic.ScreenLoad ("Pictures/hand2.bmp", 0, 155, picCopy)
	    Draw.Text ("YOUR HAND", 40, 275, font3, black)
	end if

	if num4 = 3 then %scissors
	    Pic.ScreenLoad ("Pictures/scissors2.bmp", 0, 155, picCopy)
	    Draw.Text ("YOUR HAND", 40, 275, font3, black)
	end if

	if num5 = 1 then         %rock
	    Pic.ScreenLoad ("Pictures/paper1.bmp", 425, 155, picCopy)
	end if

	if num5 = 2 then %paper
	    Pic.ScreenLoad ("Pictures/hand1.bmp", 425, 155, picCopy)
	end if

	if num5 = 3 then %scissors
	    Pic.ScreenLoad ("Pictures/scissors1.bmp", 350, 155, picCopy)
	end if


	if num4 = 1 and num5 = 3 or num4 = 2 and num5 = 1 or num4 = 3 and num5 = 2 then
	    delay (500)
	    Draw.Text ("You Win!!!", 250, 250, font1, black)
	    score += 1
	end if

	if num4 = 3 and num5 = 1 or num4 = 1 and num5 = 2 or num4 = 2 and num5 = 3 then
	    delay (500)
	    Draw.Text ("You Lose...", 250, 250, font1, black)
	    score -= 1
	end if

	if num4 = 3 and num5 = 3 or num4 = 1 and num5 = 1 or num4 = 2 and num5 = 2 then
	    delay (500)
	    Draw.Text ("TIE!!!", 275, 250, font1, black)
	end if

	drawfillbox (275, 340, 345, 420, 12)
	drawbox (275, 340, 345, 420, black)
	Draw.Text ("SCORE", 285, 400, font3, white)
	Draw.Text (intstr (score), 302, 360, font1, white)
    end if

    if x > 220 and y > 10 and x < 400 and y < 60 then
	cls
    end if

    exit when x > 220 and y > 10 and x < 400 and y < 60
end loop




