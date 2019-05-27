%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This file is a part of the main summative. These are the procedures.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
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

    for i : attackx .. 850 by 2
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
    if attackx > attackx + 400 then
	Shooting := false
	Sprite.Hide (my_weapon)
	attackx := currentx + 100
    end if

    View.Update
end shoot

% procedure cut
%     Sprite.SetPosition (my_weapon, attackx, attacky, true)
%     Input.KeyDown (chars)
%     if chars ('a') then
%         currentx -= 3
%         attackx -= 3
%     end if
%     if chars ('d') then
%         currentx += 3
%         attackx += 3
%     end if
%     if chars ('w') then
%         jump
%         if charnumber = 6 then
%             attackx := currentx + 200
%         end if
%         if charnumber = 2 then
%             attackx := currentx + 110
%         end if
%     end if
%     %Cut := true
%     Sprite.SetPosition (my_weapon, attackx, attacky, true)
%     Sprite.Show (my_weapon)
%     delay (1)
%     View.Update
%     Sprite.Show (currentsprite)
%     Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
%     Sprite.Hide (my_weapon)
%     %Cut := false
% end cut

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
	end if
	if charnumber = 2 then
	    attackx := currentx + 110
	end if
	if charnumber = 6 then
	    attackx := currentx + 130
	end if

	shoot
	% if charnumber = 2 or charnumber = 6 then
	% Cut:=true
	%     if charnumber = 6 then
	%         attackx := currentx + 200
	%     end if
	%     if charnumber = 2 then
	%         attackx := currentx + 100
	%     end if
	%     cut
	%     Cut:=false
	% end if
    end if
end movement

procedure shooterstage0procedure
    healthbarx1 := 620
    healthbarx2 := 620
    drawfillbox (480, 375, healthbarx1, 385, green)
    drawfillbox (480, 335, healthbarx2, 345, green)
    loop
	Sprite.SetPosition (healthbar1sprite, 475, 360, false)
	Sprite.Show (healthbar1sprite)
	Sprite.SetPosition (healthbar2sprite, 475, 320, false)
	Sprite.Show (healthbar2sprite)
	Sprite.SetPosition (healthbar3sprite, 475, 280, false)
	Sprite.Hide (healthbar3sprite)
	if currentx + 60 > enemy1x and currentx + 25 < enemy1x + 44 or currentx + 60 > enemy2x and currentx + 25 < enemy2x + 41 or count = 0 then
	    chardead := true
	    stage := 3
	    currentx := 0
	    Sprite.Hide (enemyOne)
	    Sprite.Hide (enemyTwo)
	end if
	exit when chardead = true or allDead = true and stagedone1 = true or count = 0

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

	if Shooting = true and enemy1x > attackx and enemy1x < attackx + 300 then
	    enemyhealth1 -= 1
	    Shooting := false
	    enemy1x += 20
	    healthbarx1 -= 35
	    drawfillbox (480, 375, 620, 385, white)
	    drawfillbox (480, 375, healthbarx1, 385, green)
	end if
	if enemyhealth1 = 0 then
	    monsterDead1 := true
	    Sprite.Hide (enemyOne)
	    enemy1x := -300
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
	end if

	if Shooting = true and enemy2x > attackx and enemy2x < attackx + 300 then
	    enemyhealth2 -= 1
	    Shooting := false
	    enemy2x += 20
	    healthbarx2 -= 28
	    drawfillbox (480, 335, 620, 345, white)
	    drawfillbox (480, 335, healthbarx2, 345, green)
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
	    stagedone1 := true
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
    healthbarx1 := 620
    healthbarx2 := 620
    healthbarx2 := 620
    drawfillbox (480, 375, healthbarx1, 385, green)
    drawfillbox (480, 335, healthbarx2, 345, green)
    drawfillbox (480, 295, healthbarx2, 305, green)
    loop
	Sprite.SetPosition (healthbar1sprite, 475, 360, false)
	Sprite.Show (healthbar1sprite)
	Sprite.SetPosition (healthbar2sprite, 475, 320, false)
	Sprite.Show (healthbar2sprite)
	Sprite.SetPosition (healthbar3sprite, 475, 280, false)
	Sprite.Show (healthbar3sprite)
	if currentx + 60 > enemy1x and currentx + 25 < enemy1x + 44 or currentx + 60 > enemy2x and currentx + 25 < enemy2x + 41 or currentx + 60 > enemy3x and currentx + 25 < enemy3x + 41 or count =
		0 then
	    chardead := true
	    stage := 3
	    currentx := 0
	    Sprite.Hide (enemyOne)
	    Sprite.Hide (enemyTwo)
	end if
	exit when chardead = true or allDead = true and stagedone1 = true or count = 0

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

	if Shooting = true and enemy3x > attackx and enemy3x < attackx + 300 then
	    enemyhealth3 -= 1
	    Shooting := false
	    enemy3x += 20
	    healthbarx3 -= 35
	    drawfillbox (480, 295, 620, 305, white)
	    drawfillbox (480, 295, healthbarx3, 305, green)
	end if
	if enemyhealth3 = 0 then
	    monsterDead3 := true
	    Sprite.Hide (enemyThree)
	    enemy3x := -300
	    Sprite.SetPosition (enemyThree, enemy3x, enemyy, false)
	end if

	if Shooting = true and enemy1x > attackx and enemy1x < attackx + 300 then
	    enemyhealth1 -= 1
	    Shooting := false
	    enemy1x += 20
	    healthbarx1 -= 28
	    drawfillbox (480, 375, 620, 385, white)
	    drawfillbox (480, 375, healthbarx1, 385, green)
	end if
	if enemyhealth1 = 0 then
	    monsterDead1 := true
	    Sprite.Hide (enemyOne)
	    enemy1x := -300
	    Sprite.SetPosition (enemyOne, enemy1x, enemyy, false)
	end if

	if Shooting = true and enemy2x > attackx and enemy2x < attackx + 300 then
	    enemyhealth2 -= 1
	    Shooting := false
	    enemy2x += 30
	    healthbarx2 -= 28
	    drawfillbox (480, 335, 620, 345, white)
	    drawfillbox (480, 335, healthbarx2, 345, green)
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

	if monsterDead2 = true and monsterDead1 = true and monsterDead3 = true then
	    allDead := true
	    Sprite.Hide (enemyOne)
	    Sprite.Hide (enemyTwo)
	    Sprite.Hide (enemyThree)
	    monsterDead2 := false
	    monsterDead1 := false
	    monsterDead3 := false
	    Sprite.Hide (healthbar1sprite)
	    Sprite.Hide (healthbar2sprite)
	    Sprite.Hide (healthbar3sprite)
	    stagedone2 := true
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


