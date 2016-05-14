function [out] = nadajnik_DVB(signal_in, KEY, WORD, N)

  out = [];
  
  i = 0;

%    if mod(length(signal_in),N)
%      signal_in(end + N - mod(length(signal_in),N)) = 0;
%    endif

  for i = 0:length(signal_in)/N - 1;
     
    sp = N * i + 1;
    ep = N * (i + 1);
    
    temp = DVB(KEY,signal_in(sp:ep));
    
    out = [out,temp,WORD];
  
  endfor
  
endfunction