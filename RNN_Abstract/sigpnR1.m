function squash=sigpnR1(x,range)
squash=range.*(1-exp(-x))./(1+exp(-x));