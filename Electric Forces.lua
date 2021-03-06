--Forces between charges:

local power = -6 --the exponent of the charges (in coulombs)
local charge1 = 0
local charge2 = 0
local r = 0 --in meters
local direction = 0 --in degrees
local pos = {x=0,y=0} --add to table to handle multiple calculations/vectors

local k = 8.987e9
local f = k*charge1*charge2*(10^(2*power))/(r^2)
pos.x = pos.x + math.cos(math.rad(direction))*f
pos.y = pos.y + math.sin(math.rad(direction))*f

print("Pos X: ",pos.x,"Pos Y: ",pos.y)
print("Magnitude: ",math.sqrt(pos.x^2+pos.y^2))
print("Direction: ",(pos.x == 0 and 90) or ((180/math.pi)*math.atan(pos.y/pos.x) + (pos.x < 0 and 180 or 0)))
