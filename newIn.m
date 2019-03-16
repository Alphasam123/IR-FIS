function newFIS = newIn(oldFIS, num, max, name)
%adds a variable and its membership functions to the FIS for an input
newFIS = oldFIS;

newFIS = addvar(newFIS, 'input', name, [0, 100]);
newFIS = addmf(newFIS, 'input', num, 'low', 'gaussmf', [40 0]);
newFIS = addmf(newFIS, 'input', num, 'high', 'gaussmf', [25 100]);
subplot(max,1,num), plotmf(newFIS, 'input', num) %plots the new var on the graph