%This program belongs to Patricia Liu
%Started on September 10
%version 1.0
%This is the entire quiz program
%Only insert your first name please

var answer1 : int := 0
var score : int := 0
var name : string := ""
var answer2 : string := ""
var answer3 : string := ""
var answer4 : string := ""
var answer5 : int := 0
var answer6 : int := 0
var font1 : int := Font.New ("Arial:20")
var font2 : int := Font.New ("Arial:15")
var font3 :int := Font.New ("Arial:11")
var font4 :int := Font.New ("Arial:30")

setscreen ("graphics: 700, 400")

procedure intropage
drawfillbox (190, 200, 510, 300, 64)
Draw.Text ("Please enter your name:  ", 200, 270, font1, 0)
drawfillbox (250, 215, 450, 245, 0)
locate (11, 36)
get name
delay (800)

Draw.Text ("Hello " + name + ", my name is THATQUIZ. Nice to meet you ;D!", 98, 165, font2, 63)
delay (200)
Draw.Text ("LOADING....", 305, 125, font2, 63)

delay (500)
Pic.ScreenLoad ("pokemon1.jpg", 616, 10, picCopy)
delay (500)
drawfillbox (616, 10, 700, 50, 0)
Pic.ScreenLoad ("pokemon2.jpg", 566, 10, picCopy)
delay (500)
drawfillbox (566, 10, 670, 50, 0)
Pic.ScreenLoad ("pokemon1.jpg", 516, 10, picCopy)
delay (500)
drawfillbox (516, 10, 600, 50, 0)
Pic.ScreenLoad ("pokemon2.jpg", 466, 10, picCopy)
delay (500)
drawfillbox (466, 10, 570, 50, 0)
Pic.ScreenLoad ("pokemon1.jpg", 416, 10, picCopy)
delay (500)
drawfillbox (416, 10, 700, 50,0)
Pic.ScreenLoad ("pokemon2.jpg", 366, 10, picCopy)
delay (500)
drawfillbox (366, 10, 700, 50,0)
Pic.ScreenLoad ("pokemon1.jpg", 316, 10, picCopy)
delay (500)
drawfillbox (316, 10, 700, 50,0)
Pic.ScreenLoad ("pokemon2.jpg", 266, 10, picCopy)
delay (500)
drawfillbox (266, 10, 700, 50,0)
Pic.ScreenLoad ("pokemon1.jpg", 216, 10, picCopy)
delay (500)
drawfillbox (216, 10, 700, 50,0)
Pic.ScreenLoad ("pokemon2.jpg", 166, 10, picCopy)
delay (500)
drawfillbox (166, 10, 700, 50,0)
Pic.ScreenLoad ("pokemon1.jpg", 116, 10, picCopy)
delay (500)
drawfillbox (116, 10, 700, 50,0)
Pic.ScreenLoad ("pokemon2.jpg", 66, 10, picCopy)
delay (500)
drawfillbox (66, 10, 700, 50,0)
Pic.ScreenLoad ("pokemon1.jpg", 16, 10, picCopy)
delay (500)
drawfillbox (16, 10, 700, 50,0)
Pic.ScreenLoad ("pokemon3.jpg", 0, 10, picCopy)
delay (500)
drawfillbox (0, 10, 700, 50,0)
delay (500)
cls
end intropage
intropage

procedure question1
drawfillbox (0, maxy, maxx, 0, 90)
Text.ColourBack (90)

Draw.Text ("QUESTION 1", 10, 360, font1, 121)
drawfillbox (0, 340, 350, 345, 0)
drawfillbox (350, 0, 700, 400, 0)
drawfillbox (350, 340, 700, 345, 90)

locate (5, 1)
put "THATQUIZ asks ", name, ". . ."
drawfillbox (350, 0, 700, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
delay(200)
put "What is my name?"
drawfillbox (350, 0, 700, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
delay(100)
put "1) THATQUIZ"
drawfillbox (350, 0, 700, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
delay (100)
put "2) ", name, ""
drawfillbox (350, 0, 700, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
delay (100)
put "3) thatquiz"
drawfillbox (350, 0, 700, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
delay (100)
put "4) ", name, "y"
drawfillbox (350, 0, 700, 400, 0)
drawfillbox (350, 340, 700, 345, 90)

locate (12, 60)
Text.ColourBack (0)
put "", name, " answers: " ..
get answer1

locate (14, 1)
Text.ColourBack (90)
if answer1 = 1 then
delay (100)
    put "THATQUIZ says . . ."
    put "Good job ", name, ". You payed attention."
    put "Time for the next question. :)"
    score += 3
end if

if answer1 = 2 then
    put "THATQUIZ cries . . ."
    put "Come on ", name, ". >:("
    put "Did you even read the question?"
    put "Next question, read the entire thing plwz."
    score -= 2
end if

if answer1 = 3 then
    put "THATQUIZ yells . . ."
    put "R U SERIOUS. Your answer is not even close. "
    put "Next question. Try this time..."
    score -= 2
end if

if answer1 = 4 then
    put "THATQUIZ says . . ."
    put "Nope."
    put "My name is in UPPERCASE, not lowercase."
    put "Time for the next question -_-"
    score -= 1
end if

if answer1 < 1 or answer1 > 4 then
    put "THATQUIZ sighs . . ."
    put "Nice. Can't count from 1-4 can you. Real nice ", name, "."
    put "Try to be serious next question. Kay?"
    score -= 3
end if
drawfillbox (350, 0, 700, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
locate (12, 60)
Text.ColourBack (0)
put "", name, " answers: ", answer1, ""

delay (200)
locate (18, 1)
Text.ColourBack (90)
put ""
put "THATQUIZ states. . ."
put "Your score is now ", score, "."
drawfillbox (350, 0, 700, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
locate (12, 60)
Text.ColourBack (0)
put "", name, " answers: ", answer1, ""


delay (500)
locate (22, 60)
Text.ColourBack (0)

if score > 1 then
    put "", name, " cheers . . "
end if

if score < 1 then
    put "", name, " is ashamed . . "
end if

delay (400)
Pic.ScreenLoad ("kirby1.jpg", 350, 364, picCopy)
delay (500)
drawfillbox (350, 0, 400, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
Pic.ScreenLoad ("kirby2.jpg", 350, 324, picCopy)
delay (500)
drawfillbox (350, 0, 400, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
Pic.ScreenLoad ("kirby1.jpg", 350, 284, picCopy)
delay (500)
drawfillbox (350, 0, 400, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
Pic.ScreenLoad ("kirby2.jpg", 350, 244, picCopy)
delay (500)
drawfillbox (350, 0, 400, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
Pic.ScreenLoad ("kirby1.jpg", 350, 204, picCopy)
delay (500)
drawfillbox (350, 0, 400, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
Pic.ScreenLoad ("kirby2.jpg", 350, 164, picCopy)
delay (500)
drawfillbox (350, 0, 400, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
Pic.ScreenLoad ("kirby1.jpg", 350, 124, picCopy)
delay (500)
drawfillbox (350, 0, 400, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
Pic.ScreenLoad ("kirby2.jpg", 350, 84, picCopy)
delay (500)
drawfillbox (350, 0, 400, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
Pic.ScreenLoad ("kirby1.jpg", 350, 44, picCopy)
delay (500)
drawfillbox (350, 0, 400, 400, 0)
drawfillbox (350, 340, 700, 345, 90)
Pic.ScreenLoad ("kirby2.jpg", 350, 14, picCopy)
delay (500)
drawfillbox (350, 0, 400, 400, 0)
drawfillbox (350, 340, 700, 345, 90)

cls
end question1
question1


procedure question2
Pic.ScreenLoad ("gov.jpg", 0,20, picUnderMerge)
drawfillbox (10, 10, 350, 390, 0)
drawfillbox ( 275 ,15, 345, 90, red)
drawfillbox (475, 230, 700,310, 0)
Draw.Text ("________________________", 480, 250, font1, black)
delay (200)
Draw.Text ("SCORE", 285, 95, font3, red) 
Draw.Text (intstr(score), 300, 35, font4, white)

Draw.Text  ("QUESTION 2", 15, 370, font2, red)
delay (200)
Draw.Text ("Who is the current prime minister?", 15, 340, font3, red)
delay (200)
Draw.Text ("(I'm talking about the prime minister of Canada)", 15, 320, font3, red)
delay (200)
Pic.ScreenLoad ("trudeau1.jpg", 15, 210, picCopy)
Pic.ScreenLoad ("liberal.jpg", 88, 210, picCopy)
Pic.ScreenLoad ("trudeau2.jpg", 188, 210, picCopy)


locate (9, 64)
get answer2:*
delay (500)
if answer2 = "Justin Trudeau" then
    Draw.Text ("Awesome! You know canadian politics.", 15, 160, font3, red)
    
    score +=2
else
    Draw.Text ("Okay "+name+". . . -_- .", 15, 170, font3, red)
    delay (200)
    Draw.Text ("By the way, "+answer2+" is not the prime minister...", 15, 150, font3, red)
    delay (200)
    Draw.Text ("Justin Trudeau is.", 15, 130, font3, red)
    score -=1
end if
delay (500)
drawfillbox ( 275 ,15, 345, 90, red)
Draw.Text (intstr(score), 300, 35, font4, white)


delay (5000)
cls
end question2
question2

procedure question3
drawfillbox (0, maxy, maxx,0, 69) 
Text.ColourBack (69)
Pic.ScreenLoad ("china.jpg", 0, 0, picCopy)
drawfillbox ( 350 ,15, 425, 90, 12)
Draw.Text ("SCORE", 360, 95, font3, red) 
Draw.Text (intstr(score), 375, 35, font4, white)

delay (200)
Draw.Text ("QUESTION 3", 360, 340, font4, 12)
delay (200)
Draw.Text  ("What is the capital of China?", 360, 315, font2, 12)
delay(200)
Draw.Text ("a)Hong Kong  b)Vancouver  c)Shanghai  d)Beijing " , 360, 290, font3, 12)
Draw.Text ("________________________________________________", 360, 270, font3, 12)
Draw.Text ("________________________________________________", 360, 240, font3, 12)
locate (10, 46)
get answer3 

delay (800)
if answer3 = "a" or answer3 = "A" or answer3 = "Hong Kong" then
    Draw.Text ("That is incorrect "+name+".", 360, 200, font3, 12)
    Draw.Text ("The capital is Beijing.", 360, 175, font3, 12)
    score -=1
end if

if answer3= "b" or answer3 = "B" or answer3 = "Vancouver"then
    Draw.Text ("That is WRONG "+name+".", 360, 200, font3, 12) 
    Draw.Text ("Vancouver in CANADA, not CHINA.", 360, 175, font3, 12)
    Draw.Text ("The capital is Beijing.", 360, 150, font3, 12)
    score -=2
end if

if answer3 ="c" or  answer3 ="C" or answer3 = "Shanghai" then
    Draw.Text ("Nope. You are wrong "+name+".", 360, 200, font3, 12)
    Draw.Text ("Shanghai is China's biggest city, but not its capital.", 360, 175, font3, 12)
    Draw.Text ("The capital is Beijing", 360, 150, font3, 12)
    score -=1
end if

if  answer3 = "d" or  answer3 = "D" or answer3 = "Beijing" then
    Draw.Text (" Yep. You are right "+name+"! Bonne Travail.", 360, 200, font3, 12)
    score +=2
end if

if  answer3 = "e" or  answer3 ="f" or  answer3 ="g" or  answer3 ="h" or  answer3 ="i" or  answer3 ="j" or  answer3 ="k" or  answer3 ="l" or  answer3 ="m" or  answer3 ="n" or  answer3 ="o" or  answer3 ="p" or  answer3 ="q" or  answer3 ="r" or  answer3 ="s" or  answer3 ="t" or  answer3 ="u" or  answer3 ="v" or  answer3 ="w" or  answer3 ="x" or  answer3 ="y" or  answer3 ="z" then
    Draw.Text ("The only answer choices were a,b,c and d?", 360, 200, font3, 12) 
    Draw.Text ("Trying to make more work for me are you "+name+".", 360, 175, font3, 12)
    Draw.Text ("By the way,the capital of China is Beijing.", 360, 150, font3, 12)
    score -=3
end if

if  answer3 = "E" or  answer3 ="F" or  answer3 ="G" or  answer3 ="H" or  answer3 ="I" or  answer3 ="J" or  answer3 ="K" or  answer3 ="L" or  answer3 ="M" or  answer3 ="N" or  answer3 ="O" or  answer3 ="P" or  answer3 ="Q" or  answer3 ="R" or  answer3 ="S" or  answer3 ="T" or  answer3 ="U" or  answer3 ="V" or  answer3 ="W" or  answer3 ="X" or  answer3 ="Y" or  answer3 ="Z" then
    Draw.Text ("The only answer choices were a,b,c and d?", 360, 200, font3, 12) 
    Draw.Text ("Trying to make more work for me are you "+name+".", 360, 175, font3, 12)
    Draw.Text ("By the way,the capital of China is Beijing.", 360, 150, font3, 12)
    score -=3
end if
delay (500)
drawfillbox ( 350 ,15, 425, 90, 12)
Draw.Text (intstr(score), 375, 35, font4, white)


delay (5000)

cls
end question3
question3

procedure question4
drawfillbox (0, maxy, maxx,0, 240) 
Text.ColourBack (240)
Pic.ScreenLoad ("mona.jpg", 40, 0, picCopy)
Draw.Text ("QUESTION 4", 320, 340, font1, white)
Draw.Text  ("Who is the artist who drew Mona Lisa?", 320, 315, font3, white)
Draw.Text ("Score: ", 320, 10, font1, white)
Draw.Text (intstr(score), 410, 10, font1, white)
drawfillbox (320, 300, 700, 305, white)
delay (500)
Draw.Text ("Choices: ", 320, 280, font3, white)
delay (200)
Draw.Text ("Leonardo da Vinci    Vincent Van Gogh    Pablo Picasso", 320, 260, font3, white )
drawfillbox (330, 220, 680, 240, white)
Text.ColourBack (0)
locate (11, 44)
get answer4 :*
delay (500)

if answer4 = "Leonardo da Vinci" or answer4 = "leonardo da vinci" or answer4 = "leonardo" or answer4 = "Leonardo" then
    Draw.Text ( "That is correct!", 320, 150, font3, white)
    Draw.Text ("Obviously, you know about art ;).", 320, 125, font3, white)
    score +=2
end if

if answer4 = "Vincent Van Gogh"or answer4 ="vincent van gogh" or answer4 = "Vincent" or answer4 = "vincent" then
    Draw.Text ("You are wrong. Van Gogh drew The Starry Night.", 320, 150, font3, white)
    Draw.Text ("It was Leonardo da Vinci drew the Mona Lisa", 320, 125, font3, white)
    score -=1
end if

if answer4 = "Pablo Picasso" or answer4 ="pablo picasso" or answer4= "Pablo" or answer4 = "pablo" then
    Draw.Text ("You are wrong. Picasso drew The Seated Woman", 320, 150, font3, white)
    Draw.Text ("It was Leonardo da Vinci who drew the Mona Lisa", 320, 125, font3, white)
    score -=1
end if
delay (500)
drawfillbox (410, 10, 480, 50, 240)
Draw.Text (intstr(score), 410, 10, font1, white)
delay (4000)

cls
end question4
question4

procedure question5
drawfillbox (0, maxy, maxx,0, 72) 
Text.ColourBack (72)

Draw.Text ("QUESTION 5", 20, 350, font1, black)
Draw.Text (" What is the answer of the following math question..", 20, 325, font3, black)
Draw.Text ("400 + 8 x  (5 x 10 - 3)= ?", 20, 270, font4, black)
Pic.ScreenLoad ("bedmas.jpg", 0, 10, picCopy)
locate (11, 5)
get answer5
delay (500)
if answer5 = 776 then
    Draw.Text ("(Awesome job "+name+". Your math skills are on point <3!)", 75, 228, font3, green)
    score +=2
    Draw.Text ("(Your score is ", 445, 228, font3, green)
    Draw.Text (intstr(score), 545, 228, font3, green)
    Draw.Text (")", 565, 228, font3, green)
else 
    Draw.Text ("(Sorry "+name+", the answer is actually 776. Nice effort.)", 75, 228, font3, 12)
    score -=1
    Draw.Text ("(Your score is ", 440, 228, font3, 12)
    Draw.Text (intstr(score), 540, 228, font3, 12)
    Draw.Text (")", 555, 228, font3, 12)
end if


delay (4000)

cls
end question5
question5


drawfillbox (0, maxy, maxx,0, 54) 
Text.ColourBack (54)
Draw.Text (" CONGRATULATION!", 225, 350, font1, white)
Draw.Text ("YOU MADE IT THROUGH THE QUIZ", 125, 325, font1, white)
Draw.Text (" Your final score is ... ", 245, 300, font2, white)
Draw.Text (intstr(score), 470, 300, font2, white)

if score <0 then
    Draw.Text ("Therefore . . . (drumroll please) YOU FAILED!", 145, 200, font2, white)
    delay (500)
    Draw.Text ("Sorry "+name+". Try harder next time!", 215, 175, font2, white)
end if

if score =11 then
    Draw.Text ("Therefore . . . (drumroll please)", 225, 200, font2, white)
    delay (500)
    Draw.Text ("You got everything right!! Awesome job!", 190, 175, font2, white)
end if

    if score =1 or score =2 or score =3 or score =4 or score =5 or score =6 or score =7 or score =8 or score =9 or score = 10 then
    Draw.Text ("Therefore . . . (drumroll please)", 225, 200, font2, white)
    delay (500)
    Draw.Text ("You Passed! Good job "+name+".", 230, 175, font2, white)
end if

    



