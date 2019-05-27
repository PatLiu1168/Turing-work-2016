% This program belongs to Patricia Liu
%color some pictures :)
%Was started on october 26, 2016

var x, y, button : int := 0
var c : int := black
var size : int := 2
var font1 : int := Font.New ("times:12")
var font2 : int := Font.New ("times:20")
var font3 : int := Font.New ("times:30")
var font4 : int := Font.New ("times:8")
var font5 : int := Font.New ("times :10")
var sprite1, sprite2, sprite3, pic1, pic2, pic3 : int
var sprite4, pic4, sprite5, pic5, sprite6, pic6 : int
var tool : int := 1
var page : int := 1

pic1 := Pic.FileNew ("Pictures/pencil.bmp")
sprite1 := Sprite.New (pic1)

pic2 := Pic.FileNew ("Pictures/eraser.jpg")
sprite2 := Sprite.New (pic2)

pic3 := Pic.FileNew ("Pictures/dot.jpg")
sprite3 := Sprite.New (pic3)

pic6 := Pic.FileNew ("wolf.jpg")
sprite6 := Sprite.New (pic6)

pic5 := Pic.FileNew ("lemming.jpg")
sprite5 := Sprite.New (pic5)

pic4 := Pic.FileNew ("eagle.bmp")
sprite4 := Sprite.New (pic4)

var pic : int := sprite4

Sprite.SetPosition (sprite4, 100, 51, false)
Sprite.SetPosition (sprite5, 100, 60, false)
Sprite.SetPosition (sprite6, 100, 51, false)
%%%%%%%%%%%%
%PROCEDURES%
procedure tools
    if button = 1 and x > 200 and y > 369 and x < 225 and y < 394 then
	tool := 3
    end if


    if button = 1 and x > 113 and y > 369 and x < 138 and y < 394 then
	tool := 1
    end if


    if button = 1 and x > 157 and y > 369 and x < 182 and y < 394 then
	tool := 2
    end if

    %DROPPER THING
    if tool = 3 then
	Sprite.Show (sprite3)
	Sprite.Hide (sprite2)
	Sprite.Hide (sprite1)
	mousewhere (x, y, button)
	if button = 1 and x > 53 and y > 53 and x < 447 and y < 347 or button = 1 and x > 485 - 15 and y > 25 and x < 605 + 15 and y < 375 then
	    c := whatdotcolor (x, y)
	    tool := 1
	end if
    end if

    %PENCIL
    if tool = 1 then
	Sprite.Show (sprite1)
	Sprite.Hide (sprite3)
	Sprite.Hide (sprite2)
	if button = 1 and x > 53 and y > 53 and x < 447 and y < 347 then
	    drawfilloval (x, y, size, size, c)

	end if
	%Pic.ScreenLoad(pic, 100, 51, picMerge)
    end if

    %ERASER
    if tool = 2 then
	Sprite.Show (sprite2)
	Sprite.Hide (sprite3)
	Sprite.Hide (sprite1)
	if button = 1 and x > 53 and y > 53 and x < 447 and y < 347 then
	    drawfilloval (x, y, size, size, white)

	end if
	%Pic.ScreenLoad(pic, 100, 51, picMerge)
    end if

    %if x>485-15 and y>25 and x< 605+15 and y< 375 then
    %Sprite.Hide (sprite2)
    %Sprite.Hide (sprite3)
    %Sprite.Hide (sprite1)
    %else if tool = 3 then
    %Sprite.Show (sprite3)
    %end if
    %end if
end tools

procedure colours
    mousewhere (x, y, button)

    if button = 1 and x > 585 and y > 280 and x < 605 and y < 300 then
	c := 62
    end if

    if button = 1 and x > 560 and y > 280 and x < 580 and y < 300 then
	c := 64
    end if

    if button = 1 and x > 535 and y > 280 and x < 555 and y < 300 then
	c := 42
    end if

    if button = 1 and x > 485 and y > 280 and x < 505 and y < 300 then
	c := 12
    end if

    if button = 1 and x > 510 and y > 280 and x < 530 and y < 300 then
	c := 4
    end if

    if button = 1 and x > 585 and y > 255 and x < 605 and y < 275 then
	c := 46
    end if

    if button = 1 and x > 560 and y > 255 and x < 580 and y < 275 then
	c := 119
    end if

    if button = 1 and x > 535 and y > 255 and x < 555 and y < 275 then
	c := 54
    end if

    if button = 1 and x > 485 and y > 255 and x < 505 and y < 275 then
	c := 9
    end if

    if button = 1 and x > 510 and y > 255 and x < 530 and y < 275 then
	c := 127
    end if

    if button = 1 and x > 585 and y > 230 and x < 605 and y < 250 then
	c := 58
    end if

    if button = 1 and x > 560 and y > 230 and x < 580 and y < 250 then
	c := 34
    end if

    if button = 1 and x > 535 and y > 230 and x < 555 and y < 250 then
	c := 186
    end if

    if button = 1 and x > 485 and y > 230 and x < 505 and y < 250 then
	c := 14
    end if

    if button = 1 and x > 510 and y > 230 and x < 530 and y < 250 then
	c := 68
    end if

    if button = 1 and x > 585 and y > 205 and x < 605 and y < 225 then
	c := 30
    end if

    if button = 1 and x > 560 and y > 205 and x < 580 and y < 225 then
	c := 8
    end if

    if button = 1 and x > 535 and y > 205 and x < 555 and y < 225 then
	c := 24
    end if

    if button = 1 and x > 485 and y > 205 and x < 505 and y < 225 then
	c := black
    end if

    if button = 1 and x > 510 and y > 205 and x < 530 and y < 225 then
	c := 20
    end if

end colours

procedure fontsize
    if button = 1 and x > 500 and y > 155 and x < 510 and y < 165 then
	size := 5
    end if

    if button = 1 and x > 485 and y > 155 and x < 495 and y < 165 then
	size := 2
    end if

    if button = 1 and x > 518 and y > 153 and x < 532 and y < 167 then
	size := 7
    end if

    if button = 1 and x > 540 and y > 150 and x < 560 and y < 170 then
	size := 10
    end if

    if button = 1 and x > 570 and y > 145 and x < 600 and y < 175 then
	size := 15
    end if
end fontsize


%%%%%%%%%%%%%%%%
%opening screen%
drawfillbox (0, 0, maxx, maxy, 64)
drawfillbox (25, 25, maxx - 25, maxy - 25, 65)
drawfillbox (50, 50, maxx - 50, maxy - 50, 66)
Draw.Text ("THE COLOURING BOOK", 100, 225, font3, black)
drawfillbox (266, 125, 358, 170, white)
drawbox (266, 125, 358, 170, black)
Draw.Text ("OPEN", 277, 135, font2, black)


%%%%%%%%%%%%%%%%%%%%%%%%
%actual colouring pages%
buttonwait ("down", x, y, button, button)
if x > 266 and y > 125 and x < 358 and y < 170 then
    cls
    drawfillbox (485 - 15, 25, 605 + 15, 375, white)
    drawbox (485 - 15, 25, 605 + 15, 375, black)
    drawfillbox (50, 50, 450, 350, white)
    drawbox (50, 50, 450, 350, black)
    Sprite.Show (pic)
    %Pic.ScreenLoad (pic, 100, 51, picMerge)
    drawbox (485, 325, 590, 355, black)
    Draw.Text ("Clear Screen", 490, 338, font1, black)

    Draw.Text ("Colours", 485, 305, font4, black)
    drawfillbox (485, 280, 505, 300, 12) %bright red
    drawfillbox (510, 280, 530, 300, 4) %red
    drawfillbox (535, 280, 555, 300, 42) %orange
    drawfillbox (560, 280, 580, 300, 64) %light orange-pink
    drawfillbox (585, 280, 605, 300, 62) %pink
    drawfillbox (485, 255, 505, 275, 9) %blue
    drawfillbox (510, 255, 530, 275, 127) %dark blue
    drawfillbox (535, 255, 555, 275, 54) %lighter navy
    drawfillbox (560, 255, 580, 275, 119) %dark green
    drawfillbox (585, 255, 605, 275, 46) %green
    drawfillbox (485, 230, 505, 250, 14) %yellow
    drawfillbox (510, 230, 530, 250, 68) %light yellow
    drawfillbox (535, 230, 555, 250, 186) %brown
    drawfillbox (560, 230, 580, 250, 34) %dark purple
    drawfillbox (585, 230, 605, 250, 58) %light purple
    drawfillbox (485, 205, 505, 225, black) %black
    drawfillbox (510, 205, 530, 225, 20) %dark dark gray
    drawfillbox (535, 205, 555, 225, 24) %dark gray
    drawfillbox (560, 205, 580, 225, 8) %light gray
    drawfillbox (585, 205, 605, 225, 30) %even lighter gray

    Draw.Text ("Point Size", 485, 185, font4, black)
    drawfilloval (490, 160, 2, 2, black)
    drawfilloval (505, 160, 5, 5, black)
    drawfilloval (525, 160, 7, 7, black)
    drawfilloval (550, 160, 10, 10, black)
    drawfilloval (585, 160, 15, 15, black)

    drawbox (50, 365, 450, 398, black)
    Draw.Text ("Tools", 60, 380, font1, black)
    Pic.ScreenLoad ("Pictures/pencil.bmp", 115, 370, picMerge)
    Pic.ScreenLoad ("Pictures/eraser.jpg", 157, 370, picMerge)
    Pic.ScreenLoad ("Pictures/dot.jpg", 200, 370, picMerge)
    drawbox (200, 369, 225, 394, black)
    drawbox (157, 369, 182, 394, black)
    drawbox (113, 369, 138, 394, black)

    drawfillbox (485, 90, 535, 125, white)
    drawbox (485, 90, 536, 125, black)
    Draw.Text ("Previous", 490, 110, font4, black)
    Draw.Text ("Page", 490, 95, font4, black)
    drawfillbox (555, 90, 605, 125, white)
    drawbox (555, 90, 605, 125, black)
    Draw.Text ("Next", 560, 110, font4, black)
    Draw.Text ("Page", 560, 95, font4, black)

    drawbox (490, 40, 600, 65, black)
    drawbox (488, 38, 602, 67, black)
    Draw.Text ("CLOSE BOOK", 493, 47, font1, black)


    loop
	mousewhere (x, y, button)
	Sprite.SetPosition (sprite1, x, y, false)
	Sprite.SetPosition (sprite2, x, y, false)
	Sprite.SetPosition (sprite3, x, y, false)

	if button = 1 and x > 488 and y > 38 and x < 602 and y < 67 then
	    cls
	    Sprite.Hide (pic)
	    Sprite.Hide (sprite1)
	    Sprite.Hide (sprite2)
	    Sprite.Hide (sprite3)
	end if
	exit when button = 1 and x > 488 and y > 38 and x < 602 and y < 67

	colours

	fontsize

	tools

	%CLEAR SCREEN
	if button = 1 and x > 485 and y > 325 and x < 605 and y < 355 then
	    drawfillbox (40, 35, 460, 360, 0)
	    %Pic.ScreenLoad(pic, 100, 51, picMerge)
	    drawbox (50, 50, 450, 350, black)
	else
	    if page = 2 or page = 3 or page = 4 then
		Sprite.Show (pic)
	    end if
	end if

	%SWITCH PAGES
	if button =1 and x > 485 and y > 90 and x < 536 and y < 125 then
	    drawfillbox (40, 35, 460, 360, 0)
	    drawbox (50, 50, 450, 350, black)
	    page -= 1
	    delay (200)
	end if

	if button =1 and x > 555 and y > 90 and x < 605 and y < 125 then
	    drawfillbox (40, 35, 460, 360, 0)
	    drawbox (50, 50, 450, 350, black)
	    page += 1
	    delay (200)
	end if
	
	if page < 1 then
	    page := 4
	end if
	
	if page > 4 then
	    page := 1
	end if
	
	if page = 1 then
	    Draw.Text ("FREEDRAW PAGE. NEXT PAGES HAVE THINGS TO COLOUR.", 55, 330, font5, black)
	    Sprite.Hide (pic)
	end if

	if page = 2 then
	    pic := (sprite4)
	    Sprite.Show (sprite4)
	    Sprite.Hide (sprite5)
	    Sprite.Hide (sprite6)
	end if

	if page = 3 then
	    pic := (sprite5)
	    Sprite.Show (sprite5)
	    Sprite.Hide (sprite4)
	    Sprite.Hide (sprite6)
	end if
	if page = 4 then
	    pic := (sprite6)
	    Sprite.Show (sprite6)
	    Sprite.Hide (sprite5)
	    Sprite.Hide (sprite4)
	end if

	mousewhere (x, y, button)
    end loop

drawfillbox (0, 0, maxx, maxy, 64)
drawfillbox (25, 25, maxx - 25, maxy - 25, 65)
drawfillbox (50, 50, maxx - 50, maxy - 50, 66)
Draw.Text ("THE COLOURING BOOK BACK", 40, 225, font3, black)
end if

%if x >53 and y >53 and x <447 and y <347 then
%Sprite.Hide(sprite3)
%Sprite.Hide (sprite2)
%Sprite.Hide (sprite1)
%end if

