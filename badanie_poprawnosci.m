s = round(rand(1,999));
k = round(rand(1,16));
w = [8,8,8,8,8,8,8,8,8];

DANE=[];
i=1;
while i <= length(s)
temp_s = s;
N = nadajnik_DVB(temp_s,k,w,i);
N1 = odbiornik_DVB(N,k,w);

temp_s=[temp_s,zeros(1,n-mod(length(temp_s),n))];

m = temp_s - N1;
zle = (sum(abs(m))+(length(N)-length(temp_s)));
dobrze = length(N) - zle;
temp_dane = dobrze/(dobrze+zle);
i++;
DANE = [DANE,temp_dane];
endwhile

DANE

figure(1)
plot(DANE)
