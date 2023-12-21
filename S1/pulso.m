function y = pulso(n)
  y = ones(1, n.*(isnumeric(n) && n>0 && mod(n,1)==0));
end
