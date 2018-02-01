function [pop]=generation(n)
for i=1:n
    pop(i,:)=randperm(8);
end
end