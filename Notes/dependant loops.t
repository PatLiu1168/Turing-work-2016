%dependant loop
var answer :int :=0

loop
put "what is 7 x 5"
get answer
if answer not= 35 then
put "Wrong"
end if

exit when answer = 35
end loop

put "yay"
%use when u want the user to have control over the loop
