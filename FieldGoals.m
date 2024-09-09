%% Despcription of project
% Finding compatable angles to make a field goal from 20deg-60deg
%% establish list of angles
angles = 20:5:60;
%% convert yd to m
rDX = 95 * .9144;
%gravity
g = 9.81;
%% For loop to index through each element and calculate velocity
% creates empty arrays to store the output of each loop
nVA = [];
vxa = [];
vya = [];
for idx = 1:9
    %Use law of sines to get the full required distance
    b = (sind(180-(angles(idx)+90)))/(sind(angles(idx))/3);
    %add the converted original delta x value to the additional distance
    %required to clear the field goal
    rd = rDX + b;
    %calculate the needed velocity to clear the field goal
    nV = sqrt((rd*g)/sind(angles(idx)));
    %find the x and y components of velocity
    vx = nV*cosd(angles(idx));
    vy = nV*sind(angles(idx));
    %appends data to the array each time the loop runs
    nVA = [nVA nV];
    vxa = [vxa vx];
    vya = [vya vy];
end

%% Plot the data

hold on
plot(angles, nVA, "o- r")
plot(angles, vxa, "o- b")
plot(angles, vya, "o- m")
xlabel("Angles from 20deg-60deg")
ylabel("Velocity needed to clear the goal post")
legend("Velocity", "X Component of Velocity", "Y Component of Velocity")
hold off

%% Make a table of the values

table = table(angles', nVA', vxa', vya', "VariableNames",["Angles", "Velocity", "x-Component of Velocity", "y-Component of Velocity"]);
