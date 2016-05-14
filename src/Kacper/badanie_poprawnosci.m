s = round(rand(1,500));
k = round(rand(1,16));
w = [8,8,8,8,8,8,8,8,8];

DANE=[];
i=1;
while i <= length(s)
temp_s = s;
N = nadajnik_DVB(temp_s,k,w,i);
N1 = odbiornik_DVB(N,k,w);

if mod(length(s),i) !=0
  temp_s=[temp_s,zeros(1,i-mod(length(s),i))];
endif

m = temp_s - N1;
zle = (sum(abs(m))+(length(N)-length(temp_s)));
dobrze = length(N) - zle;
temp_dane = dobrze/(dobrze+zle);
i++;
DANE = [DANE,temp_dane];
endwhile

DANE;

figure(1)
plot(DANE)
