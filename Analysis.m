function rules = Analysis(in)

ranges = [1000,1300,0;  %CO
          1640,1900,0;  %C//O
          2500,3300,1;  %OH*
          3200,3500,0;  %NH
          3200,3550,0.5]; %OH
          %Contains the staring and finishing wavelength (the range) of the groups
      
peaks = [0,0,0,0,0];

[x,] = size(ranges);
for i=1:x %goes through the ranges and finds the stregnth of each group
    peaks(i) = rangeMin(in(1:100,(4000-ranges(i,2):(4000-ranges(i,1)))), ranges(i,3));
end

[stregnths,rules] = typeStrength(peaks); %inputs the peaks to the FIS

%output the stregnth of each peak
fprintf('CO = %.f     ', peaks(1));
fprintf('C//O = %.f     ', peaks(2));
fprintf('OH* = %.f     ', peaks(3));
fprintf('NH = %.f     ', peaks(4));
fprintf('OH = %.f     \n', peaks(5));

%output the stregnth of each compounds functional group
fprintf('Alcohol = %.f%%     ', stregnths(1));
fprintf('Ester = %.f%%     ', stregnths(2));
fprintf('Carboxylic Acid = %.f%%     ', stregnths(3));
fprintf('Amine = %.f%%     ', stregnths(4));
fprintf('Ketone = %.f%%     \n', stregnths(5));