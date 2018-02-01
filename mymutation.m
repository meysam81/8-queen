function off=mymutation(par)
n=numel(par);
i=randi([1 n] [1 2]);
temp=par(i(1));
par(i(1))=par(i(2));
par(i(2))=temp;
off=par;
end