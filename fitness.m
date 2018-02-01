function [cost]=fitness(pop)
    [n, m]=size(pop);
    cost=zeros(n,1);
    for k=1:n
        temp=pop(k,:);
        for i=1:m-1
            for j=i+1:m
                if(abs(temp(i)-temp(j)) == abs(i-j))
                    cost(k)=cost(k)+1;
                end
            end
        end
    end
end