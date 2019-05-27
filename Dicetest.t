var dice1 : int := 0
var x, y, b:int:=0

procedure oneFace
    drawfilloval (x+150, y+150, 10, 10, black) %mid
end oneFace

procedure twoFace
    drawfilloval (x+125, y+175, 10, 10, black) %top Left
    drawfilloval (x+175, y+125, 10, 10, black) %bot right
end twoFace

procedure threeFace
    drawfilloval (x+125, y+175, 10, 10, black) %top Left
    drawfilloval (x+175, y+125, 10, 10, black) %bot right
    drawfilloval (x+150, y+150, 10, 10, black) %mid
end threeFace

procedure fourFace
    drawfilloval (x+125, y+175, 10, 10, black) %top Left
    drawfilloval (x+175, y+175, 10, 10, black) %top right
    drawfilloval (x+175, y+125, 10, 10, black) %bot right
    drawfilloval (x+125, y+125, 10, 10, black) %botleft
end fourFace

procedure fiveFace
    drawfilloval (x+150, y+150, 10, 10, black) %mid
    drawfilloval (x+125, y+175, 10, 10, black) %top Left
    drawfilloval (x+175, y+175, 10, 10, black) %top right
    drawfilloval (x+175, y+125, 10, 10, black) %bot right
    drawfilloval (x+125, y+125, 10, 10, black) %botleft
end fiveFace

procedure sixFace
    drawfilloval (x+175, y+150, 10, 10, black) %mid right
    drawfilloval (x+125, y+150, 10, 10, black) %Mid left
    drawfilloval (x+125, y+125, 10, 10, black) %botleft
    drawfilloval (x+175, y+125, 10, 10, black) %bot right
    drawfilloval (x+175, y+175, 10, 10, black) %top right
    drawfilloval (x+125, y+175, 10, 10, black) %top Left
end sixFace

loop
mousewhere (x, y, b)
%x:= 100
%y:=100

drawfillbox (x+100, y+100, x+200, y+200,64)
drawbox (x+100, y+100, x+200, y+200, black)

randint (dice1, 1, 6)

if dice1 = 1
	then
    oneFace
end if

if dice1 = 2
	then
    twoFace
end if

if dice1 = 3
	then
    threeFace
end if

if dice1 = 4
	then
    fourFace
end if

if dice1 = 5
	then
    fiveFace
end if

if dice1 = 6
	then
    sixFace
end if
delay (200)
drawfillbox (x+100, y+100, x+200, y+200,0)
end loop
