function [out] = odbiornik_DVB(signal_in, KEY, WORD)

  out = [];
  temp = [];
  i = 1;

  while  i + length(WORD)-1 <= length(signal_in)

    comp = signal_in(i: i + length(WORD) - 1);
    
    if isequal(comp,WORD)
      DVB(KEY,temp)
      out = [out, DVB(KEY,temp)];
      temp = [];
      i += length(WORD);

    else

    temp = [temp, signal_in(i++)];

  endif
    
  endwhile

endfunction
