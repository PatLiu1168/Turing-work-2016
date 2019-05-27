%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%THESE ARE THE TUTORIALS AND STORIES%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

setscreen ("graphics: 675, 400")

%START... DO NOT CHANGE (EXCEPT THE PARTS THAT ARE NOT DONE AKA TIME)
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
	delay (200)
    end for
    delay (4000)
	Pic.ScreenLoad ("Time/timeback9.bmp", 0, 0, picCopy)
	drawfillbox (0, 0, 675, 80, 0)
	drawbox (0, 0, 675, 80, black)
	drawbox (5, 5, 670, 75, black)
	Draw.Text (""+name+" wandered the lonely mountain ranges in a state of despair ", 10, 55, font3, black)
	delay (1000)
	Draw.Text ("However, during these years in isolation, "+name+" developped a deep hatred for humans.", 10, 40, font3, black)
	delay (5000)
	Pic.ScreenLoad ("Time/timeback10.bmp", 0, 0, picCopy)
	drawfillbox (0, 0, 675, 80, 0)
	drawbox (0, 0, 675, 80, black)
	drawbox (5, 5, 670, 75, black)
	Draw.Text ("After several years of training, "+name+" developped an immense amount of magical power.  ", 10, 55, font3, black)
	Draw.Text ("However, rather then using this power for good, she decided to use it to get revenge. . .", 10, 40, font3, black)
	delay (5000)
	quicktransition
	Sprite.SetPosition (currentsprite, currentx, round (currenty), false)
	Sprite.Show (currentsprite)
	%TUTORIAL
	Pic.ScreenLoad ("Water/watergameback.bmp", 0, 0, picCopy)
	tutorial
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
end if

