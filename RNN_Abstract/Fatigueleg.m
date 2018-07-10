function xdot = Fatigueleg(x,u,p1,p2,w,t)

alpha = p1(1);
beta = p1(2);
phieq = p1(3);
phik0 = p1(4);
d11 = p1(5);
d12 = p1(6);
d13 = p1(7);
d14 = p1(8);

p9New = 0.25*(p2(9)-p1(9))+p1(9);
d15 = 0.5*(p9New+p1(9))+0.5*(p9New-p1(9))*sin(w*(t-pi/2/w));%p1->p9New
% d15 = p1(9);

p10New = 0.10*(p2(10)-p1(10))+p1(10);
d16 = 0.5*(p10New+p1(10))+0.5*(p10New-p1(10))*sin(w*(t-pi/2/w));%p1->p10New
% d16 = p1(10);

c23 = p1(11);
c22 = p1(12);

p13New = 0.10*(p2(13)-p1(13))+p1(13);
c21 = 0.5*(p13New+p1(13))+0.5*(p13New-p1(13))*sin(w*(t-pi/2/w));%p1->p13New
% c21 = p1(13);

c20 = p1(14);
taua = p1(15);
mumin = p1(16);
Tf = p1(17);
Tr = p1(18);


%% Function of the Dynamics

% Solve for the anatomical knee joint angle
q = x(1)+phieq;
qd = x(2);

% Function of the dynamics
xdot = [qd;...
    beta*cos(q)+alpha*(u(1)-(c22*q^2+c21*q+c20)*(1+c23*qd)*x(3)*x(4)-...
    (d11*(q-phik0)+d12*qd+d13*exp(q*d14)-d15*exp(q*d16)));...
    (u(2)-x(3))/taua;...
    (mumin-x(4))*x(3)/Tf+(1-x(4))*(1-x(3))/Tr];
end
