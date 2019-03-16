clc

inputs = ['data\cslow.jpg           ';
          'data\cshigh.jpg          ';
          %'data\cswhite.jpg         '; %uncomment to view
          'data\csblack.jpg         ';
          'data\ir1-aminobutane.jpg ';
          'data\irethanol.jpg       ';
          'data\irethylethanoate.jpg';
          'data\irpropanone.jpg     ';
          'data\irlacticacid.jpg    '];
           %all 5 test data input files in a matrix

[x,] = size(inputs);
for i=1:x %cycles through matrix rows
    fprintf('\ncurrent file: %s\n', inputs(i,:)); %prints out the current file being analysed
    rules = Analysis(imread(inputs(i,:))); %calls analysis with the file given
end

rules %prints out thes rules