%Program belongs to Patricia Liu
%Was started december 7th 2016 aka my BIRTHDAAAY
%This is the arrays program

var name :string :=""
var xaxis :string :=""
var yaxis :string :=""
var arraynumber :int:=20
var font1 :int :=Font.New ("times:12")
var font2 :int :=Font.New ("times:15")
var xStart:int:=100
var randomcolour :int
var bars: array 1..arraynumber of int
var music :int:=0
var linelength :int:=122
var heightlength :int:=100
var add_on :int:=0
var x, y, b:int
var restart :string:=""
var row_Value:int:=0
setscreen ("graphics:400;400")
put "WELCOME TO THE BAR GRAPH MAKER!"

delay (500)
put "What is the name of your graph: "..
get name:*
delay (500)
cls
put "How many  bars do you want: "..
get arraynumber
delay (500)
if arraynumber <0 or arraynumber>20 then
put "SORRY. ",arraynumber," IS NOT AVAILABLE."
delay (1000)
put "PLEASE CHOOSE A NUMBER BETWEEN 1-20."
delay (1000)
put "How many  bars do you want: "..
get arraynumber
delay (500)
end if
cls
put "What is the name of your x axis: "..
get xaxis:*
delay (500)
cls
put "What is the name of your y axis: "..
get yaxis:*
delay (1000)
cls
put "Enter a number and choose a song choice: "
put "1:Ambient Music"
put "2:Sad Music"
put "3:Elevator Music"
get music
delay (1000)
cls
if music =1 then
Music.PlayFileLoop ("song1.MP3")
end if
if music =2 then
Music.PlayFileLoop ("song2.MP3")
end if
if music=3 then
Music.PlayFileLoop ("song3.MP3")
end if

put "WARNING. . . NUMBERS MUST BE BETWEEN 1- 200."
for i:1..arraynumber
put "What is the value of bar ",i,": "..

get bars(i)
delay (500)
if bars(i)>200 then
put "NOPE. THE NUMBER MUST BE SMALLER THAN 200!"
put "What is the value of bar ",i,": "..
get bars(i)
end if
end for
put "Generating ... Please wait..."
delay (2000)

cls
if arraynumber =1 then
add_on :=240
end if
if arraynumber =2 then
add_on :=120
end if
if arraynumber =3 then
add_on :=80
end if
if arraynumber =4 then
add_on :=60
end if
if arraynumber =5 then
add_on :=48
end if
if arraynumber =6 then
add_on :=40
end if
if arraynumber =7 then
add_on :=34
end if
if arraynumber =8 then
add_on :=30
end if
if arraynumber =9 then
add_on :=26
end if
if arraynumber =10 then
add_on :=24
end if
if arraynumber =11 then
add_on :=21
end if
if arraynumber =12 then
add_on :=20
end if

Draw.Line (xStart, 99, xStart+264, 99, black)
drawline (99, 99, 99, 300, black)

for i:1..arraynumber
randint (randomcolour, 64, 103)
for j :100..100+bars(i)
drawfillbox (xStart, 100, xStart+add_on, j, randomcolour)
delay(15)
end for
xStart +=add_on +2

end for
Draw.Text (""+xaxis+"", 175,75, font1, black) 
Draw.Text (""+yaxis+"", 50, 200, font1, black)
Draw.Text (""+name+"", 175, 320, font2, black)

Draw.Box (5, 5, 105, 55, black)
Draw.Text ("Graph Mode", 15, 25, font1, black)
Draw.Box (295, 5, 395, 55, black)
Draw.Text ("Info Mode", 310, 25, font1, black)
Draw.Box (150, 5, 250, 55, black)
Draw.Text ("EXIT", 182, 25, font1, black)

loop
buttonwait ("down", x, y, b, b)

if x>5 and y>5 and x<105 and y<55 then
cls
Draw.Box (5, 5, 105, 55, black)
Draw.Text ("Graph Mode", 15, 25, font1, black)
Draw.Box (295, 5, 395, 55, black)
Draw.Text ("Info Mode", 310, 25, font1, black)
Draw.Box (150, 5, 250, 55, black)
Draw.Text ("EXIT", 182, 25, font1, black)

xStart :=100
Draw.Line (xStart, 99, xStart+264, 99, black)
drawline (99, 99, 99, 300, black)

for i:1..arraynumber
randint (randomcolour, 64, 103)
for j :100..100+bars(i)
drawfillbox (xStart, 100, xStart+add_on, j, randomcolour)
delay(15)
end for
xStart +=add_on +2

end for
Draw.Text (""+xaxis+"", 175,75, font1, black) 
Draw.Text (""+yaxis+"", 50, 200, font1, black)
Draw.Text (""+name+"", 175, 320, font2, black)
end if

if x>295 and y>5 and x<395 and y<55 then
cls
Draw.Box (5, 5, 105, 55, black)
Draw.Text ("Graph Mode", 15, 25, font1, black)
Draw.Box (295, 5, 395, 55, black)
Draw.Text ("Info Mode", 310, 25, font1, black)
Draw.Box (150, 5, 250, 55, black)
Draw.Text ("EXIT", 182, 25, font1, black)

drawline (200, 375, 200, 90, black)
drawline (75, 350, 325, 350, black)
Draw.Text (""+xaxis+"",100 ,355, font2, black) 
Draw.Text (""+yaxis+"", 225, 355, font2, black)

row_Value :=330
for i:1..arraynumber
Draw.Text (intstr(bars(i)), 225, row_Value,font1, black)
Draw.Text (intstr(i), 100, row_Value,font1, black)
row_Value-=15
delay (100)
end for

end if

if x>150 and y>5 and x<250 and y<55 then
cls
Music.PlayFileStop 
put "Thanks for using the bar graph maker. BAI!"
end if
exit when x>150 and y>5 and x<250 and y<55
end loop







