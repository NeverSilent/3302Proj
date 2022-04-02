%For the climbing
%set the vars
%Cim for the CIM Motor climbing for just the situation of climbing
InputClimbing = 1;
%for total inertia, there are some gear ratios that reduce the torque seen
%at the motors and there is also inertia from the rotor of the motor. For
%this transfer function the load inertia will be divided by 2 and the gear ratio
%and then the rotor inertia will be added on.
loadInertiaClimbing = 6.12 / (2*12.75) + (1.27*0.6*(0.0254^2))/2; %%see document ref
TerminalResistanceCim = 3;
TerminalInductanceCim = 122/1000000;
TorqueCoefCim = 18.803/1000;
TorqueDisturbanceCim = 0;
EMFCoefCim = 18.803/1000;
mechDampingConstantClimbing = (TorqueCoefCim * EMFCoefCim) / TerminalResistanceCim; %%see document ref
ResistorTF = 5/(2*pi*1); %E/(2*pi*N) E: reference voltage, N: # of avalible turns
load_system('LaunchSim.slx');
sim('LaunchSim.slx');
%Simulink.sdi.view;
%snap = Simulink.sdi.CustomSnapshot;
%snap.Rows = 1;
%snap.YRange = {[0, 100]};
%climbingPos = Simulink.sdi.snapshot("from", "custom", "to", "figure", "settings", snap)
plot(ans.ScopeData.time, ans.ScopeData.signals(2).values)
hold on
plot(ans.ScopeData.time, ans.ScopeData.signals(1).values)
hold off