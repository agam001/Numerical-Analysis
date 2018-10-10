function [L,U]=genp(A)
% computes the decomposition A=LU from Gaussian elimination 
% with no pivoting

n=size(A,1);
L=eye(n);

for j=1:n-1    % columns 1 through n-1
    for i=j+1:n
        L(i,j)=A(i,j)/A(j,j);     % this is our multiplier
        A(i,j+1:n)=A(i,j+1:n)-L(i,j)*A(j,j+1:n);
        A(i,j)=0;
    end
end
U=A;