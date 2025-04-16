clc
clear
format compact
Population=100;
a=[1:1:Population]';
c=[1:1:Population];
d=0.69 #Percentage
b=(1./c);
n=a*b;
m=(abs(d-n));
x=[];
y=[];
for i=1:numel(m)
  if (m(i)<0.005 == 1)
    x=[x,m(i)];
    y=[y,i];
  endif
end
j=ceil(y./Population);
[a,b]=min(j);
MinTotalAnsweredSurvey=a