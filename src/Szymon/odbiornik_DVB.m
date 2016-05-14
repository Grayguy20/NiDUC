
function [out] = odbiornik_DVB(signal_in, KEY, WORD,ZEROS)

  out = [];

  i = 0;
  frame_prt = 1;

  while length(WORD) + i <= length(signal_in)

    comp = signal_in(1 + i:length(WORD) + i);

    if isequal(comp,WORD)

      temp = signal_in(frame_prt:i);

      for j = 1 : length(temp) - ZEROS
    

        if ! any(temp(j:ZEROS+j-1))
          
          temp = [temp(1:j),shift(temp(j+1:end),1)];
        
        endif

      endfor

      out = [out,DVB(KEY,temp)];
      
      i += length(WORD) + 1;
      frame_prt = i;
      
    else
      
      ++i;

    endif
    
  endwhile

endfunction