% path
path = 1:1:100;

% randomly generated holes
holes = randi([2,99],1,3);

% starting locations
player_1 = path(1);
player_2 = path(1);

% finding process 
while true
    dice_1 = randi([1,6],1);
    player_1 = player_1 + dice_1;

    if (player_1 == holes(1) || ...
            player_1 == holes(2) || ...
                player_1 == holes(3)) 

        player_1 = path(1);
    end
    
    dice_2 = randi([1,6],1);
    player_2 = player_2 + dice_2;

    if (player_2 == holes(1) || ...
            player_2 == holes(2) || ...
                player_2 == holes(3)) 

        player_2 = path(1);
    end


    if (player_1 >= 100)
        disp("Player 1 won!")
        break

    elseif(player_2 >=100)
        disp("Player 2 won!")
        break
    end
end








