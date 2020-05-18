% werewolf/mafia sim
R = 8; %residents, players
M = 1; %mafiosos
D = 0; %peelers
vcond = 0; %victory condition, 1=citizens, 2=mafia
rounds = 0;

while (not(vcond))
    rounds = rounds+1;
    %murder
    R=R-1;
    %hang
    target = randi(R)
    if (target <= M)
        M = M-1
    end
    R = R-1        
    %eval
    if (M == 0)
        vcond=1;
    elseif (M >= R/2)
        vcond = 2;
    end
end
disp("number of rounds: " + rounds)
switch (vcond)
    case 1
        disp("citizens persevere")
    case 2
        disp("mafia wins")
end