function [index]=selectionindex(cost, number)
n=numel(cost);
k=3;
for i=1:number
    a=randperm(8,3);
    [j t]=max(cost(a));
    index(i)=a(t);
end
end