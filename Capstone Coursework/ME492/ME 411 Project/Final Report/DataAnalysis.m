close all


%% Temp Plots

% Dry Run
figure(1) 
plot(Time_DR1,Front_DR1,'b-','MarkerSize',10)
xlim([0,70])
hold on
xlabel('Time (seconds)')
ylabel('Temperature(^\circC)')
%title('Test 1')
plot(Time_DR1,Back_DR1,'r-','MarkerSize',10)
hold off
legend('Motor Front', 'Motor Back')

%% Dry vs cooled

figure(1) 
subplot(1,2,1)
plot(Time_DR1,Front_DR1,'b-','MarkerSize',10)
xlim([0,70])
hold on
xlabel('Time (seconds)')
ylabel('Temperature(^\circC)')
title('Dry Run')
%title('Test 1')
plot(Time_DR1,Back_DR1,'r-','MarkerSize',10)
hold off
legend('Motor Front', 'Motor Back')
subplot(1,2,2)
plot(Time__F1,Front_F1,'b-','MarkerSize',10)
xlim([0,70])
ylim([25,60])
title('Water Cooled Run')
hold on
xlabel('Time (seconds)')
ylabel('Temperature(^\circC)')
%title('Test 1')
plot(Time_F2,Back_F2,'r-','MarkerSize',10)
hold off
legend('Motor Front', 'Motor Back')

%% Back Jacket

figure(2) 
subplot(2,1,1)
plot(Time_B1,Front_B1,'r-','MarkerSize',10)
xlim([0,240])
hold on
xlabel('Time (seconds)')
ylabel('Temperature(^\circC)')
title('Test 1')
plot(Time_B1,Back_B1,'b-','MarkerSize',10)
hold off
legend('Motor Front', 'Motor Back')

subplot(2,1,2)
plot(Time_B2,Front_B2,'r-','MarkerSize',10)
xlim([0,240])
hold on
xlabel('Time (seconds)')
ylabel('Temperature(^\circC)')
title('Test 2')
plot(Time_B2,Back_B2,'b-','MarkerSize',10)
hold off

%% Front Jacket
figure(3) 
subplot(2,1,1)
plot(Time__F1,Front_F1,'b-','MarkerSize',10)
xlim([0,80])
hold on
xlabel('Time (seconds)')
ylabel('Temperature(^\circC)')
title('Test 1')
plot(Time__F1,Back_F1,'r-','MarkerSize',10)
hold off
legend('Motor Front', 'Motor Back')

subplot(2,1,2)
plot(Time_F2,Front_F2,'b-','MarkerSize',10)
xlim([0,240])
hold on
xlabel('Time (seconds)')
ylabel('Temperature(^\circC)')
title('Test 2')
plot(Time_F2,Back_F2,'r-','MarkerSize',10)
hold off

%% Front Jacket
figure(4) 
subplot(2,1,1)
plot(Time_C1,Front_C1,'r-','MarkerSize',10)
xlim([0,240])

ylim([0,60])
hold on
xlabel('Time (seconds)')
ylabel('Temperature(^\circC)')
title('Test 1')
plot(Time_C1,Back_C1,'b-','MarkerSize',10)
hold off
legend('Motor Front', 'Motor Back')

subplot(2,1,2)
plot(Time_C2,Front_C2,'r-','MarkerSize',10)
xlim([0,240])
ylim([0,60])
hold on
xlabel('Time (seconds)')
ylabel('Temperature(^\circC)')
title('Test 2')
plot(Time_C2,Back_C2,'b-','MarkerSize',10)

%% Heat Transfer Analysis

figure(5) 
plot(Time_Short,Q_1,'b-','MarkerSize',10)
xlim([0,240])
hold on
xlabel('Time (seconds)')
ylabel('Heat Transfer Rate (Watts)')
%title('Test 1')
plot(Time,Q_2,'r-','MarkerSize',10)
plot(Time,Q_3,'k-','MarkerSize',10)
plot(Time,Q_4,'m-','MarkerSize',10)
plot(Time,Q_5,'c-','MarkerSize',10)
plot(Time,Q_6,'g-','MarkerSize',10)
hold off
legend('Test 1', 'Test 2', 'Test 3', 'Test 4','Test 5','Test 6')



%% Subplot

figure(6) 
subplot(2,3,1)
plot(Time_B1,Front_B1,'r-','MarkerSize',10)
xlim([0,240])
hold on
xlabel('Time (seconds)')
ylabel('Temperature(^\circC)')
title('Test 1 (Front Cooled)')
plot(Time_B1,Back_B1,'b-','MarkerSize',10)
hold off
legend('Motor Front', 'Motor Back')
subplot(2,3,2)
plot(Time_B2,Front_B2,'r-','MarkerSize',10)
xlim([0,240])
hold on
xlabel('Time (seconds)')
ylabel('Temperature(^\circC)')
title('Test 2 (Front Cooled)')
plot(Time_B2,Back_B2,'b-','MarkerSize',10)
hold off
subplot(2,3,3)
plot(Time__F1,Front_F1,'r-','MarkerSize',10)
xlim([0,80])
hold on
xlabel('Time (seconds)')
ylabel('Temperature(^\circC)')
title('Test 3 (Rear Cooled)')
plot(Time__F1,Back_F1,'b-','MarkerSize',10)
hold off
subplot(2,3,4)
plot(Time_F2,Front_F2,'r-','MarkerSize',10)
xlim([0,240])
hold on
xlabel('Time (seconds)')
ylabel('Temperature(^\circC)')
title('Test 4 (Rear Cooled)')
plot(Time_F2,Back_F2,'b-','MarkerSize',10)
hold off 
subplot(2,3,5)
plot(Time_C1,Front_C1,'r-','MarkerSize',10)
xlim([0,240])
ylim([0,60])
hold on
xlabel('Time (seconds)')
ylabel('Temperature(^\circC)')
title('Test 5 (Center Cooled)')
plot(Time_C1,Back_C1,'b-','MarkerSize',10)
hold off
subplot(2,3,6)
plot(Time_C2,Front_C2,'r-','MarkerSize',10)
xlim([0,240])
ylim([0,60])
hold on
xlabel('Time (seconds)')
ylabel('Temperature(^\circC)')
title('Test 6 (Center Cooled)')
plot(Time_C2,Back_C2,'b-','MarkerSize',10)

%% Power Plot

t=linspace(0,240,31);
t_s =linspace(0,90,31);
plot(t_s,FrontJacketRun1,'b^','MarkerSize',3)
xlim([0,240])
hold on
xlabel('Time (seconds)')
ylabel('Power Output Reading (Watts)')
%title('Test 1')
plot(t,FrontJacketRun2,'rx','MarkerSize',5)
plot(t,RearJacketRun1,'kd','MarkerSize',5)
plot(t,RearJacketRun2,'mo','MarkerSize',5)
plot(t,CenterJacketRun1,'c.','MarkerSize',12)
plot(t,CenterJacketRun2,'g+','MarkerSize',5)
hold off
legend('Test 1', 'Test 2', 'Test 3', 'Test 4','Test 5','Test 6')

