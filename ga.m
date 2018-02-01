function ga
%%
n=100;
pc=0.85;
pm=0.10;
mg=100;
nc=n*pc;
if(mod(nc,2)~=0)
    nc=nc+1;
end
nm=n*pm;
ne=n-(nc+nm);
%%
pop=generation(n);
cost=fitness(pop);
[cost, index]=sort(cost,'ascend');
pop=pop(index, :);
%%
for iter=1:mg
    expop=pop(1:ne,:);
    index=selectionindex(cost,nc);
    crosspop=[];
    for i=1:2:nc
        par1=pop(index(i),:);
        par2=pop(index(i+1),:);
        [ch1, ch2]=mycrossover(par1, par2);
        crosspop=[crosspop;ch1;ch2];
    end
    mutpop=generation(nm);
    pop=[expop;crosspop;mutpop];
    cost=fitness(pop);
    [cost index]=sort(cost,'ascend');
    pop=pop(index, :);
    bestcost(iter)=cost(1);
end
%%
[n m]=size(pop);
finalcost=cost(1)
res=pop(1,:)
result=zeros(m,m);
for i=1:m
    result(res(i),i)=1;
end
result
end