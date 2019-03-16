function chance = rangeMin(range, offset)

[pos,] = find(range<=128); %find the position of each pixel that is dark (grayscale 0-255 anything above 128)

row = 100 - rem(pos, 100); %finds the row of each pixel (colomn is not needed)

average = (100 - mean(row)) * (offset); %finds the average row of all pixels
point = (max(row) - min(row)) * (1-offset); %finds the 'pointyness' of each range (the difference between the lowest and highest values)

chance = average + point; %adds the average and point together to find the chance