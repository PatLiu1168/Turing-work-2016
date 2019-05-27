var bullety : int 
var bulletx : int 
bulletx := 00 
bullety := 200 
var bullet : int 
var chars : array char of boolean 
var x, y, x1, y1 : int 
var Shooting : boolean := false 

x := 00 
y := 200 

View.Set ("offscreenonly") 
    var pic1 : int := Pic.FileNew ("Pictures/darksign.bmp") 
    var sprite1 : int := Sprite.New (pic1) 
    var pic2 : int := Pic.FileNew ("Sprites/dark.bmp") 
    var sprite2 : int := Sprite.New (pic2) 

loop 
    Sprite.Show(sprite2) 
    Sprite.SetPosition (sprite2, x, y,true) 
    
    Input.KeyDown (chars) 

    if chars (KEY_RIGHT_ARROW) then 
	x := x + 5 
	bulletx := bulletx + 5 
	if x > maxx then 
	    x := x- 5 
	    bulletx := bulletx - 5 
	end if 
    end if 
    if chars (KEY_LEFT_ARROW) or chars ('s') then 
	x := x - 5 
	bulletx := bulletx - 5 
	if x < 0 then 
	    x := x + 5 
	    bulletx := bulletx + 5 
	end if 
	
    end if 
  
      if chars (' ') then 
	for i: x .. 690 by 10            
	Sprite.Show (sprite1) 
	Sprite.SetPosition (sprite1, i, y, true) 
	
	delay (1) 
	View.Update 
	Sprite.Show(sprite2) 
	Sprite.SetPosition (sprite2, x, y,true)    
	    end for 
	end if 

	if bulletx > 640 then 
	    Shooting := false 
	    bulletx := -20 
	end if  
    
    View.Update 
end loop 
