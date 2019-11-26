 ANSWER
% --------
yi=real(yr);  yq=imag(yr);  % in phase & quadrature components
l=[-3:2:3];
for n=1:length(yi)
   [m,j]=min(abs(l-yi(n)));
   yi(n)=l(j);
   [m,j]=min(abs(l-yq(n)));
   yq(n)=l(j);
end
scatterplot(yi+1i*yq);
err=not(y==(yi+1i*yq));
errors=sum(err);
BER=errors/(length(y))/mb;

