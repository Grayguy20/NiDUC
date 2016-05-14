s = round(rand(1,1000));
k = round(rand(1,16));
w = [8,8,8,8,8];

n = 4;
z = 5;

if mod(length(s),n)
	s(end + n - mod(length(s),n)) = 0;
endif


s;
S = nadajnik_DVB(s,k,w,n);
S1 = odbiornik_DVB(S,k,w,z);

s - S1
