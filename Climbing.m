%For the climbing
%set the vars
%Cim for the CIM Motor climbing for just the situation of climbing
InputClimbing = 1;
loadInertiaClimbing = 0.2;
mechDampingConstantClimbing = 0.01; 
TerminalResistanceCim = 3;
TerminalInductanceCim = 122/1000000;
TorqueCoefCim = 18.803/1000;
TorqueDisturbanceCim = 0;
EMFCoefCim = 18.803/1000;
load_system('ClimbSim.slx');
sim('ClimbSim.slx');
Simulink.sdi.view;
climbingPos = Simulink.sdi.snapshot("from", "opened", "to", "figure")