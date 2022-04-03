StrokeLength = 0.1574; %m
Bore = 0.01905; %m,  3/4 inches
ActuatedMass = 0.0084; %kg, From solidworks

pressure_in = 413685; %pascal

A = Bore^2/4; %bore area
V0 = A*0.1524;
m = 0.0084;
kc = 8.14;

kq = 0.62;
b = 0.5;

k2 = 1/b;

beta = 142000;


tm = m/b;
th = V0/(2*beta*kc);




