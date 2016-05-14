s = round(rand(1,500));
k = round(rand(1,16));
w = [8,8,8,8,8];

z = 5;

DANE=[];

for i = 1 : length(s);

	s1 = s;

	fprintf(2,'Numer serii: %d \n', i)

	if mod(length(s1),i)
		s1(end + i - mod(length(s1),i)) = 0;
	endif

	S = nadajnik_DVB(s1,k,w,i);
	S1 = odbiornik_DVB(S,k,w,z);

	m = s1 - S1;

	zle = nnz(m) + length(S) - length(s1);
	dobrze = length(S) - zle;

	DANE(end+1) = dobrze/(dobrze+zle);

endfor

figure(1)
plot(DANE)
