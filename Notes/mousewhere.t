
%mouse where and buttonwait
%button wait waits for the button to be click
%mouse where just gets location adn puts on screen

var x, y, button : int := 0

loop
    mousewhere (x, y, button)
    %buttonwait ("down", x, y, button, button)
    put x, " ", y
    drawfilloval (x, y, 10, 10, blue)
    exit when button = 1
end loop
