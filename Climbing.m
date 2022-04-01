%For the climbing
%set the vars
%Cim for the CIM Motor climbing for just the situation of climbing
InputClimbing = 1;
loadInertiaClimbing = 6.12; %%see document ref
mechDampingConstantClimbing = 2; 
TerminalResistanceCim = 3;
TerminalInductanceCim = 122/1000000;
TorqueCoefCim = 18.803/1000;
TorqueDisturbanceCim = 0;
EMFCoefCim = 18.803/1000;
ResistorTF = 5/(2*pi*1); %E/(2*pi*N) E: reference voltage, N: # of avalible turns
load_system('ClimbSim.slx');
sim('ClimbSim.slx');
%Simulink.sdi.view;
%snap = Simulink.sdi.CustomSnapshot;
%snap.Rows = 1;
%snap.YRange = {[0, 100]};
%climbingPos = Simulink.sdi.snapshot("from", "custom", "to", "figure", "settings", snap)
plot(ans.ScopeData.time, ans.ScopeData.signals(2).values)
hold on
plot(ans.ScopeData.time, ans.ScopeData.signals(1).values)
hold off