%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This program belongs to Patricia%
%Started september 20, 2016      %
%version 4.0                     %
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
%var previousx : int := 50
var stage : int := 0
var allDead : boolean := false
var monsterDead1, monsterDead2, monsterDead3, monsterDead4 : boolean := false
var enemyOne, enemyTwo, enemyThree, enemyFour : int
var stagedone1, stagedone2, stagedone3, stagedone4:boolean:=false

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
var pict_darkguy1, sprite_darkguy1, pict_darkguy2, sprite_darkguy2, pict_darkguy3, sprite_darkguy3, sprite_darkguy4, pict_darkguy4 : int
var pict_waterguy1, sprite_waterguy1, sprite_waterfamily, pict_waterfamily, sprite_waterguy2, pict_waterguy2 : int
var darkmagicpic, darkmagicsprite : int
var tornadopic, tornadosprite : int
var earthmagicx, earthmagicy : int
var darkmagicx, darkmagicy : int
var lightmagicy, lightmagicx:int

var enemy1x : int := 400
var enemy2x : int := 600
var enemy3x : int := 300
var enemy4x : int := 450

var enemyhealth1, enemyhealth2, enemyhealth3, enemyhealth4 : int := 3
var enemyy : int := 98
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
pict_darkguy2 := Pic.FileNew ("Dark/guy2.bmp")
sprite_darkguy2 := Sprite.New (pict_darkguy2)
pict_darkguy3 := Pic.FileNew ("Dark/guy3.bmp")
sprite_darkguy3 := Sprite.New (pict_darkguy3)
pict_darkguy4 := Pic.FileNew ("Dark/guy3.bmp")
sprite_darkguy4 := Sprite.New (pict_darkguy4)

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
var lightblastpic:int :=Pic.FileNew("Light/lightblast.bmp")
var lightblastsprite :int:=Sprite.New (lightblastpic)

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

    %if attackx < 300 then
    for i : 1 .. 500 by 2
	Shooting := true
	%attackx := currentx + 100
	Sprite.Show (my_weapon)
	Sprite.SetPosition (my_weapon, attackx, attacky, true)
	attackx += i
	delay (1)
	View.Update
	Sprite.Show (currentsprite)
	Sprite.SetPosition (currentsprite, currentx, round (currenty), false)

    end for
    if attackx > attackx + 500 then
	Shooting := false
	Sprite.Hide (my_weapon)
	attackx := currentx + 100
    end if
    %end if

    % %if attackx > 300 then
    % for i : attackx .. -200 by 2 (var attackx:=i)
    %     Shooting := true
    %     Sprite.Show (my_weapon)
    %     Sprite.SetPosition (my_weapon, i, attacky, true)
    %     delay (1)
    %     View.Update
    %     Sprite.Show (currentsprite)
    %     Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
    %
    % end for
    % if attackx > -200 then
    %     Shooting := false
    %     Sprite.Hide (my_weapon)
    %     attackx := currentx - 100
    % end if
    % %end if
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

procedure movement
    Input.KeyDown (chars)

    if chars ('a') then
	currentx -= 3
	attackx -= 3
	%backx += 2

    end if

    if chars ('d') then
	currentx += 3
	attackx += 3
	%backx -= 2
    end if

    if chars ('w') then
	jump
	 if charnumber = 1 or charnumber = 3 or charnumber = 4 or charnumber = 5 then
	 attackx := currentx + 100
	 end if
	 if charnumber = 6 then
		attackx := currentx + 130
	 end if
	 if charnumber = 2 then
	 attackx := currentx + 110
	 end if
    end if
    Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
    delay (25)
    if chars (' ') then
	if charnumber = 1 or charnumber = 3 or charnumber = 4 or charnumber = 5 then
	    shoot
	    attackx := currentx + 100
	end if
	if charnumber = 2 or charnumber = 6 then
	    cut
	    if charnumber = 6 then
		attackx := currentx + 130
	    end if
	    if charnumber = 2 then
		attackx := currentx + 110
	    end if
	end if
    end if
end movement



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
    darkmagicx := currentx+100
    darkmagicy := 130
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
    my_weapon:=lightblastsprite
    lightmagicx:=currentx+100
    lightmagicy:=130
    attackx:=lightmagicx
    attacky:=lightmagicy
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

%include "Tutorialsandstories.t"


%%%%%%%%%%%%%%%%
%PROGRAM ACTION%
%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%
%TIME STORY%
%%%%%%%%%%%%%
if charnumber = 1 then
    %Keys
end if


%%%%%%%%%%%%%
%WATER STORY%
%%%%%%%%%%%%%

%START
if charnumber = 2 then
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

%%%%%% WORK IN PROGRESS
if charnumber = 3 then
    Pic.ScreenLoad ("Dark/darkbackgame.bmp", backx, 0, picMerge)

    initialTime := Time.Elapsed
    loop
	gameTime := Time.Elapsed
	if (gameTime - initialTime >= 1000) then
	    count -= 1
	    drawfillbox (260, 370, 365, 400, red)
	    Draw.Text ("TIMER:" + intstr (count) + "", 270, 380, font2, white)

	    initialTime := gameTime
	end if

	% %special attack
	% if chars ('e') then
	% attackx :=currentx +100

	if allDead = true then
	    stage += 1
	    if stage = 1 then
		backx := -500
	    end if
	    if stage = 2 then
		backx := -900
	    end if
	    if stage = 3 then
		backx := -100
	    end if
	    Pic.ScreenLoad ("Dark/darkbackgame.bmp", backx, 0, picMerge)
	    allDead := false
	end if

	if stage = 0 then
	    enemyOne := sprite_darkguy2
	    enemyTwo := sprite_darkguy3
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)         %guy
	    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)         %girl
	    Sprite.Show (enemyOne)
	    Sprite.Show (enemyTwo)

	    loop
		gameTime := Time.Elapsed
		if (gameTime - initialTime >= 1000) then
		    count -= 1
		    drawfillbox (260, 370, 365, 400, red)
		    Draw.Text ("TIMER:" + intstr (count) + "", 270, 380, font2, white)
		    initialTime := gameTime
		end if

		movement

		if enemy1x > currentx then
		    enemy1x -= 1
		end if
		if enemy2x > currentx then
		    enemy2x -= 1
		end if
		if enemy1x < currentx then
		    enemy1x += 1
		end if
		if enemy2x < currentx then
		    enemy2x += 1
		end if
		Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
		Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)


		if Shooting = true and attackx = enemy1x then %> enemy1x and attackx < enemy1x + 45 then
		    enemyhealth1 -= 1
		    enemy1x += 20
		    %put enemyhealth1
		end if
		if enemyhealth1 = 0 then
		    monsterDead1 := true
		    Sprite.Hide (enemyOne)
		    enemy1x := -300
		    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
		end if

		if Shooting = true and attackx = enemy2x then %and attackx < enemy2x + 42 then
		    enemyhealth2 -= 1
		    enemy2x += 20
		    %put enemyhealth2
		end if
		if enemyhealth2 = 0 then
		    monsterDead2 := true
		    Sprite.Hide (enemyTwo)
		    enemy2x := -300
		    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
		end if

		if enemyhealth1 < 0 or enemyhealth2 < 0 then
		    enemyhealth1 := 0
		    enemyhealth2 := 0
		end if

		if monsterDead2 = true and monsterDead1 = true then
		    allDead := true
		    Sprite.Hide (enemyOne)
		    Sprite.Hide (enemyTwo)
		    monsterDead2 := false
		    monsterDead1 := false
		    stagedone1:=true
		end if

		if currentx = 675 or currentx > 675 then
		    currentx := 0
		end if
		if currentx < 1 then
		    currentx := 0
		    attackx := 100
		end if

		exit when allDead = true and stagedone1=true or count=0 %or currentx > enemy1x and currentx < enemy1x + 44 or currentx + 75 > enemy1x and currentx + 75 < enemy1x + 44 or currentx > enemy2x and currentx < enemy1x + 42 or currentx + 75 > enemy2x and currentx + 75 < enemy2x + 42
		end loop 
	end if

	if stage = 1 then
	    enemyOne := sprite_darkguy2
	    enemyTwo := sprite_darkguy3
	    enemyThree := sprite_darkguy4
	    enemy1x := 400
	    enemy2x := 500
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
	    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
	    Sprite.SetPosition (enemyThree, enemy3x, enemyy, false)
	    Sprite.Show (enemyOne)
	    Sprite.Show (enemyTwo)
	    Sprite.Show (enemyThree)
	    loop
		gameTime := Time.Elapsed
		if (gameTime - initialTime >= 1000) then
		    count -= 1
		    drawfillbox (260, 370, 365, 400, red)
		    Draw.Text ("TIMER:" + intstr (count) + "", 270, 380, font2, white)
		    initialTime := gameTime
		end if

		movement

		if enemy1x > currentx then
		    enemy1x -= 1
		end if
		if enemy2x > currentx then
		    enemy2x -= 1
		end if
		if enemy1x < currentx then
		    enemy1x += 1
		end if
		if enemy2x < currentx then
		    enemy2x += 1
		end if
		if enemy3x > currentx then
		    enemy3x -= 1
		end if
		if enemy3x < currentx then
		    enemy3x += 1
		end if
		Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
		Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
		Sprite.SetPosition (enemyThree, enemy3x, enemyy, false)
		exit when count=0 
	    end loop
	end if

	% if currentx > enemy1x and currentx < enemy1x + 44 or currentx + 70 > enemy1x and currentx + 75 < enemy1x + 44 or currentx > enemy2x and currentx < enemy1x + 42 or currentx + 70 > enemy2x
	%         and
	%         currentx + 75 < enemy2x + 42 then
	%     cls             %DEATH
	%     Sprite.Hide (currentsprite)
	%     Sprite.Hide (enemyOne)
	%     Sprite.Hide (enemyTwo)
	%     % Sprite.Hide (enemyThree)
	%     % Sprite.Hide (enemyFour)
	%     %Draw.Text ("YOU DIED"
	%
	% end if

	View.Update

	exit when count = 0 or stagedone1=true and stagedone2=true and stagedone3=true and stagedone4=true
	%or currentx+10 > enemy1x and currentx < enemy1x + 44 or currentx + 65 > enemy1x and currentx + 75 < enemy1x + 44 or currentx > enemy2x and currentx+5 < enemy1x + 42 or currentx + 65 > enemy2x and currentx + 75 < enemy2x + 42
    end loop
    
%results

end if

%%%%%%%%%%%%
%WIND STORY%
%%%%%%%%%%%%
if charnumber = 4 then
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
	    Pic.ScreenLoad ("Light/lightbackgame.bmp", backx, 0, picMerge)
	end if
	View.Update
    end loop
end if

%%%%%%%%%%%%
%FIRE STORY%
%%%%%%%%%%%%

if charnumber = 6 then

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

