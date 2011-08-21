x=-7.5:.5:7.5;
y=x;
[x,y]=meshgrid(x,y);
R=sqr(x.^2+y)+eps;
Z=sin(R)./R;
mesh(x,y,z)