ArmatureInductance = 131*10^(-6);
ArmatureResistance = 1.8;
%Assume 775 termial resistance and inductance are same as BAG motor

RotorInertia = 0.6*0.36559545;
LoadInertia = 0;
LoadAndRotorInertia = LoadInertia+RotorInertia;
DampingConstant = (0.01^2)/1.8;
%Damping constant c is torqueConst*emfConstant/ArmatureResistance

kT = 0.01;
kEMF = 0.01;
%Assume kT = kEMF