var f1,f2: text;
    st1,st2: string;
    dem,i: longint;
begin
    assign(f1,'xaucon.inp'); reset(f1);
    assign(F2,'xaucon.out'); rewrite(f2);
    readln(f1,st1);
    readln(f1,st2);
    dem:= 0;
    for i:= 1 to length(st2)-length(st1) +1 do
    begin
      if copy(st2,i,length(st1))= st1  then inc(dem);
      end;
    write(f2,dem);
    close(f1); close(f2);
end.