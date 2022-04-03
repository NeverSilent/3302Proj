StrokeLength = 0.1574; %m
Bore = 0.01905; %m,  3/4 inches
ActuatedMass = 0.0084; %kg, From solidworks

pressure_in = 413685; %pascal

A = Bore^2/4; %bore area
V0 = A*0.1524; %Initial Volume
m = 0.0084; %mass 
kc = 8.14; %constant
kq = 0.62; %constant
b = 0.147; %damping coefficient
k1 = 1/kc; %tf constant
k2 = 1/b; %tf constant
beta = 142000; %bulk modulus
tm = m/b; %tf constant
th = V0/(2*beta*kc); %tf constat




