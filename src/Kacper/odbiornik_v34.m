
function [out] = odbiornik_DVB(signal_in, KEY, WORD)

  out = [];

  i = 0;
  temp = [];

  while length(WORD) + i <= length(signal_in)

    comp = signal_in(1 + i:length(WORD) + i);

    if isequal(comp,WORD)

      out = [out,v34_d(KEY,temp)];
      temp = [];
      i += length(WORD);
      

      else
      
      temp = [temp,signal_in(1 + i)];
      i += 1;

    endif
    
  endwhile
 

endfunction