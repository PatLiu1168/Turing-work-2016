var num:array 1..12 of int
var x :int:=100

for i:1..12
put "Put entre a number for month ",i,": "..
get num(i)
end for

for i:1..12
drawbox (x, 100, x+20, 100+num(i), red)
x+=25
end for
