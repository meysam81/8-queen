function [newch1 newch2]=mycrossover(par1 ,par2)
    n=numel(par1);
    i=randi([2 n-1]);
    ch1=[par1(1:i) par2(i+1:end)];
    ch2=[par2(1:i) par1(i+1:end)];
    %%
    newch1=zeros(1,8);
    newch2=zeros(1,8);
    %%
    [temp1 ia1 ic1]=unique(ch1, 'stable');
    [temp2 ia2 ic2]=unique(ch2, 'stable');
    newch1(ia1)=temp1;
    newch2(ia2)=temp2;
    %%
    for j=i+1:n
       if(~(ismember(par1(j),newch1)))
          for l=i+1:n
             if(newch1(l)==0)
                 newch1(l)=par1(j);
                 break;
             end
          end
       end
    end
    %%
    for j=1:i
       if(~(ismember(par1(j),newch2)))
          for l=i+1:n
             if(newch2(l)==0)
                 newch2(l)=par1(j);
                 break;
             end
          end
       end
    end
    %%
end