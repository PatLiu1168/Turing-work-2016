%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This program belongs to Patricia%
%Started september 20, 2016      %
%version 2.0                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

var x, y, b : int
var font1 : int := Font.New ("times:24")
var font2 : int := Font.New ("times:14")
var font3 : int := Font.New ("times:11")
var font4 : int := Font.New ("times:8")
var font5 : int := Font.New ("times:10")
var font6 : int := Font.New ("guevara:200")
var charnumber : int := 0
var name : string := ""
var count : int := 120
var chars : array char of boolean
var Shooting, Cut : boolean := false
var initialTime, gameTime : int
var previousx : int:=50

var currentsprite : int
var my_weapon : int
var currentx : int := 50
var currenty : real := 98
var attackx : int
var attacky : int
var backx : int := -50

var darkintronumber : int := 0
var charmovedark1, charmovewater1 : int := 675

var my_pict1, my_pict2, my_pict3, my_pict4, my_pict5, my_pict6 : int
var my_sprite1, my_sprite2, my_sprite3, my_sprite4, my_sprite5, my_sprite6 : int
var pict_darkguy1, sprite_darkguy1 : int
var pict_waterguy1, sprite_waterguy1, sprite_waterfamily, pict_waterfamily, sprite_waterguy2, pict_waterguy2 : int
var darkmagicpic, darkmagicsprite : int
var tornadopic, tornadosprite : int
var earthmagicx, earthmagicy : int
var darkmagicx, darkmagicy : int
var waterslashsprite, waterslashpic, watermagicx, watermagicy : int
var firepunchsprite, firepunchpic, firemagicx, firemagicy : int

setscreen ("graphics: 675, 400")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%These are the possible characters to be%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
my_pict1 := Pic.FileNew ("Sprites/time.bmp")
my_sprite1 := Sprite.New (my_pict1)
my_pict2 := Pic.FileNew ("Sprites/water.bmp")
my_sprite2 := Sprite.New (my_pict2)
my_pict3 := Pic.FileNew ("Sprites/dark.bmp")
my_sprite3 := Sprite.New (my_pict3)
my_pict4 := Pic.FileNew ("Sprites/earth.bmp")
my_sprite4 := Sprite.New (my_pict4)
my_pict5 := Pic.FileNew ("Sprites/light.bmp")
my_sprite5 := Sprite.New (my_pict5)
my_pict6 := Pic.FileNew ("Sprites/fire.bmp")
my_sprite6 := Sprite.New (my_pict6)

%%%%%%%%%%%%%%%%%%%%%%
%NonPlayableCharacter%
%%%%%%%%%%%%%%%%%%%%%%
pict_waterguy1 := Pic.FileNew ("Water/guy3.bmp")
sprite_waterguy1 := Sprite.New (pict_waterguy1)
pict_waterguy2 := Pic.FileNew ("Water/guy4.bmp")
sprite_waterguy2 := Sprite.New (pict_waterguy2)
pict_waterfamily := Pic.FileNew ("Water/family.bmp")
sprite_waterfamily := Sprite.New (pict_waterfamily)


pict_darkguy1 := Pic.FileNew ("Dark/guy1.bmp")
sprite_darkguy1 := Sprite.New (pict_darkguy1)

%%%%%%%%%
%WEAPONS%
%%%%%%%%%
darkmagicpic := Pic.FileNew ("Dark/magic.bmp")
darkmagicsprite := Sprite.New (darkmagicpic)
tornadopic := Pic.FileNew ("Earth/tornado.bmp")
tornadosprite := Sprite.New (tornadopic)
waterslashpic := Pic.FileNew ("Water/slash.bmp")
waterslashsprite := Sprite.New (waterslashpic)
firepunchpic := Pic.FileNew ("Fire/firepunch.bmp")
firepunchsprite := Sprite.New (firepunchpic)

%%%%%%%%%%%%
%PROCEDURES%
%%%%%%%%%%%%
procedure characterchoosing
    drawfillbox (150, 100, 260, 110, 29)
    drawline (275, 120, 275, 175, white)
    drawline (275, 175, 325, 145, white)
    drawline (325, 145, 275, 120, white)
    drawfill (300, 150, white, white)
    drawline (135, 120, 135, 175, white)
    drawline (135, 175, 85, 145, white)
    drawline (85, 145, 135, 120, white)
    drawfill (100, 140, white, white)

    buttonwait ("down", x, y, b, b)

    if x > 275 and x < 325 and y < 175 and y > 120 then
	charnumber += 1
    end if

    if x > 85 and x < 135 and y < 175 and y > 120 then
	charnumber -= 1
    end if
end characterchoosing

procedure nameenter
    Draw.Text ("INSERT NAME: ", 375, 215, font2, white)
    Text.Color (0)
    Text.ColourBack (black)
    locate (13, 48)
    get name : *
end nameenter

procedure jump
    for angle : 0 .. 180 by 5
	%const angle := i * 5
	Input.KeyDown (chars)
	if chars ('a') then
	    currentx -= 3
	end if
	if chars ('d') then
	    currentx += 3
	end if
	currenty := 98
	currenty += 90 * sind (angle)
	Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
	delay (25)
	View.Update
    end for
end jump

procedure shoot
    Input.KeyDown (chars)
    if chars ('a') then
	currentx -= 3
	attackx -= 3
    end if
    if chars ('d') then
	currentx += 3
	attackx += 3
    end if
    if chars ('w') then
	jump
	attackx := currentx + 100
    end if
    for i : attackx .. 900 by 2
	Shooting := true
	Sprite.Show (my_weapon)
	Sprite.SetPosition (my_weapon, i, attacky, true)
	delay (1)
	View.Update
	Sprite.Show (currentsprite)
	Sprite.SetPosition (currentsprite, currentx, round (currenty), false)

    end for
    if attackx > 900 then
	Shooting := false
	Sprite.Hide (my_weapon)
	attackx := currentx + 100
    end if
    View.Update
end shoot

procedure cut
    Input.KeyDown (chars)
    if chars ('a') then
	currentx -= 3
	attackx -= 3
    end if
    if chars ('d') then
	currentx += 3
	attackx += 3
    end if
    if chars ('w') then
	jump
	if charnumber = 6 then
	    attackx := currentx + 130
	end if
	if charnumber = 2 then
	    attackx := currentx + 110
	end if
    end if
    Cut := true
    Sprite.SetPosition (my_weapon, attackx, attacky, true)
    Sprite.Show (my_weapon)
    delay (1)
    View.Update
    Sprite.Show (currentsprite)
    Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
    delay (100)
    Sprite.Hide (my_weapon)
    Cut := false
end cut

procedure tutorial
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("TUTORIAL", 10, 55, font3, black)
    Draw.Text ("Press 'd' to move to the right.", 10, 40, font3, black)
    delay (2000)

    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("TUTORIAL", 10, 55, font3, black)
    Draw.Text ("Press 'a' to move to the left.", 10, 40, font3, black)
    delay (2000)

    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("TUTORIAL", 10, 55, font3, black)
    Draw.Text ("Press 'w' to move to the jump.", 10, 40, font3, black)
    delay (2000)

    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("TUTORIAL", 10, 55, font3, black)
    Draw.Text ("Press the SPACE BAR to attack", 10, 40, font3, black)
    delay (2000)

    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("You have 120 seconds to get through the stage. Good Luck!", 10, 55, font3, black)
    delay (2000)
end tutorial

procedure quicktransition
    drawfillbox (0, 0, maxx, 50, black)
    delay (250)
    drawfillbox (0, 0, maxx, 100, black)
    delay (250)
    drawfillbox (0, 0, maxx, 150, black)
    delay (250)
    drawfillbox (0, 0, maxx, 200, black)
    delay (250)
    drawfillbox (0, 0, maxx, 250, black)
    delay (250)
    drawfillbox (0, 0, maxx, 300, black)
    delay (250)
    drawfillbox (0, 0, maxx, 350, black)
    delay (250)
    drawfillbox (0, 0, maxx, 400, black)
    delay (250)
    drawfillbox (0, 0, maxx, 450, black)
    delay (250)
    drawfillbox (0, 0, maxx, 500, black)
end quicktransition




%%%%%%%%%%%%%%%%%%%
%START THE PROGRAM%
%%%%%%%%%%%%%%%%%%%

% %%%%%%%%%%%%%
% %FRONTSCREEN%
% %%%%%%%%%%%%%
include "SummLoadingScreen.t"


%%%%%%%%%%%%%%%
%PUT YOUR NAME%
%%%%%%%%%%%%%%%
cls
drawfillbox (maxx, 0, 0, maxy, black)
Draw.Text ("PRESS ENTER TO ENTER YOUR NAME. . .", 30, 300, font1, white)

if charnumber = 1 then
    Sprite.Show (my_sprite1)
    Sprite.SetPosition (my_sprite1, 270, 150, false)
    currentsprite := my_sprite1
    drawfilloval (307, 145, 37, 7, gray)
    nameenter
    delay (500)
end if

if charnumber = 2 then
    Sprite.Show (my_sprite2)
    Sprite.SetPosition (my_sprite2, 270, 150, false)
    currentsprite := my_sprite2
    my_weapon := waterslashsprite
    watermagicx := 150
    watermagicy := 140
    attackx := watermagicx
    attacky := watermagicy

    drawfilloval (307, 145, 37, 7, gray)
    nameenter
    delay (500)
end if

if charnumber = 3 then
    Sprite.Show (my_sprite3)
    Sprite.SetPosition (my_sprite3, 270, 150, false)
    currentsprite := my_sprite3
    my_weapon := darkmagicsprite
    darkmagicx := 150
    darkmagicy := 138
    attackx := darkmagicx
    attacky := darkmagicy
    drawfilloval (307, 145, 37, 7, gray)
    nameenter
    delay (500)
end if

if charnumber = 4 then
    Sprite.Show (my_sprite4)
    Sprite.SetPosition (my_sprite4, 250, 150, false)
    currentsprite := my_sprite4
    my_weapon := tornadosprite
    earthmagicx := 200
    earthmagicy := 130
    attackx := earthmagicx
    attacky := earthmagicy
    drawfilloval (307, 145, 37, 7, gray)
    nameenter
    delay (500)
end if

if charnumber = 5 then
    Sprite.Show (my_sprite5)
    Sprite.SetPosition (my_sprite5, 260, 150, false)
    currentsprite := my_sprite5
    drawfilloval (307, 145, 37, 7, gray)
    nameenter
    delay (500)
end if

if charnumber = 6 then
    Sprite.Show (my_sprite6)
    Sprite.SetPosition (my_sprite6, 250, 150, false)
    currentsprite := my_sprite6
    my_weapon := firepunchsprite
    firemagicx := 200
    firemagicy := 130
    attackx := firemagicx
    attacky := firemagicy
    drawfilloval (307, 145, 37, 7, gray)
    nameenter
    delay (500)
end if

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%CHARCTER INTRODUCTION, TUTORIAL AND GAMEPLAY%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

cls
drawfillbox (maxx, 0, 0, maxy, 0)
%Sprite.Hide (my_sprite1)
%Sprite.Hide (my_sprite2)
%Sprite.Hide (my_sprite3)
%Sprite.Hide (my_sprite4)
%Sprite.Hide (my_sprite5)
%Sprite.Hide (my_sprite6)
Sprite.Hide (currentsprite)

%%%%%%%%%%%%%
%TIME STORY%
%%%%%%%%%%%%%
if charnumber = 1 then
    drawfillbox (maxx, 0, 0, maxy, 0)
    Pic.ScreenLoad ("Time/timeback1.bmp", 0, 0, picCopy)
    delay (500)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("In a far a way, snowy town, there lived the young witch of time, " + name + ".", 10, 55, font3, black)
    Draw.Text ("In this town, there also lived normal people who were afraid of witches so " + name + " never revealed ", 10, 40, font3, black)
    Draw.Text ("her TRUE identity.", 10, 25, font3, black)
    delay (8000)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("However, one day, the town finnaly discovered her identity.", 10, 55, font3, black)
    Draw.Text ("Feeling betrayed, afraid and disgusted by " + name + ", they chased her away from the town.", 10, 40, font3, black)

    for i : 2 .. 8
	Pic.ScreenLoad ("Time/timeback" + intstr (i) + ".bmp", 0, 0, picCopy)
	drawfillbox (0, 0, 675, 80, 0)
	drawbox (0, 0, 675, 80, black)
	drawbox (5, 5, 670, 75, black)
	Draw.Text ("However, one day, the town finnaly discovered her identity.", 10, 55, font3, black)
	Draw.Text ("Feeling betrayed, afraid and disgusted by " + name + ", they chased her away from the town.", 10, 40, font3, black)
	delay (250)
    end for
    delay (2000)


end if


%%%%%%%%%%%%%
%WATER STORY%
%%%%%%%%%%%%%
if charnumber = 2 then
    drawfillbox (maxx, 0, 0, maxy, 0)
    Pic.ScreenLoad ("Water/waterback2.bmp", 0, 0, picCopy)
    delay (500)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("Once Upon A Time, there was a Water Goddess named " + name + ".", 10, 55, font3, black)
    Draw.Text ("As she had control over the oceans , she was well loved, feared and in many towns, she was worshipped.", 10, 40, font3, black)
    delay (8000)
    Pic.ScreenLoad ("Water/waterback1.bmp", 0, 0, picCopy)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("However, as time passed, her monuments were abandoned and " + name + " was forgotten. . .", 10, 55, font3, black)
    delay (5000)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("One day, a poor fisherman came to one of her abandoned monuments.", 10, 55, font3, black)
    delay (500)
    loop
	Sprite.SetPosition (sprite_waterguy1, charmovewater1, 98, false)
	Sprite.Show (sprite_waterguy1)
	delay (50)
	charmovewater1 -= 5
	exit when charmovewater1 = 250
    end loop
    delay (2000)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("His family had been kidnapped by pirates and desperate, he begged the forgotten goddess for help.", 10, 55, font3, black)
    delay (100)
    Draw.Text ("Estatic that someone remembered her existence, " + name + " agreed to help the man and save his family. ", 10, 40, font3, black)
    delay (5000)
    Sprite.Hide (sprite_waterguy1)
    cls
    Pic.ScreenLoad ("Water/watergameback.bmp", backx, 0, picCopy)
    Sprite.SetPosition (sprite_waterguy2, 400, 98, false)
    Sprite.Show (sprite_waterguy2)
    Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
    Sprite.Show (currentsprite)
    Sprite.SetPosition (sprite_waterfamily, 490, 98, false)
    Sprite.Show (sprite_waterfamily)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    delay (500)
    Draw.Text ("Pirate Captain: Mwhahaha. Foolish girl.You cannot defeat us.", 10, 55, font3, black)
    delay (2000)
    Sprite.SetPosition (sprite_waterfamily, 490, 98, false)
    delay (200)
    Sprite.SetPosition (sprite_waterfamily, 490, 96, false)
    delay (200)
    Sprite.SetPosition (sprite_waterfamily, 490, 98, false)
    delay (200)
    Sprite.SetPosition (sprite_waterfamily, 490, 96, false)
    delay (500)
    Draw.Text ("Woman: Save us please!", 10, 40, font3, black)
    delay (1000)
    Draw.Text ("Little Unproportianate Kid: Help! Help!", 10, 25, font3, black)
    delay (4000)
    Sprite.Hide (sprite_waterfamily)
    Sprite.Hide (sprite_waterguy2)
    Sprite.Hide (currentsprite)
    quicktransition
    Sprite.Show (currentsprite)
    %TUTORIAL
    Pic.ScreenLoad ("Water/watergameback.bmp", 0, 0, picCopy)
    tutorial
    %START
    loop
	Pic.ScreenLoad ("Water/watergameback.bmp", backx, 0, picMerge)

	Input.KeyDown (chars)
	if chars ('a') then
	    currentx -= 3
	    backx += 2

	end if

	if chars ('d') then
	    currentx += 3
	    backx -= 2
	end if

	if chars ('w') then
	    jump
	end if

	if chars (' ') then
	    attackx := currentx + 110
	    cut
	end if

	% %special attack
	% if chars ('e') then
	% attackx :=currentx +100
	%
	% end if

	Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
	delay (25)

	if currentx < 1 then
	    currentx := 0
	    backx := 0
	    attackx := 100
	end if
	if currentx > 600 then
	    currentx := 0
	    backx := -50
	    attackx := 100
	    Pic.ScreenLoad ("Water/watergameback.bmp", backx, 0, picMerge)
	end if
	View.Update
    end loop

end if

%%%%%%%%%%%%
%DARK STORY%
%%%%%%%%%%%%
if charnumber = 3 then
    drawfillbox (maxx, 0, 0, maxy, 0)
    Pic.ScreenLoad ("Dark/darkback2.bmp", 0, 0, picMerge)
    delay (500)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("Thousands of years ago, the feared demon " + name + " was sealed in a cave by notorious demon hunters.", 10, 55, font3, black)
    Draw.Text ("Helpless in her chains, the demon waited for someone to release her.", 10, 40, font3, black)
    Draw.Text ("As centuries passed, her hatred for humans grew and grew . . .", 10, 25, font3, black)
    delay (10000)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    delay (500)
    %cls
    for i : 1 .. 14
	Pic.ScreenLoad ("Dark/darkback" + intstr (i) + ".bmp", 0, 0, picCopy)
	drawfillbox (0, 0, 675, 80, 0)
	drawbox (0, 0, 675, 80, black)
	drawbox (5, 5, 670, 75, black)
	Draw.Text ("Patiently, she waited for someone to release her. . .", 10, 55, font3, black)
	delay (500)

    end for

    %cls
    Pic.ScreenLoad ("Dark/darkback1.bmp", 0, 0, picMerge)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("Finally, someone came.", 10, 55, font3, black)
    Draw.Text ("This man, like the demon, also had a great hatred for humans. He decided to made a deal with the demon.", 10, 40, font3, black)
    Draw.Text ("In return for freedom, " + name + " would help him destroy the entire human race.", 10, 25, font3, black)
    delay (100)
    Draw.Text ("Readily (and happily), " + name + " accepted the conditions and was released from her prison. ", 10, 10, font3, black)
    delay (750)
    loop
	%drawfillbox (435, 98, 675, 165, 54)
	%Pic.ScreenLoad ("Dark/guy1.bmp", charmove, 98, picMerge)
	Sprite.SetPosition (sprite_darkguy1, charmovedark1, 98, false)
	Sprite.Show (sprite_darkguy1)
	delay (50)
	charmovedark1 -= 5
	exit when charmovedark1 = 435
    end loop
    delay (5000)
    Sprite.Hide (sprite_darkguy1)
    % buttonwait ("down",x, y, b,b)
    %put whatdotcolour(x, y)

    quicktransition

    Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
    Sprite.Show (currentsprite)

    %TUTORIAL PART
    Pic.ScreenLoad ("Dark/darkbackgame.bmp", backx, 0, picMerge)
    drawfillbox (260, 370, 365, 400, red)
    Draw.Text ("TIMER:" + intstr (count) + "", 270, 380, font2, white)
    tutorial
    initialTime := Time.Elapsed
    Pic.ScreenLoad ("Dark/darkbackgame.bmp", backx, 0, picMerge)
    loop
	%Pic.ScreenLoad ("Dark/darkbackgame.bmp", backx, 0, picMerge)
	gameTime := Time.Elapsed
	if (gameTime - initialTime >= 1000) then
	    count -= 1
	    drawfillbox (260, 370, 365, 400, red)
	    Draw.Text ("TIMER:" + intstr (count) + "", 270, 380, font2, white)

	    initialTime := gameTime
	end if
	%Draw.Text (intstr (count), 400, 300, font1, white)
	%count -= 1
previousx:=currentx
	Input.KeyDown (chars)
	if chars ('a') then
	    currentx -= 3
	    previousx := currentx + 3
	    backx += 2

	end if

	if chars ('d') then
	    currentx += 3
	    previousx := currentx - 3
	    backx -= 2
	end if

	if chars ('w') then
	    jump
	end if

	if chars (' ') then
	    attackx := currentx + 100
	    shoot
	end if

	% %special attack
	% if chars ('e') then
	% attackx :=currentx +100
	%
	% end if

	Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
	delay (25)

	if currentx < 1 then
	    currentx := 0
	    backx := 0
	    attackx := 100
	end if
	if currentx > 600 then
	    currentx := 0
	    backx := -50
	    attackx := 100
	    Pic.ScreenLoad ("Dark/darkbackgame1.bmp", backx, 0, picMerge)
	end if

	if previousx not=currentx then
	    Pic.ScreenLoad ("Dark/darkbackgame.bmp", backx, 0, picMerge)
     
	    View.Update
	end if
	View.Update
    end loop


end if

%%%%%%%%%%%%
%WIND STORY%
%%%%%%%%%%%%
if charnumber = 4 then
    drawfillbox (maxx, 0, 0, maxy, 0)
    Pic.ScreenLoad ("Earth/windback.bmp", 0, 0, picMerge)
    delay (500)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("" + name + " was the generous and peace-loving spirit of the forest.", 10, 55, font3, black)
    Draw.Text ("Using his many abilities such as camoflage and flight, he protected his beloved forest and home.", 10, 40, font3, black)
    Draw.Text ("(In fact, can you spot him in the trees despite his camoflage?) ", 10, 25, font3, black)
    delay (10000)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("One day, a hunter decided to shoot one of his sacred deers.", 10, 55, font3, black)
    for i : 2 .. 13
	Pic.ScreenLoad ("Earth/windback" + intstr (i) + ".bmp", 0, 0, picCopy)
	drawfillbox (0, 0, 675, 80, 0)
	drawbox (0, 0, 675, 80, black)
	drawbox (5, 5, 670, 75, black)
	Draw.Text ("One day, a hunter decided to shoot one of his sacred deers.", 10, 55, font3, black)
	Draw.Text ("Enraged of the death of his beloved pet, he vowed to kill all humans as revenge. ", 10, 40, font3, black)
	delay (100)
    end for
    delay (5000)
    quicktransition
    Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
    Sprite.Show (currentsprite)
    %TUTORIAL
    Pic.ScreenLoad ("Earth/windbackgame.bmp", backx, 0, picMerge)
    tutorial

    loop
	Pic.ScreenLoad ("Earth/windbackgame.bmp", backx, 0, picMerge)
	%Draw.Text (intstr (count), 400, 300, font1, white)
	%count -= 1

	Input.KeyDown (chars)
	if chars ('a') then
	    currentx -= 3
	    backx += 2

	end if

	if chars ('d') then
	    currentx += 3
	    backx -= 2
	end if

	if chars ('w') then
	    jump
	end if

	if chars (' ') then
	    attackx := currentx + 100
	    shoot
	end if

	% %special attack
	% if chars ('e') then
	% attackx :=currentx +100
	%
	% end if

	Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
	delay (25)

	if currentx < 1 then
	    currentx := 0
	    backx := 0
	    attackx := 100
	end if
	if currentx > 600 then
	    currentx := 0
	    backx := -50
	    attackx := 100
	    Pic.ScreenLoad ("Earth/earthbackgame.bmp", backx, 0, picMerge)
	end if
	View.Update
    end loop


end if
%%%%%%%%%%%%
%LIGHT STORY%
%%%%%%%%%%%%
if charnumber = 5 then
    drawfillbox (maxx, 0, 0, maxy, 0)
    Pic.ScreenLoad ("Light/lightback1.bmp", 0, 0, picMerge)
    delay (500)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("" + name + " was the creators of humans and took great pride in this creation.", 10, 55, font3, black)
    Draw.Text ("From his heavenly cloud, for thousands of years, " + name + " watched over the humans and took pride in the", 10, 40, font3, black)
    Draw.Text ("the exploits they accomplished. ", 10, 25, font3, black)
    delay (10000)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("Unfortunately, as time passed, the hearts of humans were corrupted by the 7 deadly sins:  pride, greed,", 10, 55, font3, black)
    Draw.Text ("lust, envy, gluttony, wrath, and sloth. ", 10, 40, font3, black)
    Draw.Text ("The once proud " + name + " was forced to watch his creation perform unspeakable crimes.", 10, 25, font3, black)
    delay (10000)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("He witnessed crimes such as a simple robbery...", 10, 55, font3, black)
    delay (1000)
    for i : 1 .. 8
	Pic.ScreenLoad ("Light/lightback" + intstr (i) + ".bmp", 0, 0, picMerge)
	drawfillbox (0, 0, 675, 80, 0)
	drawbox (0, 0, 675, 80, black)
	drawbox (5, 5, 670, 75, black)
	Draw.Text ("He witnessed crimes such as a simple robbery...", 10, 55, font3, black)
	delay (250)
    end for
    Pic.ScreenLoad ("Light/lightback1.bmp", 0, 0, picMerge)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("To crimes such as a vengeful dark demon mass killing everyone.", 10, 55, font3, black)
    delay (1000)
    for i : 9 .. 16
	Pic.ScreenLoad ("Light/lightback" + intstr (i) + ".bmp", 0, 0, picMerge)
	drawfillbox (0, 0, 675, 80, 0)
	drawbox (0, 0, 675, 80, black)
	drawbox (5, 5, 670, 75, black)
	Draw.Text ("To crimes such as a vengeful dark demon mass killing everyone.", 10, 55, font3, black)
	delay (250)
    end for
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("Finally, " + name + " grew tired of the antics of the human race and decided to punish the criminals.", 10, 55, font3, black)
    delay (3000)
    quicktransition
    Sprite.Show (currentsprite)
    Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
    %TUTORIAL
    Pic.ScreenLoad ("Light/lightbackgame.bmp", backx, 0, picMerge)
    tutorial
    loop
	Pic.ScreenLoad ("Light/lightbackgame.bmp", backx, 0, picMerge)
	%Draw.Text (intstr (count), 400, 300, font1, white)
	%count -= 1

	Input.KeyDown (chars)
	if chars ('a') then
	    currentx -= 3
	    backx += 2

	end if

	if chars ('d') then
	    currentx += 3
	    backx -= 2
	end if

	if chars ('w') then
	    jump
	end if

	% if chars (' ') then
	%     attackx := currentx + 130
	%     cut
	% end if

	% %special attack
	% if chars ('e') then
	% attackx :=currentx +100
	%
	% end if

	Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
	delay (25)

	if currentx < 1 then
	    currentx := 0
	    backx := 0
	    attackx := 100
	end if
	if currentx > 600 then
	    currentx := 0
	    backx := -50
	    attackx := 100
	    Pic.ScreenLoad ("Light/lightbackgame.bmp", backx, 0, picMerge)
	end if
	View.Update
    end loop
end if

%%%%%%%%%%%%
%FIRE STORY%
%%%%%%%%%%%%
if charnumber = 6 then
    drawfillbox (maxx, 0, 0, maxy, 0)
    Pic.ScreenLoad ("Fire/fireback.bmp", 0, 0, picMerge)
    delay (500)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("The fire demon king " + name + " was very bored.", 10, 55, font3, black)
    Draw.Text ("He was tired of sitting in his throne and watching volcanoes explode and great balls of fire fall from the sky.", 10, 40, font3, black)
    Draw.Text ("" + name + " wanted to do something interesting.  ", 10, 25, font3, black)
    delay (8000)
    Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
    Sprite.Show (currentsprite)
    Pic.ScreenLoad ("Fire/firebackgame.bmp", backx, 0, picMerge)
    drawfillbox (0, 0, 675, 80, 0)
    drawbox (0, 0, 675, 80, black)
    drawbox (5, 5, 670, 75, black)
    Draw.Text ("Something like ... HUNTING...", 10, 55, font3, black)
    delay (5000)
    Sprite.Hide (currentsprite)
    quicktransition
    Sprite.Show (currentsprite)
    Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
    %TUTORIAL
    Pic.ScreenLoad ("Fire/firebackgame.bmp", backx, 0, picMerge)
    tutorial


    loop
	Pic.ScreenLoad ("Fire/firebackgame.bmp", backx, 0, picMerge)
	%Draw.Text (intstr (count), 400, 300, font1, white)
	%count -= 1

	Input.KeyDown (chars)
	if chars ('a') then
	    currentx -= 3
	    backx += 2

	end if

	if chars ('d') then
	    currentx += 3
	    backx -= 2
	end if

	if chars ('w') then
	    jump
	end if

	if chars (' ') then
	    attackx := currentx + 130
	    cut
	end if

	% %special attack
	% if chars ('e') then
	% attackx :=currentx +100
	%
	% end if

	Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
	delay (25)

	if currentx < 1 then
	    currentx := 0
	    backx := 0
	    attackx := 100
	end if
	if currentx > 600 then
	    currentx := 0
	    backx := -50
	    attackx := 100
	    Pic.ScreenLoad ("Fire/firebackgame.bmp", backx, 0, picMerge)
	end if
	View.Update
    end loop
end if


%procedure sprite
%loop
%mousewhere (x, y, b)
%Sprite.SetPosition (my_sprite6, x, y, true)
%exit when b = 1
%end loop
%end sprite

