
function [c,d]=zbroj_produkt(a,b)
if (nargin<2)
    error('Nedostaju parametri');
end

c=a+b;
d=a*b;