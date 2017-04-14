function [ Wind ] = ComplexRandWind(nTraj,paras)

a = paras(1);
M = 1.5*a;
r = rand(1,nTraj)*M;

ri = r < a;
Wind(ri) = r(ri);

rin = ~ri;           
A = -1/(2*a);
B = 2;
C = -(r(rin)+a/2);
Wind(rin) = (-B + sqrt(B*B - 4*A*C))/(2*A);

end