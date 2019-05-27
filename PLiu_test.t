%This program belongs to Patricia Liu
%Date: December 21 2016
%This is a programming test

var font1 : int := Font.New ("times:24")
var number : int := 0
var initialTime, gameTime : int
var count : int := 10

setscreen ("graphics:500;500")
drawfillbox (0, maxy, maxx, 0, black)

Draw.Text ("Enter a number between 1 and 10", 30, 450, font1, yellow)
get number

Draw.Text ("You selected " + intstr (number) + "", 145, 400, font1, 47)
drawline (155, 105, 260, 250, white)
Draw.MapleLeaf (105, 105, 205, 205, red)
drawfill (155, 200, red, red)
Draw.MapleLeaf (115, 115, 195, 195, white)
drawfill (155, 150, white, white)
drawline (155, 205, 260, 270, white)
Draw.MapleLeaf (250, 250, 270, 270, red)
drawfill (260, 260, red, red)

delay (1250)
Pic.ScreenLoad ("ReidPict.jpg", 300, 0, picCopy)

Draw.Text (intstr (count), 145, 140, font1, blue)
initialTime := Time.Elapsed
loop
    gameTime := Time.Elapsed
    if (gameTime - initialTime >= 500) then
	count -= 1
	drawfillbox (145, 140, 175, 160, white)
	Draw.Text (intstr (count), 145, 140, font1, blue)
	initialTime := gameTime
    end if
    
    exit when count = 1
end loop

