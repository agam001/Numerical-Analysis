function [x,flops]=LowerTrianglarSolver(L,b)
% solves Lx=b for a lower triangular L
% assumes L is lower triangular
% f is the number of floating point operations performed

n=size(L,1);
x=zeros(n,1);
flops=0;

for i=1:n
    x(i)=b(i);
    for j=1:i-1
        x(i)=x(i)-L(i,j)*x(j);
        flops=flops+2;
    end
    x(i)=x(i)/L(i,i);
    flops=flops+1;
end