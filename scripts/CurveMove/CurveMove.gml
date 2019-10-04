
//The object moves quadratically in a satisfying way towards the destination point, defined by the developer.
var x1 = argument0
var y1 = argument1	
var smax = argument2
var x0 = argument3
var y0 = argument4

sd = point_distance(x0,y0,x1,y1)

speed = 2*smax*(point_distance(x,y,x1,y1)/sd)/3 + smax/3

