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
var font7 : int := Font.New ("times:100")
var font8:int:=Font.New ("times:50")
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
var chardead:boolean:=false

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
var pict_waterguy1, sprite_waterguy1, sprite_waterfamily, pict_waterfamily, sprite_waterguy2, pict_waterguy2, pict_waterguy3, sprite_waterguy3, pict_waterguy4, sprite_waterguy4 : int
var sprite_windguy2, sprite_windguy1, pict_windguy2, pict_windguy1, sprite_windguy3, pict_windguy3:int
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
var prevenemyhealth1, prevenemyhealth2:int:=5
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
pict_waterguy2 := Pic.FileNew ("Water/guy6.bmp")
sprite_waterguy2 := Sprite.New (pict_waterguy2)
pict_waterfamily := Pic.FileNew ("Water/family.bmp")
sprite_waterfamily := Sprite.New (pict_waterfamily)
pict_waterguy3 := Pic.FileNew ("Water/guy4.bmp")
sprite_waterguy3 := Sprite.New (pict_waterguy3)
pict_waterguy4 := Pic.FileNew ("Water/guy5.bmp")
sprite_waterguy4 := Sprite.New (pict_waterguy4)

pict_darkguy1 := Pic.FileNew ("Dark/guy1.bmp")
sprite_darkguy1 := Sprite.New (pict_darkguy1)
pict_darkguy2 := Pic.FileNew ("Dark/guy2.bmp")
sprite_darkguy2 := Sprite.New (pict_darkguy2)
pict_darkguy3 := Pic.FileNew ("Dark/guy3.bmp")
sprite_darkguy3 := Sprite.New (pict_darkguy3)
pict_darkguy4 := Pic.FileNew ("Dark/guy3.bmp")
sprite_darkguy4 := Sprite.New (pict_darkguy4)

pict_windguy1 := Pic.FileNew ("Earth/guy1.bmp")
sprite_windguy1 := Sprite.New (pict_windguy1)
pict_windguy2 := Pic.FileNew ("Earth/guy2.bmp")
sprite_windguy2 := Sprite.New (pict_windguy2)
pict_windguy3 := Pic.FileNew ("Earth/guy2.bmp")
sprite_windguy3 := Sprite.New (pict_windguy2)
var pict_windboss:int:=Pic.FileNew("Earth/guy3.bmp")
var sprite_windboss:int :=Sprite.New (pict_windboss)

var pict_fireguy1:int:=Pic.FileNew ("Fire/fox.bmp")
var sprite_fireguy1:int :=Sprite.New(pict_fireguy1)
var pict_fireguy2:int:=Pic.FileNew ("Fire/turtle.bmp")
var sprite_fireguy2:int :=Sprite.New(pict_fireguy2)
var pict_fireguy3:int:=Pic.FileNew ("Fire/deer.bmp")
var sprite_fireguy3 :int:=Sprite.New(pict_fireguy3)
var pict_fireboss:int:=Pic.FileNew ("Fire/bear.bmp")
var sprite_fireboss:int :=Sprite.New(pict_fireboss)

var pict_lightguy1:int:=Pic.FileNew ("Light/thief1.bmp") %guy
var sprite_lightguy1:int :=Sprite.New(pict_lightguy1)
var pict_lightguy2:int:=Pic.FileNew ("Light/thief2.bmp") %girl
var sprite_lightguy2:int :=Sprite.New(pict_lightguy2)
var sprite_lightguy3:int :=Sprite.New (pict_lightguy1)
var pict_lightboss:int:=Pic.FileNew ("Light/thief3.bmp")
var sprite_lightboss:int :=Sprite.New(pict_lightboss)

var pict_timeguy1:int:=Pic.FileNew ("Time/guy1.bmp") %girl
var sprite_timeguy1 :int:=Sprite.New(pict_timeguy1)
var pict_timeguy2:int:=Pic.FileNew ("Time/guy2.bmp") %guy
var sprite_timeguy2 :int:=Sprite.New(pict_timeguy2)



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

    for i : attackx .. 800 by 2
	Shooting := true
	attackx := currentx + 100
	Sprite.Show (my_weapon)
	Sprite.SetPosition (my_weapon, i, attacky, true)
	%attackx += i
	delay (1)
	View.Update
	Sprite.Show (currentsprite)
	Sprite.SetPosition (currentsprite, currentx, round (currenty), false)

    end for
    if attackx > attackx+400 then
	Shooting := false
	Sprite.Hide (my_weapon)
	attackx := currentx + 100
    end if
    
    View.Update
end shoot

procedure cut
    Sprite.SetPosition (my_weapon, attackx, attacky, true)
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
	    attackx := currentx + 200
	end if
	if charnumber = 2 then
	    attackx := currentx + 100
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
	Cut := false
    Sprite.Hide (my_weapon)
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
    Sprite.SetPosition (my_weapon, attackx, attacky, true)
	if charnumber = 1 or charnumber = 3 or charnumber = 4 or charnumber = 5 then
	    attackx := currentx + 100
	    shoot
	end if
	if charnumber = 2 or charnumber = 6 then
	    if charnumber = 6 then
		attackx := currentx + 200
	    end if
	    if charnumber = 2 then
		attackx := currentx + 100
	    end if
	    cut
	end if
    end if
end movement

procedure shooterstage0procedure
loop
	    if currentx+60 > enemy1x and currentx+25 < enemy1x + 44 or currentx+60 > enemy2x and currentx+25 < enemy2x + 41 or count=0 then
		chardead:=true
		stage:=3
		currentx:=0
		Sprite.Hide (enemyOne)
		Sprite.Hide(enemyTwo)
		end if
		exit when chardead=true or allDead = true and stagedone1=true or count=0
		
		gameTime := Time.Elapsed
		if (gameTime - initialTime >= 1000) then
		    count -= 1
		    drawfillbox (260, 370, 365, 400, red)
		    Draw.Text ("TIMER:" + intstr (count) + "", 270, 380, font2, white)
		    initialTime := gameTime
		end if
		
		movement

		if enemy1x > currentx then
		    enemy1x -= 2
		end if
		if enemy2x > currentx then
		    enemy2x -= 2
		end if
		if enemy1x < currentx then
		    enemy1x += 2
		end if
		if enemy2x < currentx then
		    enemy2x += 2
		end if
		Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
		Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)

		if Shooting = true and enemy1x> attackx and enemy1x< attackx+300 then
		    enemyhealth1 -= 1
		    Shooting:=false
		    enemy1x += 20
		end if
		if enemyhealth1 = 0 then
		    monsterDead1 := true
		    Sprite.Hide (enemyOne)
		    enemy1x := -300
		    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
		end if

		if Shooting = true and enemy2x> attackx and enemy2x< attackx+300 then
		    enemyhealth2 -= 1
		    Shooting:=false
		    enemy2x += 20
		end if
		if enemyhealth2 = 0 then
		    monsterDead2 := true
		    Sprite.Hide (enemyTwo)
		    enemy2x := -300
		    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
		end if

		if enemyhealth1 < 0 then
		enemyhealth1 := 0
		end if
		if enemyhealth2 < 0 then
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
		end loop 
		
end shooterstage0procedure

procedure shooterstage1procedure
	    loop
	     if currentx+60 > enemy1x and currentx+25 < enemy1x + 44 or currentx+60 > enemy2x and currentx+25 < enemy2x + 41 or currentx+60 > enemy3x and currentx+25 < enemy3x + 41 or count=0 then
		chardead:=true
		stage:=3
		currentx:=0
		Sprite.Hide (enemyOne)
		Sprite.Hide(enemyTwo)
		end if
		exit when chardead=true or allDead = true and stagedone1=true or count=0
		
		gameTime := Time.Elapsed
		if (gameTime - initialTime >= 1000) then
		    count -= 1
		    drawfillbox (260, 370, 365, 400, red)
		    Draw.Text ("TIMER:" + intstr (count) + "", 270, 380, font2, white)
		    initialTime := gameTime
		end if

		movement

		if enemy1x > currentx then
		    enemy1x -= 2
		end if
		if enemy2x > currentx then
		    enemy2x -= 3
		end if
		if enemy1x < currentx then
		    enemy1x += 2
		end if
		if enemy2x < currentx then
		    enemy2x += 3
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
		
		if Shooting = true and enemy3x> attackx and enemy3x< attackx+300 then
		    enemyhealth3 -= 1
		    Shooting:=false
		    enemy3x += 20
		end if
		if enemyhealth3 = 0 then
		    monsterDead3 := true
		    Sprite.Hide (enemyThree)
		    enemy3x := -300
		    Sprite.SetPosition (enemyThree, enemy3x, enemyy, false)
		end if
		
		if Shooting = true and enemy1x> attackx and enemy1x< attackx+300 then
		    enemyhealth1 -= 1
		    Shooting:=false
		    enemy1x += 20
		end if
		if enemyhealth1 = 0 then
		    monsterDead1 := true
		    Sprite.Hide (enemyOne)
		    enemy1x := -300
		    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
		end if

		if Shooting = true and enemy2x> attackx and enemy2x< attackx+300 then
		    enemyhealth2 -= 1
		    Shooting:=false
		    enemy2x += 30
		end if
		if enemyhealth2 = 0 then
		    monsterDead2 := true
		    Sprite.Hide (enemyTwo)
		    enemy2x := -300
		    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
		end if

		if enemyhealth1 < 0 then
		enemyhealth1 := 0
		end if
		if enemyhealth2 < 0 then
		enemyhealth2 := 0
		end if
		if enemyhealth3 < 0 then
		enemyhealth3 := 0
		end if

		if monsterDead2 = true and monsterDead1 = true and monsterDead3=true then
		    allDead := true
		    Sprite.Hide (enemyOne)
		    Sprite.Hide (enemyTwo)
		    Sprite.Hide (enemyThree)
		    monsterDead2 := false
		    monsterDead1 := false
		    monsterDead3 := false
		    stagedone2:=true
		end if

		if currentx = 675 or currentx > 675 then
		    currentx := 0
		end if
		if currentx < 1 then
		    currentx := 0
		    attackx := 100
		end if

	    end loop
	    end shooterstage1procedure



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
    watermagicx := 110
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
if charnumber = 2 then %WORK ON
    Pic.ScreenLoad ("Water/watergameback.bmp", backx, 0, picMerge)

    initialTime := Time.Elapsed
    loop

	% %special attack
	% if chars ('e') then
	% attackx :=currentx +100

	if allDead = true then
	    stage += 1
	    if stage=0 then
	    backx:=0
	    end if
	    if stage = 1 then
		backx := -500
	    end if
	    if stage = 2 then
		backx := -900
	    end if
	    if stage = 3 then
		backx := -100
	    end if
	    Pic.ScreenLoad ("Water/watergameback.bmp", backx, 0, picMerge)
	    allDead := false
	end if

	
	if stage = 0 then
	    enemyOne := sprite_waterguy4
	    enemyTwo := sprite_waterguy3
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)         %guy
	    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)         %girl
	    Sprite.Show (enemyOne)
	    Sprite.Show (enemyTwo)

	    loop
	    
	     if currentx+60 > enemy1x and currentx+25 < enemy1x + 44 or currentx+60 > enemy2x and currentx+25 < enemy2x + 41 then
		Draw.Text ("YOU DIED", 20, 200, font7, black)
		chardead:=true
		end if
		exit when chardead=true or allDead = true and stagedone1=true or count=0
		
		
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

		if Cut = true and enemy1x>attackx-20 and enemy1x<attackx+25 then 
		    enemyhealth1 -= 1
		    enemy1x += 30
		end if
		if enemyhealth1 = 0 then
		    monsterDead1 := true
		    Sprite.Hide (enemyOne)
		    enemy1x := -300
		    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
		end if

		if Cut = true and enemy2x>attackx-20 and enemy2x<attackx+25 then 
		    enemyhealth2 -= 1
		    enemy2x += 30
		end if
		if enemyhealth2 = 0 then
		    monsterDead2 := true
		    Sprite.Hide (enemyTwo)
		    enemy2x := -300
		    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
		end if

		if enemyhealth1 < 0 and enemyhealth2 < 0 then
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
		    attackx := 110
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
	    enemy3x:=300
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
	    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
	    Sprite.SetPosition (enemyThree, enemy3x, enemyy, false)
	    Sprite.Show (enemyOne)
	    Sprite.Show (enemyTwo)
	    Sprite.Show (enemyThree)
	    loop
	     if currentx+60 > enemy1x and currentx+25 < enemy1x + 44 or currentx+60 > enemy2x and currentx+25 < enemy2x + 41 then
		Draw.Text ("YOU DIED", 20, 200, font7, black)
		chardead:=true
		end if
		exit when chardead=true or allDead = true and stagedone1=true or count=0
		
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

	View.Update

	exit when count = 0 or stagedone1=true and stagedone2=true and stagedone3=true and stagedone4=true
    end loop
    
%results

end if

%%%%%%%%%%%%
%DARK STORY%
%%%%%%%%%%%%

if charnumber = 3 then
    Pic.ScreenLoad ("Dark/darkbackgame.bmp", backx, 0, picMerge)
    
	    % %special attack
	% if chars ('e') then
	% attackx :=currentx +100
	

    initialTime := Time.Elapsed
    if chardead=false then
    loop

	if allDead = true then
	    stage += 1
	    delay (500)
	    if stage = 1 then
	    currentx:=0
		backx := -500
	    end if
	    if stage = 2 then
	    currentx:=0
		backx := -900
	    end if
	    Pic.ScreenLoad ("Dark/darkbackgame.bmp", backx, 0, picMerge)
	    allDead := false
	end if

	if stage = 0 then
	    enemyOne := sprite_darkguy2
	    enemyTwo := sprite_darkguy3
	    enemyThree:=sprite_darkguy4
	    enemy1x:=400
	    enemy2x:=500
	    enemy3x:=-300
	    enemyhealth1:=4 
	    enemyhealth2:=5
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)         %guy
	    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)         %girl
	    Sprite.Show (enemyOne)
	    Sprite.Show (enemyTwo)
	    Sprite.Hide (enemyThree)

	    shooterstage0procedure
	end if
	
	if stage = 1 then
	    enemyOne := sprite_darkguy2
	    enemyTwo := sprite_darkguy3
	    enemyThree := sprite_darkguy4
	    enemy1x := 400
	    enemy2x := 500
	    enemy3x:=300
	    enemyhealth1:=5 
	    enemyhealth2:=5
	    enemyhealth3:=3
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
	    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
	    Sprite.SetPosition (enemyThree, enemy3x, enemyy, false)
	    Sprite.Show (enemyOne)
	    Sprite.Show (enemyTwo)
	    Sprite.Show (enemyThree)

	    shooterstage1procedure
	end if       
	
	if stage=2 then %FINAL STAGE
	enemy4x:=450
	enemyhealth4:=10
	Sprite.SetPosition (my_sprite5, enemy4x, enemyy, false)
	Sprite.Show(my_sprite5)
	drawfillbox (0, 0, 675, 80, 0)
	drawbox (0, 0, 675, 80, black)
	drawbox (5, 5, 670, 75, black)
	Draw.Text ("Light Guardian Guy: " + name + ", you have gone too far!", 10, 55, font3, black)
	Draw.Text ("You have killed my precious humans... now prepare to die!", 10, 40, font3, black)
	delay (4000)
	Pic.ScreenLoad ("Dark/darkbackgame.bmp", backx, 0, picMerge)
	Sprite.SetPosition (my_sprite5, enemy4x, enemyy, false)
	Sprite.Show(my_sprite5)
	
	loop
	if currentx+60 > enemy4x and currentx+25 < enemy4x + 44 or count=0 then
		chardead:=true
		stage:=3
		currentx:=0
		Sprite.Hide(my_sprite5)
		end if
		exit when chardead=true or allDead = true and stagedone3=true or count=0
		
		gameTime := Time.Elapsed
		if (gameTime - initialTime >= 1000) then
		    count -= 1
		    drawfillbox (260, 370, 365, 400, red)
		    Draw.Text ("TIMER:" + intstr (count) + "", 270, 380, font2, white)
		    initialTime := gameTime
		end if

		movement
		
		 if enemy4x > currentx then
		    enemy4x -= 4
		end if
		if enemy4x < currentx then
		    enemy4x += 4
		end if
		Sprite.SetPosition (my_sprite5, enemy4x, enemyy, false)
		Sprite.Show(my_sprite5)
		
		if Shooting = true and enemy4x> attackx and enemy4x< attackx+300 then
		    enemyhealth4 -= 1
		    Shooting:=false
		    enemy4x += 30
		end if
		if enemyhealth4 = 0 then
		    monsterDead4 := true
		    stagedone3:=true
		    Sprite.Hide (my_sprite5)
		    enemy4x := -300
		    Sprite.SetPosition (my_sprite5, enemy4x, enemyy, false)
		end if
		if stagedone3=true then
		stage:=4
		Sprite.Hide (my_sprite5)
		end if
		
		exit when chardead=true or monsterDead4=true and stagedone3=true
	 end loop
	    end if
	    
	    if stage =4 then
	    if stagedone3=true and stagedone2=true and stagedone1=true then
	    cls
	    Sprite.Hide (currentsprite)
	    Draw.Text ("CONGRATULATION!", 10, 200, font8, white)
	    Draw.Text ("WANT TO KILL MORE HUMANS? PRESS THE SCREEN TO RESTART", 10, 70, font2, white)
	    drawfillbox (280, 20, 395, 60, black)
	    drawfillbox (285, 25, 390, 55, white)
	    Draw.Text ("EXIT", 320, 35, font2, black)
	    buttonwait ("down", x, y, b, b)
	    if x>280 and y>20 and x<395 and x<60 then
	    cls
	    else 
	    chardead:=false
	    stage:=0
	    count:=121
	    Sprite.Show (currentsprite)
	    Pic.ScreenLoad ("Dark/darkbackgame.bmp", 0, 0, picMerge)
	    stagedone1:=false
	    stagedone2:=false
	    stagedone3:=false
	    end if
	    end if
	    end if
	    
	    if stage=3 then
	    if chardead=true then
	    Draw.Text ("YOU DIED", 20, 200, font7, black)
	    Draw.Text ("PRESS THE SCREEN TO RESTART", 190, 70, font2, black)
	    drawfillbox (280, 20, 395, 60, black)
	    drawfillbox (285, 25, 390, 55, white)
	    Draw.Text ("EXIT", 320, 35, font2, black)
	    buttonwait ("down", x, y, b, b)
	    if x>280 and y>20 and x<395 and x<60 then
	    cls
	    else 
	    chardead:=false
	    stage:=0
	    count:=121
	    Pic.ScreenLoad ("Dark/darkbackgame.bmp", 0, 0, picMerge)
	    stagedone1:=false
	    stagedone2:=false
	    stagedone3:=false
	    end if
	    end if
	    end if
	  
	View.Update

	exit when x>280 and y>20 and x<395 and x<60
	%stagedone1=true and stagedone2=true and stagedone3=true 

    end loop

end if
end if

%%%%%%%%%%%%
%WIND STORY%
%%%%%%%%%%%%
if charnumber = 4 then
	Pic.ScreenLoad ("Earth/windbackgame.bmp", backx, 0, picMerge)

initialTime := Time.Elapsed
    loop

	if allDead = true then
	    stage += 1
	    delay (500)
	    if stage = 1 then
	    currentx:=0
		backx := -500
	    end if
	    if stage = 2 then
	    currentx:=0
		backx := -900
	    end if
	    Pic.ScreenLoad ("Earth/windbackgame.bmp", backx, 0, picMerge)
	    allDead := false
	end if

	if stage = 0 then
	    enemyOne := sprite_windguy1
	    enemyTwo := sprite_windguy2
	    enemyThree:=sprite_windguy3
	    enemy1x:=400
	    enemy2x:=500
	    enemy3x:=-300
	    enemyhealth1:=3 
	    enemyhealth2:=3
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)         %guy
	    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)         %girl
	    Sprite.Show (enemyOne)
	    Sprite.Show (enemyTwo)
	    Sprite.Hide (enemyThree)
	    
	    shooterstage0procedure
	end if

	
	if stage = 1 then
	    enemyOne := sprite_windguy1
	    enemyTwo := sprite_windguy2
	    enemyThree := sprite_windguy3
	    enemy1x := 400
	    enemy2x := 500
	    enemy3x:=300
	    enemyhealth1:=3 
	    enemyhealth2:=3
	    enemyhealth3:=3
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
	    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
	    Sprite.SetPosition (enemyThree, enemy3x, enemyy, false)
	    Sprite.Show (enemyOne)
	    Sprite.Show (enemyTwo)
	    Sprite.Show (enemyThree)
	    
	shooterstage1procedure
	end if
	
	
	if stage=2 then %FINAL STAGE
	enemy4x:=400
	enemyhealth4:=10
	Sprite.Show(sprite_windboss)
	Sprite.SetPosition (sprite_windboss, enemy4x, enemyy, false)
	 drawfillbox (0, 0, 675, 80, 0)
	drawbox (0, 0, 675, 80, black)
	drawbox (5, 5, 670, 75, black)
	Draw.Text ("Hunter: Idiot forest guardian... You have killed all my fellow members of the hunting association!", 10, 55, font3, black)
	Draw.Text ("DIE!", 10, 40, font3, black)
	delay (4000)
	Pic.ScreenLoad ("Earth/windbackgame.bmp", backx, 0, picMerge)

	loop
	if currentx+60 > enemy4x and currentx+25 < enemy4x + 44 or count=0 then
		chardead:=true
		stage:=3
		currentx:=0
		Sprite.Hide(sprite_windboss)
		end if
		exit when chardead=true or allDead = true and stagedone3=true or count=0
		
		gameTime := Time.Elapsed
		if (gameTime - initialTime >= 1000) then
		    count -= 1
		    drawfillbox (260, 370, 365, 400, red)
		    Draw.Text ("TIMER:" + intstr (count) + "", 270, 380, font2, white)
		    initialTime := gameTime
		end if

		movement
		
		 if enemy4x > currentx then
		    enemy4x -= 4
		end if
		if enemy4x < currentx then
		    enemy4x += 4
		end if
		Sprite.SetPosition (sprite_windboss, enemy4x, enemyy, false)
		Sprite.Show(sprite_windboss)
		
		if Shooting = true and enemy4x> attackx and enemy4x< attackx+300 then
		    enemyhealth4 -= 1
		    Shooting:=false
		    enemy4x += 30
		end if
		if enemyhealth4 = 0 then
		    monsterDead4 := true
		    stagedone3:=true
		    Sprite.Hide (sprite_windboss)
		    enemy4x := -300
		    Sprite.SetPosition (sprite_windboss, enemy4x, enemyy, false)
		end if
		if stagedone3=true then
		stage:=4
		Sprite.Hide (sprite_windboss)
		end if
		
		exit when chardead=true or monsterDead4=true and stagedone3=true
	 end loop
	    end if
	    
	    if stage =4 then
	    if stagedone3=true and stagedone2=true and stagedone1=true then
	    cls
	    Sprite.Hide (currentsprite)
	    Draw.Text ("CONGRATULATION!", 10, 200, font8, white)
	    Draw.Text ("WANT TO KILL MORE HUMANS? PRESS THE SCREEN TO RESTART", 10, 70, font2, white)
	    drawfillbox (280, 20, 395, 60, black)
	    drawfillbox (285, 25, 390, 55, white)
	    Draw.Text ("EXIT", 320, 35, font2, black)
	    buttonwait ("down", x, y, b, b)
	    if x>280 and y>20 and x<395 and x<60 then
	    cls
	    else 
	    chardead:=false
	    stage:=0
	    count:=121
	    Sprite.Show (currentsprite)
	    Pic.ScreenLoad ("Earth/windbackgame.bmp", 0, 0, picMerge)
	    stagedone1:=false
	    stagedone2:=false
	    stagedone3:=false
	    end if
	    end if
	    end if
	    
	    if stage=3 then
	    if chardead=true then
	    Draw.Text ("YOU DIED", 20, 200, font7, black)
	    Draw.Text ("PRESS THE SCREEN TO RESTART", 190, 70, font2, black)
	    drawfillbox (280, 20, 395, 60, black)
	    drawfillbox (285, 25, 390, 55, white)
	    Draw.Text ("EXIT", 320, 35, font2, black)
	    buttonwait ("down", x, y, b, b)
	    if x>280 and y>20 and x<395 and x<60 then
	    cls
	    else 
	    chardead:=false
	    stage:=0
	    count:=121
	    Pic.ScreenLoad ("Earth/windbackgame.bmp", 0, 0, picMerge)
	    stagedone1:=false
	    stagedone2:=false
	    stagedone3:=false
	    end if
	    end if
	    end if
	  
	View.Update

	exit when x>280 and y>20 and x<395 and x<60

	 end loop
	    end if
	    
%%%%%%%%%%%%
%LIGHT STORY%
%%%%%%%%%%%%
if charnumber = 5 then
	Pic.ScreenLoad ("Light/lightbackgame.bmp", backx, 0, picMerge)

	initialTime := Time.Elapsed
    loop

	if allDead = true then
	    stage += 1
	    delay (500)
	    if stage = 1 then
	    currentx:=0
		backx := -500
	    end if
	    if stage = 2 then
	    currentx:=0
		backx := -900
	    end if
	    Pic.ScreenLoad ("Earth/windbackgame.bmp", backx, 0, picMerge)
	    allDead := false
	end if

	if stage = 0 then
	    enemyOne := sprite_lightguy1
	    enemyTwo := sprite_lightguy2
	    enemyThree:=sprite_lightguy3
	    enemy1x:=400
	    enemy2x:=500
	    enemy3x:=-300
	    enemyhealth1:=3 
	    enemyhealth2:=3
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)         %guy
	    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)         %girl
	    Sprite.Show (enemyOne)
	    Sprite.Show (enemyTwo)
	    Sprite.Hide (enemyThree)
	    
	    shooterstage0procedure
	end if

	
	if stage = 1 then
	    enemyOne := sprite_lightguy1
	    enemyTwo := sprite_lightguy2
	    enemyThree := sprite_lightguy3
	    enemy1x := 400
	    enemy2x := 500
	    enemy3x:=300
	    enemyhealth1:=3 
	    enemyhealth2:=3
	    enemyhealth3:=3
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
	    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
	    Sprite.SetPosition (enemyThree, enemy3x, enemyy, false)
	    Sprite.Show (enemyOne)
	    Sprite.Show (enemyTwo)
	    Sprite.Show (enemyThree)
	    
	shooterstage1procedure
	end if
	
	%         if stage=2 then %FINAL STAGE
	% enemy4x:=400
	% enemyhealth4:=10
	% Sprite.Show(sprite_windboss)
	% Sprite.SetPosition (sprite_windboss, enemy4x, enemyy, false)
	%  drawfillbox (0, 0, 675, 80, 0)
	% drawbox (0, 0, 675, 80, black)
	% drawbox (5, 5, 670, 75, black)
	% Draw.Text ("Hunter: Idiot forest guardian... You have killed all my fellow members of the hunting association!", 10, 55, font3, black)
	% Draw.Text ("DIE!", 10, 40, font3, black)
	% delay (4000)
	% Pic.ScreenLoad ("Earth/windbackgame.bmp", backx, 0, picMerge)
	% 
	% loop
	% if currentx+60 > enemy4x and currentx+25 < enemy4x + 44 or count=0 then
	%         chardead:=true
	%         stage:=3
	%         currentx:=0
	%         Sprite.Hide(sprite_windboss)
	%         end if
	%         exit when chardead=true or allDead = true and stagedone3=true or count=0
	%         
	%         gameTime := Time.Elapsed
	%         if (gameTime - initialTime >= 1000) then
	%             count -= 1
	%             drawfillbox (260, 370, 365, 400, red)
	%             Draw.Text ("TIMER:" + intstr (count) + "", 270, 380, font2, white)
	%             initialTime := gameTime
	%         end if
	% 
	%         movement
	%         
	%          if enemy4x > currentx then
	%             enemy4x -= 4
	%         end if
	%         if enemy4x < currentx then
	%             enemy4x += 4
	%         end if
	%         Sprite.SetPosition (sprite_windboss, enemy4x, enemyy, false)
	%         Sprite.Show(sprite_windboss)
	%         
	%         if Shooting = true and enemy4x> attackx and enemy4x< attackx+300 then
	%             enemyhealth4 -= 1
	%             Shooting:=false
	%             enemy4x += 30
	%         end if
	%         if enemyhealth4 = 0 then
	%             monsterDead4 := true
	%             stagedone3:=true
	%             Sprite.Hide (sprite_windboss)
	%             enemy4x := -300
	%             Sprite.SetPosition (sprite_windboss, enemy4x, enemyy, false)
	%         end if
	%         if stagedone3=true then
	%         stage:=4
	%         Sprite.Hide (sprite_windboss)
	%         end if
	%         
	%         exit when chardead=true or monsterDead4=true and stagedone3=true
	%  end loop
	%     end if
	
	
	
	if stage =4 then
	    if stagedone3=true and stagedone2=true and stagedone1=true then
	    cls
	    Sprite.Hide (currentsprite)
	    Draw.Text ("CONGRATULATION!", 10, 200, font8, white)
	    Draw.Text ("WANT TO KILL MORE SINNERS? PRESS THE SCREEN TO RESTART", 10, 70, font2, white)
	    drawfillbox (280, 20, 395, 60, black)
	    drawfillbox (285, 25, 390, 55, white)
	    Draw.Text ("EXIT", 320, 35, font2, black)
	    buttonwait ("down", x, y, b, b)
	    if x>280 and y>20 and x<395 and x<60 then
	    cls
	    else 
	    chardead:=false
	    stage:=0
	    count:=121
	    Sprite.Show (currentsprite)
	    Pic.ScreenLoad ("Light/lightbackgame.bmp", 0, 0, picMerge)
	    stagedone1:=false
	    stagedone2:=false
	    stagedone3:=false
	    end if
	    end if
	    end if
	    
	    if stage=3 then
	    if chardead=true then
	    Draw.Text ("YOU DIED", 20, 200, font7, black)
	    Draw.Text ("PRESS THE SCREEN TO RESTART", 190, 70, font2, black)
	    drawfillbox (280, 20, 395, 60, black)
	    drawfillbox (285, 25, 390, 55, white)
	    Draw.Text ("EXIT", 320, 35, font2, black)
	    buttonwait ("down", x, y, b, b)
	    if x>280 and y>20 and x<395 and x<60 then
	    cls
	    else 
	    chardead:=false
	    stage:=0
	    count:=121
	    Pic.ScreenLoad ("Light/lightbackgame.bmp", 0, 0, picMerge)
	    stagedone1:=false
	    stagedone2:=false
	    stagedone3:=false
	    end if
	    end if
	    end if
	  
	View.Update

	exit when x>280 and y>20 and x<395 and x<60

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

