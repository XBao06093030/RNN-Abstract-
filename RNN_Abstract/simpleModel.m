function x_dot = simpleModel(x,u)
m = 1;
k = 1;
c = 0.5;

x_dot = [0 1; -k/m -c/m]*x + [0; 1/m]*u;
end
