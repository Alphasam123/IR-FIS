function newFIS = newOut(oldFIS, num, max, name)
%adds a variable and its membership functions to the FIS for an input
newFIS = oldFIS;

newFIS = addvar(newFIS, 'output', name, [0, 100]);
newFIS = addmf(newFIS, 'output', num, 'low', 'gaussmf', [15 0]);
newFIS = addmf(newFIS, 'output', num, 'high', 'gaussmf', [40 100]);
subplot(max,1,num), plotmf(newFIS, 'output', num) %plots the new var on the graph