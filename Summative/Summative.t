%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This program belongs to Patricia Liu%
%Started september 20, 2016          %
%version 6.0                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

View.Set ("title: Name")
var x, y, b : int
var font1 : int := Font.New ("times:24")
var font2 : int := Font.New ("times:14")
var font3 : int := Font.New ("times:11")
var font4 : int := Font.New ("times:8")
var font5 : int := Font.New ("times:10")
var font6 : int := Font.New ("times:160")
var font7 : int := Font.New ("times:100")
var font8 : int := Font.New ("times:50")
var charnumber : int := 0
var name : string := ""
var count : int := 120
var chars : array char of boolean
var Shooting, Cut : boolean := false
var initialTime, gameTime : int
var stage : int := 0
var allDead : boolean := false
var monsterDead1, monsterDead2, monsterDead3, monsterDead4 : boolean := false
var enemyOne, enemyTwo, enemyThree, enemyFour : int
var stagedone1, stagedone2, stagedone3, stagedone4 : boolean := false
var chardead : boolean := false
var healthbarx1, healthbarx2, healthbarx3, bossbarx : int := 620

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
var sprite_windguy2, sprite_windguy1, pict_windguy2, pict_windguy1, sprite_windguy3, pict_windguy3 : int
var darkmagicpic, darkmagicsprite : int
var tornadopic, tornadosprite : int
var earthmagicx, earthmagicy : int
var darkmagicx, darkmagicy : int
var lightmagicy, lightmagicx : int
var timemagicx, timemagicy : int

var enemy1x : int := 400
var enemy2x : int := 600
var enemy3x : int := 300
var enemy4x : int := 450

var enemyhealth1, enemyhealth2, enemyhealth3, enemyhealth4 : int := 0
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
var sprite_waterguy5 : int := Sprite.New (pict_waterguy4)

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
var pict_windboss : int := Pic.FileNew ("Earth/guy3.bmp")
var sprite_windboss : int := Sprite.New (pict_windboss)

var pict_fireguy1 : int := Pic.FileNew ("Fire/fox.bmp")
var sprite_fireguy1 : int := Sprite.New (pict_fireguy1)
var pict_fireguy2 : int := Pic.FileNew ("Fire/turtle.bmp")
var sprite_fireguy2 : int := Sprite.New (pict_fireguy2)
var pict_fireguy3 : int := Pic.FileNew ("Fire/turkey.bmp")
var sprite_fireguy3 : int := Sprite.New (pict_fireguy3)
var pict_fireboss : int := Pic.FileNew ("Fire/bear.bmp")
var sprite_fireboss : int := Sprite.New (pict_fireboss)

var pict_lightguy1 : int := Pic.FileNew ("Light/thief1.bmp") %guy
var sprite_lightguy1 : int := Sprite.New (pict_lightguy1)
var pict_lightguy2 : int := Pic.FileNew ("Light/thief2.bmp") %girl
var sprite_lightguy2 : int := Sprite.New (pict_lightguy2)
var pict_lightguy3 : int := Pic.FileNew ("Light/thief3.bmp")
var sprite_lightguy3 : int := Sprite.New (pict_lightguy3) %guy
var sprite_lightboss : int := Sprite.New (my_pict3)

var pict_timeguy1 : int := Pic.FileNew ("Time/guy1.bmp") %girl
var sprite_timeguy1 : int := Sprite.New (pict_timeguy1)
var pict_timeguy2 : int := Pic.FileNew ("Time/guy2.bmp") %guy
var sprite_timeguy2 : int := Sprite.New (pict_timeguy2)
var pict_timeguy3 : int := Pic.FileNew ("Time/guy2.bmp") %guy
var sprite_timeguy3 : int := Sprite.New (pict_timeguy3)
var pict_timeboss : int := Pic.FileNew ("Time/fatmayor.bmp") %guy
var sprite_timeboss : int := Sprite.New (pict_timeboss)

%%%%%%%%%
%WEAPONS%
%%%%%%%%%
darkmagicpic := Pic.FileNew ("Dark/magic.bmp")
darkmagicsprite := Sprite.New (darkmagicpic)
tornadopic := Pic.FileNew ("Earth/tornado.bmp")
tornadosprite := Sprite.New (tornadopic)
waterslashpic := Pic.FileNew ("Water/slash.bmp")
waterslashsprite := Sprite.New (waterslashpic)
var waterwavespic : int := Pic.FileNew ("Water/wave.bmp")
var waterwavesprite : int := Sprite.New (waterwavespic)
firepunchpic := Pic.FileNew ("Fire/firepunch.bmp")
firepunchsprite := Sprite.New (firepunchpic)
var lightblastpic : int := Pic.FileNew ("Light/lightblast.bmp")
var lightblastsprite : int := Sprite.New (lightblastpic)
var timemagicpic : int := Pic.FileNew ("Time/clockwork.bmp")
var timemagicsprite : int := Sprite.New (timemagicpic)

%Health Bars 0-0%
var healthbar1pic : int := Pic.FileNew ("Pictures/enemyhealth1.bmp")
var healthbar1sprite : int := Sprite.New (healthbar1pic)
var healthbar2pic : int := Pic.FileNew ("Pictures/enemyhealth2.bmp")
var healthbar2sprite : int := Sprite.New (healthbar2pic)
var healthbar3pic : int := Pic.FileNew ("Pictures/enemyhealth3.bmp")
var healthbar3sprite : int := Sprite.New (healthbar3pic)
var bosshealthbarpic : int := Pic.FileNew ("Pictures/bosshealth.bmp")
var bosshealthbarsprite : int := Sprite.New (bosshealthbarpic)

%%%%%%%%%%%%
%PROCEDURES%
%%%%%%%%%%%%
include "IncludedFiles/Procedures.t"

%%%%%%%%%%%%%%%%%%%
%START THE PROGRAM%
%%%%%%%%%%%%%%%%%%%
Music.PlayFileLoop ("song1.MP3")
%%%%%%%%%%%%%
%FRONTSCREEN%
%%%%%%%%%%%%%
include "IncludedFiles/SummLoadingScreen.t"

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
    my_weapon := timemagicsprite
    timemagicx := currentx + 100
    timemagicy := 120
    attackx := timemagicx
    attacky := timemagicy
    drawfilloval (307, 145, 37, 7, gray)
    nameenter
    delay (500)
end if

if charnumber = 2 then
    Sprite.Show (my_sprite2)
    Sprite.SetPosition (my_sprite2, 270, 150, false)
    currentsprite := my_sprite2
    my_weapon := waterwavesprite
    %waterslashsprite
    watermagicx := currentx + 110
    watermagicy := 150
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
    darkmagicx := currentx + 100
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
    my_weapon := lightblastsprite
    lightmagicx := currentx + 100
    lightmagicy := 130
    attackx := lightmagicx
    attacky := lightmagicy
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

%include "IncludedFiles/Tutorialsandstories.t"


%%%%%%%%%%%%%%%%
%PROGRAM ACTION%
%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%
%TIME STORY%
%%%%%%%%%%%%%
if charnumber = 1 then
    Pic.ScreenLoad ("Time/timebackgame.bmp", backx, 0, picCopy)

    initialTime := Time.Elapsed
    if chardead = false then
	loop

	    if allDead = true then
		stage += 1
		delay (500)
		if stage = 1 then
		    currentx := 0
		    backx := -500
		end if
		if stage = 2 then
		    currentx := 0
		    backx := -900
		end if
		Pic.ScreenLoad ("Time/timebackgame.bmp", backx, 0, picCopy)
		allDead := false
	    end if

	    if stage = 0 then
		enemyOne := sprite_timeguy1
		enemyTwo := sprite_timeguy2
		enemyThree := sprite_timeguy3
		enemy1x := 400
		enemy2x := 500
		enemy3x := -300
		enemyhealth1 := 4
		enemyhealth2 := 5
		Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
		Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
		Sprite.Show (enemyOne)
		Sprite.Show (enemyTwo)
		Sprite.Hide (enemyThree)

		shooterstage0procedure
	    end if

	    if stage = 1 then
		enemyOne := sprite_timeguy1
		enemyTwo := sprite_timeguy2
		enemyThree := sprite_timeguy3
		enemy1x := 400
		enemy2x := 500
		enemy3x := 300
		enemyhealth1 := 5
		enemyhealth2 := 5
		enemyhealth3 := 4
		Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
		Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
		Sprite.SetPosition (enemyThree, enemy3x, enemyy, false)
		Sprite.Show (enemyOne)
		Sprite.Show (enemyTwo)
		Sprite.Show (enemyThree)

		shooterstage1procedure
	    end if

	    if stage = 2 then %FINAL STAGE
		bossbarx := 620
		Sprite.SetPosition (bosshealthbarsprite, 475, 360, false)
		Sprite.Hide (bosshealthbarsprite)
		Sprite.Hide (healthbar1sprite)
		Sprite.Hide (healthbar2sprite)
		Sprite.Hide (healthbar3sprite)
		enemy4x := 450
		enemyhealth4 := 10
		Pic.ScreenLoad ("Time/timebackgame.bmp", backx, 0, picMerge)
		Sprite.SetPosition (sprite_timeboss, enemy4x, enemyy, false)
		Sprite.Show (sprite_timeboss)
		drawfillbox (0, 0, 675, 80, 0)
		drawbox (0, 0, 675, 80, black)
		drawbox (5, 5, 670, 75, black)
		Draw.Text ("Chubby Mayor: AHHHH! Help me! There is a psychotic witch killing us all! NOOO!", 10, 55, font3, black)
		Draw.Text ("" + name + ": ... He's annoying... -_-", 10, 40, font3, black)
		delay (4000)
		Pic.ScreenLoad ("Time/timebackgame.bmp", backx, 0, picMerge)
		Sprite.SetPosition (sprite_timeboss, enemy4x, enemyy, false)
		Sprite.Show (sprite_timeboss)
		drawfillbox (480, 375, bossbarx, 385, green)
		Sprite.Show (bosshealthbarsprite)

		loop
		    if currentx + 60 > enemy4x and currentx + 25 < enemy4x + 44 or count = 0 then
			chardead := true
			stage := 3
			currentx := 0
			Sprite.Hide (sprite_timeboss)
		    end if
		    exit when chardead = true or allDead = true and stagedone3 = true or count = 0

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
		    Sprite.SetPosition (sprite_timeboss, enemy4x, enemyy, false)
		    Sprite.Show (sprite_timeboss)

		    if Shooting = true and enemy4x > attackx and enemy4x < attackx + 300 then
			enemyhealth4 -= 1
			Shooting := false
			enemy4x += 30
			bossbarx -= 14
			drawfillbox (480, 375, 620, 385, white)
			drawfillbox (480, 375, bossbarx, 385, green)
		    end if
		    if enemyhealth4 = 0 then
			monsterDead4 := true
			stagedone3 := true
			Sprite.Hide (sprite_timeboss)
			enemy4x := -300
			Sprite.SetPosition (sprite_timeboss, enemy4x, enemyy, false)
		    end if
		    if stagedone3 = true then
			stage := 4
			Sprite.Hide (sprite_timeboss)
		    end if
		    if currentx = 675 or currentx > 675 then
			currentx := 0
		    end if
		    if currentx < 1 then
			currentx := 0
			attackx := 100
		    end if

		    exit when chardead = true or monsterDead4 = true and stagedone3 = true
		end loop
	    end if
	    if stage = 4 then
		if stagedone3 = true and stagedone2 = true and stagedone1 = true then
		    cls
		    Sprite.Hide (bosshealthbarsprite)
		    Sprite.Hide (healthbar1sprite)
		    Sprite.Hide (healthbar2sprite)
		    Sprite.Hide (healthbar3sprite)
		    Sprite.Hide (currentsprite)
		    Draw.Text ("CONGRATULATION!", 20, 200, font8, white)
		    Draw.Text ("WANT TO KILL MORE HUMANS? PRESS THE SCREEN TO RESTART", 25, 70, font2, white)
		    %drawfillbox (280, 20, 395, 60, black)
		    %drawfillbox (285, 25, 390, 55, white)
		    %Draw.Text ("EXIT", 320, 35, font2, black)
		    buttonwait ("down", x, y, b, b)
		    if x > 280 and y > 20 and x < 395 and x < 60 then
			cls
		    else
			chardead := false
			stage := 0
			count := 121
			Sprite.Show (currentsprite)
			Pic.ScreenLoad ("Time/timebackgame.bmp", 0, 0, picCopy)
			stagedone1 := false
			stagedone2 := false
			stagedone3 := false
		    end if
		end if
	    end if

	    if stage = 3 then
		if chardead = true then
		    Sprite.Hide (bosshealthbarsprite)
		    Sprite.Hide (healthbar1sprite)
		    Sprite.Hide (healthbar2sprite)
		    Sprite.Hide (healthbar3sprite)
		    Draw.Text ("YOU DIED", 20, 200, font7, black)
		    Draw.Text ("PRESS THE SCREEN TO RESTART", 190, 70, font2, black)
		    %drawfillbox (280, 20, 395, 60, black)
		    %drawfillbox (285, 25, 390, 55, white)
		    %Draw.Text ("EXIT", 320, 35, font2, black)
		    buttonwait ("down", x, y, b, b)
		    if x > 280 and y > 20 and x < 395 and x < 60 then
			cls
		    else
			chardead := false
			stage := 0
			count := 121
			Pic.ScreenLoad ("Time/timebackgame.bmp", 0, 0, picCopy)
			stagedone1 := false
			stagedone2 := false
			stagedone3 := false
		    end if
		end if
	    end if
	    View.Update
	end loop
    end if
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
	    delay (500)
	    if stage = 1 then
		currentx := 0
		backx := -500
	    end if
	    if stage = 2 then
		currentx := 0
		backx := -900
	    end if
	    Pic.ScreenLoad ("Water/waterbackgame.bmp", backx, 0, picCopy)
	    allDead := false
	end if


	if stage = 0 then
	    enemyOne := sprite_waterguy4
	    enemyTwo := sprite_waterguy3
	    enemyThree := sprite_waterguy5
	    enemy1x := 400
	    enemy2x := 500
	    enemy3x := -300
	    enemyhealth1 := 4
	    enemyhealth2 := 5
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)         %guy
	    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)         %girl
	    Sprite.Show (enemyOne)
	    Sprite.Show (enemyTwo)
	    Sprite.Hide (enemyThree)

	    shooterstage0procedure
	end if

	if stage = 1 then
	    enemyOne := sprite_waterguy3
	    enemyTwo := sprite_waterguy4
	    enemyThree := sprite_waterguy5
	    enemy1x := 400
	    enemy2x := 500
	    enemy3x := 300
	    enemyhealth1 := 5
	    enemyhealth2 := 5
	    enemyhealth3 := 4
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
	    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
	    Sprite.SetPosition (enemyThree, enemy3x, enemyy, false)
	    Sprite.Show (enemyOne)
	    Sprite.Show (enemyTwo)
	    Sprite.Show (enemyThree)

	    shooterstage1procedure
	end if

	if stage = 2 then %FINAL STAGE
	    bossbarx := 620
	    Sprite.SetPosition (bosshealthbarsprite, 475, 360, false)
	    Sprite.Hide (bosshealthbarsprite)
	    Sprite.Hide (healthbar1sprite)
	    Sprite.Hide (healthbar2sprite)
	    Sprite.Hide (healthbar3sprite)
	    enemy4x := 450
	    enemyhealth4 := 10
	    Pic.ScreenLoad ("Water/watergameback.bmp", backx, 0, picMerge)
	    Sprite.SetPosition (sprite_waterguy2, enemy4x, enemyy, false)
	    Sprite.Show (sprite_waterguy2)
	    drawfillbox (0, 0, 675, 80, 0)
	    drawbox (0, 0, 675, 80, black)
	    drawbox (5, 5, 670, 75, black)
	    Draw.Text ("Pirate Captain: Oh, It's you again. Are you here for the boy and his mother? ", 10, 55, font3, black)
	    Draw.Text ("You will have to defeat me if you want them. En Garde!", 10, 40, font3, black)
	    delay (4000)
	    Pic.ScreenLoad ("Water/watergameback.bmp", backx, 0, picMerge)
	    Sprite.SetPosition (sprite_waterguy2, enemy4x, enemyy, false)
	    Sprite.Show (sprite_waterguy2)
	    drawfillbox (480, 375, bossbarx, 385, green)
	    Sprite.Show (bosshealthbarsprite)

	    loop
		if currentx + 60 > enemy4x and currentx + 25 < enemy4x + 44 or count = 0 then
		    chardead := true
		    stage := 3
		    currentx := 0
		    Sprite.Hide (sprite_waterguy2)
		end if
		exit when chardead = true or allDead = true and stagedone3 = true or count = 0

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
		Sprite.SetPosition (sprite_waterguy2, enemy4x, enemyy, false)
		Sprite.Show (sprite_waterguy2)

		if Shooting = true and enemy4x > attackx and enemy4x < attackx + 300 then
		    enemyhealth4 -= 1
		    Shooting := false
		    enemy4x += 30
		    bossbarx -= 14
		    drawfillbox (480, 375, 620, 385, white)
		    drawfillbox (480, 375, bossbarx, 385, green)
		end if
		if enemyhealth4 = 0 then
		    monsterDead4 := true
		    stagedone3 := true
		    Sprite.Hide (sprite_waterguy2)
		    enemy4x := -300
		    Sprite.SetPosition (sprite_waterguy2, enemy4x, enemyy, false)
		end if
		if stagedone3 = true then
		    stage := 4
		    Sprite.Hide (sprite_waterguy2)
		end if
		if currentx = 675 or currentx > 675 then
		    currentx := 0
		end if
		if currentx < 1 then
		    currentx := 0
		    attackx := 100
		end if

		exit when chardead = true or monsterDead4 = true and stagedone3 = true
	    end loop
	end if

	if stage = 4 then
	    if stagedone3 = true and stagedone2 = true and stagedone1 = true then
		Sprite.Hide (bosshealthbarsprite)
		Sprite.Hide (healthbar1sprite)
		Sprite.Hide (healthbar2sprite)
		Sprite.Hide (healthbar3sprite)
		cls
		Sprite.Hide (currentsprite)
		Draw.Text ("CONGRATULATION!", 20, 200, font8, white)
		Draw.Text ("WANT TO KILL MORE PIRATES? PRESS THE SCREEN TO RESTART", 25, 70, font2, white)
		%drawfillbox (280, 20, 395, 60, black)
		%drawfillbox (285, 25, 390, 55, white)
		%Draw.Text ("EXIT", 320, 35, font2, black)
		buttonwait ("down", x, y, b, b)
		if x > 280 and y > 20 and x < 395 and x < 60 then
		    cls
		else
		    chardead := false
		    stage := 0
		    count := 121
		    Sprite.Show (currentsprite)
		    Pic.ScreenLoad ("Water/waterbackgame.bmp", 0, 0, picMerge)
		    stagedone1 := false
		    stagedone2 := false
		    stagedone3 := false
		end if
	    end if
	end if

	if stage = 3 then
	    if chardead = true then
		Sprite.Hide (bosshealthbarsprite)
		Sprite.Hide (healthbar1sprite)
		Sprite.Hide (healthbar2sprite)
		Sprite.Hide (healthbar3sprite)
		Draw.Text ("YOU DIED", 20, 200, font7, black)
		Draw.Text ("PRESS THE SCREEN TO RESTART", 190, 70, font2, black)
		%drawfillbox (280, 20, 395, 60, black)
		%drawfillbox (285, 25, 390, 55, white)
		%Draw.Text ("EXIT", 320, 35, font2, black)
		buttonwait ("down", x, y, b, b)
		if x > 280 and y > 20 and x < 395 and x < 60 then
		    cls
		else
		    chardead := false
		    stage := 0
		    count := 121
		    Pic.ScreenLoad ("Water/watergameback.bmp", 0, 0, picMerge)
		    stagedone1 := false
		    stagedone2 := false
		    stagedone3 := false
		end if
	    end if
	end if

	View.Update

	exit when count = 0 or stagedone1 = true and stagedone2 = true and stagedone3 = true and stagedone4 = true
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
    if chardead = false then
	loop

	    if allDead = true then
		stage += 1
		delay (500)
		if stage = 1 then
		    currentx := 0
		    backx := -500
		end if
		if stage = 2 then
		    currentx := 0
		    backx := -900
		end if
		Pic.ScreenLoad ("Dark/darkbackgame.bmp", backx, 0, picMerge)
		allDead := false
	    end if

	    if stage = 0 then
		enemyOne := sprite_darkguy2
		enemyTwo := sprite_darkguy3
		enemyThree := sprite_darkguy4
		enemy1x := 400
		enemy2x := 500
		enemy3x := -300
		enemyhealth1 := 4
		enemyhealth2 := 5
		Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)     %guy
		Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)     %girl
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
		enemy3x := 300
		enemyhealth1 := 5
		enemyhealth2 := 5
		enemyhealth3 := 4
		Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
		Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
		Sprite.SetPosition (enemyThree, enemy3x, enemyy, false)
		Sprite.Show (enemyOne)
		Sprite.Show (enemyTwo)
		Sprite.Show (enemyThree)

		shooterstage1procedure
	    end if

	    if stage = 2 then %FINAL STAGE
		bossbarx := 620
		Sprite.SetPosition (bosshealthbarsprite, 475, 360, false)
		Sprite.Hide (bosshealthbarsprite)
		Sprite.Hide (healthbar1sprite)
		Sprite.Hide (healthbar2sprite)
		Sprite.Hide (healthbar3sprite)
		enemy4x := 450
		enemyhealth4 := 10
		Pic.ScreenLoad ("Dark/darkbackgame.bmp", backx, 0, picMerge)
		Sprite.SetPosition (my_sprite5, enemy4x, enemyy, false)
		Sprite.Show (my_sprite5)
		drawfillbox (0, 0, 675, 80, 0)
		drawbox (0, 0, 675, 80, black)
		drawbox (5, 5, 670, 75, black)
		Draw.Text ("Light Guardian Guy: " + name + ", you have gone too far!", 10, 55, font3, black)
		Draw.Text ("You have killed my precious humans... now prepare to die!", 10, 40, font3, black)
		delay (4000)
		Pic.ScreenLoad ("Dark/darkbackgame.bmp", backx, 0, picMerge)
		Sprite.SetPosition (my_sprite5, enemy4x, enemyy, false)
		Sprite.Show (my_sprite5)
		drawfillbox (480, 375, bossbarx, 385, green)
		Sprite.Show (bosshealthbarsprite)

		loop
		    if currentx + 60 > enemy4x and currentx + 25 < enemy4x + 44 or count = 0 then
			chardead := true
			stage := 3
			currentx := 0
			Sprite.Hide (my_sprite5)
		    end if
		    exit when chardead = true or allDead = true and stagedone3 = true or count = 0

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
		    Sprite.Show (my_sprite5)

		    if Shooting = true and enemy4x > attackx and enemy4x < attackx + 300 then
			enemyhealth4 -= 1
			Shooting := false
			enemy4x += 30
			bossbarx -= 14
			drawfillbox (480, 375, 620, 385, white)
			drawfillbox (480, 375, bossbarx, 385, green)
		    end if
		    if enemyhealth4 = 0 then
			monsterDead4 := true
			stagedone3 := true
			Sprite.Hide (my_sprite5)
			enemy4x := -300
			Sprite.SetPosition (my_sprite5, enemy4x, enemyy, false)
		    end if
		    if stagedone3 = true then
			stage := 4
			Sprite.Hide (my_sprite5)
		    end if
		    if currentx = 675 or currentx > 675 then
			currentx := 0
		    end if
		    if currentx < 1 then
			currentx := 0
			attackx := 100
		    end if

		    exit when chardead = true or monsterDead4 = true and stagedone3 = true
		end loop
	    end if

	    if stage = 4 then
		if stagedone3 = true and stagedone2 = true and stagedone1 = true then
		    Sprite.Hide (bosshealthbarsprite)
		    Sprite.Hide (healthbar1sprite)
		    Sprite.Hide (healthbar2sprite)
		    Sprite.Hide (healthbar3sprite)
		    cls
		    Sprite.Hide (currentsprite)
		    Draw.Text ("CONGRATULATION!", 20, 200, font8, white)
		    Draw.Text ("WANT TO KILL MORE HUMANS? PRESS THE SCREEN TO RESTART", 25, 70, font2, white)
		    %drawfillbox (280, 20, 395, 60, black)
		    %drawfillbox (285, 25, 390, 55, white)
		    %Draw.Text ("EXIT", 320, 35, font2, black)
		    buttonwait ("down", x, y, b, b)
		    if x > 280 and y > 20 and x < 395 and x < 60 then
			cls
		    else
			chardead := false
			stage := 0
			count := 121
			Sprite.Show (currentsprite)
			Pic.ScreenLoad ("Dark/darkbackgame.bmp", 0, 0, picMerge)
			stagedone1 := false
			stagedone2 := false
			stagedone3 := false
		    end if
		end if
	    end if

	    if stage = 3 then
		if chardead = true then
		    Sprite.Hide (bosshealthbarsprite)
		    Sprite.Hide (healthbar1sprite)
		    Sprite.Hide (healthbar2sprite)
		    Sprite.Hide (healthbar3sprite)
		    Draw.Text ("YOU DIED", 20, 200, font7, black)
		    Draw.Text ("PRESS THE SCREEN TO RESTART", 190, 70, font2, black)
		    %drawfillbox (280, 20, 395, 60, black)
		    %drawfillbox (285, 25, 390, 55, white)
		    %Draw.Text ("EXIT", 320, 35, font2, black)
		    buttonwait ("down", x, y, b, b)
		    if x > 280 and y > 20 and x < 395 and x < 60 then
			cls
		    else
			chardead := false
			stage := 0
			count := 121
			Pic.ScreenLoad ("Dark/darkbackgame.bmp", 0, 0, picMerge)
			stagedone1 := false
			stagedone2 := false
			stagedone3 := false
		    end if
		end if
	    end if

	    View.Update

	    exit when x > 280 and y > 20 and x < 395 and x < 60
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
		currentx := 0
		backx := -500
	    end if
	    if stage = 2 then
		currentx := 0
		backx := -900
	    end if
	    Pic.ScreenLoad ("Earth/windbackgame.bmp", backx, 0, picMerge)
	    allDead := false
	end if

	if stage = 0 then
	    enemyOne := sprite_windguy1
	    enemyTwo := sprite_windguy2
	    enemyThree := sprite_windguy3
	    enemy1x := 400
	    enemy2x := 500
	    enemy3x := -300
	    enemyhealth1 := 4
	    enemyhealth2 := 5
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
	    enemy3x := 300
	    enemyhealth1 := 5
	    enemyhealth2 := 5
	    enemyhealth3 := 4
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
	    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
	    Sprite.SetPosition (enemyThree, enemy3x, enemyy, false)
	    Sprite.Show (enemyOne)
	    Sprite.Show (enemyTwo)
	    Sprite.Show (enemyThree)

	    shooterstage1procedure
	end if


	if stage = 2 then %FINAL STAGE
	    enemy4x := 400
	    enemyhealth4 := 10
	    bossbarx := 620
	    Sprite.SetPosition (bosshealthbarsprite, 475, 360, false)
	    Sprite.Hide (bosshealthbarsprite)
	    Sprite.Hide (healthbar1sprite)
	    Sprite.Hide (healthbar2sprite)
	    Sprite.Hide (healthbar3sprite)
	    Pic.ScreenLoad ("Earth/windbackgame.bmp", backx, 0, picMerge)
	    Sprite.Show (sprite_windboss)
	    Sprite.SetPosition (sprite_windboss, enemy4x, enemyy, false)
	    drawfillbox (0, 0, 675, 80, 0)
	    drawbox (0, 0, 675, 80, black)
	    drawbox (5, 5, 670, 75, black)
	    Draw.Text ("Hunter: Idiot forest guardian... You have killed all my fellow members of the hunting association!", 10, 55, font3, black)
	    Draw.Text ("DIE!", 10, 40, font3, black)
	    delay (4000)
	    Pic.ScreenLoad ("Earth/windbackgame.bmp", backx, 0, picMerge)
	    Sprite.Show (sprite_windboss)
	    Sprite.SetPosition (sprite_windboss, enemy4x, enemyy, false)
	    drawfillbox (480, 375, bossbarx, 385, green)
	    Sprite.Show (bosshealthbarsprite)

	    loop
		if currentx + 60 > enemy4x and currentx + 25 < enemy4x + 44 or count = 0 then
		    chardead := true
		    stage := 3
		    currentx := 0
		    Sprite.Hide (sprite_windboss)
		end if
		exit when chardead = true or allDead = true and stagedone3 = true or count = 0

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
		Sprite.Show (sprite_windboss)

		if Shooting = true and enemy4x > attackx and enemy4x < attackx + 300 then
		    enemyhealth4 -= 1
		    Shooting := false
		    enemy4x += 30
		    bossbarx -= 14
		    drawfillbox (480, 375, 620, 385, white)
		    drawfillbox (480, 375, bossbarx, 385, green)
		end if
		if enemyhealth4 = 0 then
		    monsterDead4 := true
		    stagedone3 := true
		    Sprite.Hide (sprite_windboss)
		    enemy4x := -300
		    Sprite.SetPosition (sprite_windboss, enemy4x, enemyy, false)
		end if
		if stagedone3 = true then
		    stage := 4
		    Sprite.Hide (sprite_windboss)
		end if
		if currentx = 675 or currentx > 675 then
		    currentx := 0
		end if
		if currentx < 1 then
		    currentx := 0
		    attackx := 100
		end if

		exit when chardead = true or monsterDead4 = true and stagedone3 = true
	    end loop
	end if

	if stage = 4 then
	    if stagedone3 = true and stagedone2 = true and stagedone1 = true then
		Sprite.Hide (bosshealthbarsprite)
		Sprite.Hide (healthbar1sprite)
		Sprite.Hide (healthbar2sprite)
		Sprite.Hide (healthbar3sprite)
		cls
		Sprite.Hide (currentsprite)
		Draw.Text ("CONGRATULATION!", 20, 200, font8, white)
		Draw.Text ("WANT TO KILL MORE HUMANS? PRESS THE SCREEN TO RESTART", 25, 70, font2, white)
		%drawfillbox (280, 20, 395, 60, black)
		%drawfillbox (285, 25, 390, 55, white)
		%Draw.Text ("EXIT", 320, 35, font2, black)
		buttonwait ("down", x, y, b, b)
		if x > 280 and y > 20 and x < 395 and x < 60 then
		    cls
		else
		    chardead := false
		    stage := 0
		    count := 121
		    Sprite.Show (currentsprite)
		    Pic.ScreenLoad ("Earth/windbackgame.bmp", 0, 0, picMerge)
		    stagedone1 := false
		    stagedone2 := false
		    stagedone3 := false
		end if
	    end if
	end if

	if stage = 3 then
	    if chardead = true then
		Sprite.Hide (bosshealthbarsprite)
		Sprite.Hide (healthbar1sprite)
		Sprite.Hide (healthbar2sprite)
		Sprite.Hide (healthbar3sprite)
		Draw.Text ("YOU DIED", 20, 200, font7, black)
		Draw.Text ("PRESS THE SCREEN TO RESTART", 190, 70, font2, black)
		%drawfillbox (280, 20, 395, 60, black)
		%drawfillbox (285, 25, 390, 55, white)
		%Draw.Text ("EXIT", 320, 35, font2, black)
		buttonwait ("down", x, y, b, b)
		if x > 280 and y > 20 and x < 395 and x < 60 then
		    cls
		else
		    chardead := false
		    stage := 0
		    count := 121
		    Pic.ScreenLoad ("Earth/windbackgame.bmp", 0, 0, picMerge)
		    stagedone1 := false
		    stagedone2 := false
		    stagedone3 := false
		end if
	    end if
	end if

	View.Update

	exit when x > 280 and y > 20 and x < 395 and x < 60

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
		currentx := 0
		backx := -500
	    end if
	    if stage = 2 then
		currentx := 0
		backx := -900
	    end if
	    Pic.ScreenLoad ("Light/lightbackgame.bmp", backx, 0, picMerge)
	    allDead := false
	end if

	if stage = 0 then
	    enemyOne := sprite_lightguy1
	    enemyTwo := sprite_lightguy2
	    enemyThree := sprite_lightguy3
	    enemy1x := 400
	    enemy2x := 500
	    enemy3x := -300
	    enemyhealth1 := 4
	    enemyhealth2 := 5
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
	    enemy3x := 300
	    enemyhealth1 := 5
	    enemyhealth2 := 5
	    enemyhealth3 := 4
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
	    Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
	    Sprite.SetPosition (enemyThree, enemy3x, enemyy, false)
	    Sprite.Show (enemyOne)
	    Sprite.Show (enemyTwo)
	    Sprite.Show (enemyThree)

	    shooterstage1procedure
	end if

	if stage = 2 then %FINAL STAGE
	    enemy4x := 400
	    enemyhealth4 := 10
	    bossbarx := 620
	    Sprite.SetPosition (bosshealthbarsprite, 475, 360, false)
	    Sprite.Hide (bosshealthbarsprite)
	    Sprite.Hide (healthbar1sprite)
	    Sprite.Hide (healthbar2sprite)
	    Sprite.Hide (healthbar3sprite)
	    Pic.ScreenLoad ("Light/lightbackgame.bmp", backx, 0, picMerge)
	    Sprite.Show (sprite_lightboss)
	    Sprite.SetPosition (sprite_lightboss, enemy4x, enemyy, false)
	    drawfillbox (0, 0, 675, 80, 0)
	    drawbox (0, 0, 675, 80, black)
	    drawbox (5, 5, 670, 75, black)
	    Draw.Text ("" + name + ": Dark Demon! Stop your killing!", 10, 55, font3, black)
	    Draw.Text ("Dark Demon: HAHAHA never. This is what the humans deserve!", 10, 40, font3, black)
	    delay (4000)
	    Pic.ScreenLoad ("Light/lightbackgame.bmp", backx, 0, picMerge)
	    Sprite.Show (sprite_lightboss)
	    Sprite.SetPosition (sprite_lightboss, enemy4x, enemyy, false)
	    drawfillbox (480, 375, bossbarx, 385, green)
	    Sprite.Show (bosshealthbarsprite)

	    loop
		if currentx + 60 > enemy4x and currentx + 25 < enemy4x + 44 or count = 0 then
		    chardead := true
		    stage := 3
		    currentx := 0
		    Sprite.Hide (sprite_lightboss)
		end if
		exit when chardead = true or allDead = true and stagedone3 = true or count = 0

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
		Sprite.SetPosition (sprite_lightboss, enemy4x, enemyy, false)
		Sprite.Show (sprite_lightboss)

		if Shooting = true and enemy4x > attackx and enemy4x < attackx + 300 then
		    enemyhealth4 -= 1
		    Shooting := false
		    enemy4x += 30
		    bossbarx -= 14
		    drawfillbox (480, 375, 620, 385, white)
		    drawfillbox (480, 375, bossbarx, 385, green)
		end if
		if enemyhealth4 = 0 then
		    monsterDead4 := true
		    stagedone3 := true
		    Sprite.Hide (sprite_lightboss)
		    enemy4x := -300
		    Sprite.SetPosition (sprite_lightboss, enemy4x, enemyy, false)
		end if
		if stagedone3 = true then
		    stage := 4
		    Sprite.Hide (sprite_lightboss)
		end if
		if currentx = 675 or currentx > 675 then
		    currentx := 0
		end if
		if currentx < 1 then
		    currentx := 0
		    attackx := 100
		end if

		exit when chardead = true or monsterDead4 = true and stagedone3 = true
	    end loop
	end if

	if stage = 4 then
	    if stagedone3 = true and stagedone2 = true and stagedone1 = true then
		Sprite.Hide (bosshealthbarsprite)
		Sprite.Hide (healthbar1sprite)
		Sprite.Hide (healthbar2sprite)
		Sprite.Hide (healthbar3sprite)
		cls
		Sprite.Hide (currentsprite)
		Draw.Text ("CONGRATULATION!", 15, 200, font8, white)
		Draw.Text ("WANT TO KILL MORE SINNERS? PRESS THE SCREEN TO RESTART", 25, 70, font2, white)
		%drawfillbox (280, 20, 395, 60, black)
		%drawfillbox (285, 25, 390, 55, white)
		%Draw.Text ("EXIT", 320, 35, font2, black)
		buttonwait ("down", x, y, b, b)
		if x > 280 and y > 20 and x < 395 and x < 60 then
		    cls
		else
		    chardead := false
		    stage := 0
		    count := 121
		    Sprite.Show (currentsprite)
		    Pic.ScreenLoad ("Light/lightbackgame.bmp", 0, 0, picMerge)
		    stagedone1 := false
		    stagedone2 := false
		    stagedone3 := false
		end if
	    end if
	end if

	if stage = 3 then
	    if chardead = true then
		Sprite.Hide (bosshealthbarsprite)
		Sprite.Hide (healthbar1sprite)
		Sprite.Hide (healthbar2sprite)
		Sprite.Hide (healthbar3sprite)
		Draw.Text ("YOU DIED", 20, 200, font7, black)
		Draw.Text ("PRESS THE SCREEN TO RESTART", 190, 70, font2, black)
		%drawfillbox (280, 20, 395, 60, black)
		%drawfillbox (285, 25, 390, 55, white)
		%Draw.Text ("EXIT", 320, 35, font2, black)
		buttonwait ("down", x, y, b, b)
		if x > 280 and y > 20 and x < 395 and x < 60 then
		    cls
		else
		    chardead := false
		    stage := 0
		    count := 121
		    Pic.ScreenLoad ("Light/lightbackgame.bmp", 0, 0, picMerge)
		    stagedone1 := false
		    stagedone2 := false
		    stagedone3 := false
		end if
	    end if
	end if

	View.Update

	exit when x > 280 and y > 20 and x < 395 and x < 60

    end loop
end if
%%%%%%%%%%%%
%FIRE STORY%
%%%%%%%%%%%%

if charnumber = 6 then

    Pic.ScreenLoad ("Fire/firebackgame.bmp", backx, 0, picMerge)
    initialTime := Time.Elapsed
    if chardead = false then
	loop

	    if allDead = true then
		stage += 1
		delay (500)
		if stage = 1 then
		    currentx := 0
		    backx := -500
		end if
		if stage = 2 then
		    currentx := 0
		    backx := -900
		end if
		Pic.ScreenLoad ("Fire/firebackgame.bmp", backx, 0, picMerge)
		allDead := false
	    end if

	    if stage = 0 then
		enemyOne := sprite_fireguy1
		enemyTwo := sprite_fireguy2
		enemyThree := sprite_fireguy3
		enemy1x := 400
		enemy2x := 500
		enemy3x := -300
		enemyhealth1 := 4
		enemyhealth2 := 5
		Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)     %guy
		Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)     %girl
		Sprite.Show (enemyOne)
		Sprite.Show (enemyTwo)
		Sprite.Hide (enemyThree)

		shooterstage0procedure
	    end if

	    if stage = 1 then
		enemyOne := sprite_fireguy1
		enemyTwo := sprite_fireguy2
		enemyThree := sprite_fireguy3
		enemy1x := 400
		enemy2x := 500
		enemy3x := 300
		enemyhealth1 := 5
		enemyhealth2 := 5
		enemyhealth3 := 4
		Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
		Sprite.SetPosition (enemyTwo, enemy2x, enemyy, false)
		Sprite.SetPosition (enemyThree, enemy3x, enemyy, false)
		Sprite.Show (enemyOne)
		Sprite.Show (enemyTwo)
		Sprite.Show (enemyThree)

		shooterstage1procedure
	    end if

	    if stage = 2 then %FINAL STAGE
		enemy4x := 400
		enemyhealth4 := 10
		bossbarx := 620
		Sprite.SetPosition (bosshealthbarsprite, 475, 360, false)
		Sprite.Hide (bosshealthbarsprite)
		Sprite.Hide (healthbar1sprite)
		Sprite.Hide (healthbar2sprite)
		Sprite.Hide (healthbar3sprite)
		Pic.ScreenLoad ("Fire/firebackgame.bmp", backx, 0, picMerge)
		Sprite.Show (sprite_fireboss)
		Sprite.SetPosition (sprite_fireboss, enemy4x, enemyy, false)
		drawfillbox (0, 0, 675, 80, 0)
		drawbox (0, 0, 675, 80, black)
		drawbox (5, 5, 670, 75, black)
		Draw.Text ("" + name + ": Oh ma lord. A bear! How fun would it be to hunt it down...", 10, 55, font3, black)
		delay (4000)
		Pic.ScreenLoad ("Fire/firebackgame.bmp", backx, 0, picMerge)
		Sprite.Show (sprite_fireboss)
		Sprite.SetPosition (sprite_fireboss, enemy4x, enemyy, false)
		Sprite.Show (bosshealthbarsprite)

		loop
		    if currentx + 60 > enemy4x and currentx + 25 < enemy4x + 44 or count = 0 then
			chardead := true
			stage := 3
			currentx := 0
			Sprite.Hide (sprite_fireboss)
		    end if
		    exit when chardead = true or allDead = true and stagedone3 = true or count = 0

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
		    Sprite.SetPosition (sprite_fireboss, enemy4x, enemyy, false)
		    Sprite.Show (sprite_fireboss)

		    if Shooting = true and enemy4x > attackx and enemy4x < attackx + 300 then
			enemyhealth4 -= 1
			Shooting := false
			enemy4x += 30
			bossbarx -= 14
			drawfillbox (480, 375, 620, 385, white)
			drawfillbox (480, 375, bossbarx, 385, green)
		    end if
		    if enemyhealth4 = 0 then
			monsterDead4 := true
			stagedone3 := true
			Sprite.Hide (sprite_fireboss)
			enemy4x := -300
			Sprite.SetPosition (sprite_fireboss, enemy4x, enemyy, false)
		    end if
		    if stagedone3 = true then
			stage := 4
			Sprite.Hide (sprite_fireboss)
		    end if
		    if currentx = 675 or currentx > 675 then
			currentx := 0
		    end if
		    if currentx < 1 then
			currentx := 0
			attackx := 100
		    end if

		    exit when chardead = true or monsterDead4 = true and stagedone3 = true
		end loop
	    end if


	    if stage = 4 then
		if stagedone3 = true and stagedone2 = true and stagedone1 = true then
		    Sprite.Hide (bosshealthbarsprite)
		    Sprite.Hide (healthbar1sprite)
		    Sprite.Hide (healthbar2sprite)
		    Sprite.Hide (healthbar3sprite)
		    cls
		    Sprite.Hide (currentsprite)
		    Draw.Text ("CONGRATULATION!", 15, 200, font8, white)
		    Draw.Text ("WANT TO KILL MORE ANIMALS? PRESS THE SCREEN TO RESTART", 25, 70, font2, white)
		    %drawfillbox (280, 20, 395, 60, black)
		    %drawfillbox (285, 25, 390, 55, white)
		    %Draw.Text ("EXIT", 320, 35, font2, black)
		    buttonwait ("down", x, y, b, b)
		    if x > 280 and y > 20 and x < 395 and x < 60 then
			cls
		    else
			chardead := false
			stage := 0
			count := 121
			Sprite.Show (currentsprite)
			Pic.ScreenLoad ("Fire/firebackgame.bmp", 0, 0, picMerge)
			stagedone1 := false
			stagedone2 := false
			stagedone3 := false
		    end if
		end if
	    end if

	    if stage = 3 then
		if chardead = true then
		    Sprite.Hide (bosshealthbarsprite)
		    Sprite.Hide (healthbar1sprite)
		    Sprite.Hide (healthbar2sprite)
		    Sprite.Hide (healthbar3sprite)
		    Draw.Text ("YOU DIED", 20, 200, font7, black)
		    Draw.Text ("PRESS THE SCREEN TO RESTART", 190, 70, font2, black)
		    %drawfillbox (280, 20, 395, 60, black)
		    %drawfillbox (285, 25, 390, 55, white)
		    %Draw.Text ("EXIT", 320, 35, font2, black)
		    buttonwait ("down", x, y, b, b)
		    if x > 280 and y > 20 and x < 395 and x < 60 then
			cls
		    else
			chardead := false
			stage := 0
			count := 121
			Pic.ScreenLoad ("Fire/firebackgame.bmp", 0, 0, picMerge)
			stagedone1 := false
			stagedone2 := false
			stagedone3 := false
		    end if
		end if
	    end if

	    View.Update

	end loop
    end if
end if
