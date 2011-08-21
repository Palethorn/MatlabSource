%primjer m f-ije
%demo
X=-7.5:.5:7.5;
Y=X;
[X,Y]=meshgrid(X,Y);%formiranje matrice
R=sqrt(X.^2+Y.^2)+eps;
Z=sin(R)./R;
mesh(X,Y,Z)
