tfunction [strength,rules] = typeStrength(peaks)

typeStregnthFIS = newfis('typeStregnthFIS');

%creates all inputs, adds them to the FIS and graphs them
figure(1)
typeStregnthFIS = newIn(typeStregnthFIS,1,5,'CO');
typeStregnthFIS = newIn(typeStregnthFIS,2,5,'C//O');
typeStregnthFIS = newIn(typeStregnthFIS,3,5,'OH*');
typeStregnthFIS = newIn(typeStregnthFIS,4,5,'NH');
typeStregnthFIS = newIn(typeStregnthFIS,5,5,'OH');

%creates all outputs, adds them to the FIS and grpahs them
figure(2)
typeStregnthFIS = newOut(typeStregnthFIS,1,5,'Alcohol');
typeStregnthFIS = newOut(typeStregnthFIS,2,5,'Ester');
typeStregnthFIS = newOut(typeStregnthFIS,3,5,'Carboxylic Acid');
typeStregnthFIS = newOut(typeStregnthFIS,4,5,'Amine');
typeStregnthFIS = newOut(typeStregnthFIS,5,5,'Keytone');

%The rules the system uses
Rule1 = [2 0 0 0 2  2 0 0 0 0  1 1];
Rule2 = [1 0 0 0 1  1 0 0 0 0  1 2];
Rule3 = [0 2 2 2 0  1 0 0 0 0  0.5 2];

Rule4 = [2 2 0 0 0  0 2 0 0 0  1 1];
Rule5 = [1 1 0 0 0  0 1 0 0 0  1 2];
Rule6 = [0 0 2 2 2  0 1 0 0 0  0.5 2];

Rule7 = [2 2 2 0 0  0 0 2 0 0  1 1];
Rule8 = [1 1 1 0 0  0 0 1 0 0  1 2];
Rule9 = [0 0 0 2 2  0 0 1 0 0  0.5 2];

Rule10= [0 0 0 2 0  0 0 0 2 0  1 1];
Rule11= [0 0 0 1 0  0 0 0 1 0  1 2];
Rule12= [1 1 1 0 1  0 0 0 1 0  0.5 2];

Rule13= [0 2 0 0 0  0 0 0 0 2  1 1];
Rule14= [0 1 0 0 0  0 0 0 0 1  1 2];
Rule15= [1 0 1 1 1  0 0 0 0 1  0.5 2];

ruleList = [Rule1; Rule2; Rule3; Rule4; Rule5; Rule6; Rule7; Rule8; Rule9; Rule10; Rule11; Rule12; Rule13; Rule14; Rule15];

typeStregnthFIS = addrule(typeStregnthFIS, ruleList); %add the rules to the system
rules = showrule(typeStregnthFIS);
typeStregnthFIS.defuzzMethod = 'centroid'; %set the defuzz method to centroid

strength = evalfis(peaks, typeStregnthFIS);%evaluate the FIS for the given data