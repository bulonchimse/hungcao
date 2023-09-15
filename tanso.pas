var f1,f2:text;
    st:string;
    i,n,max,j: longint;
    s: array[1..1000] of string;
    A: array[0..256] of longint;
begin
    assign(f1,'tanso.inp'); reset(f1);
    assign(f2,'tanso.out'); rewrite(f2);
    readln(f1,n);
    for i:=1 to n do
      begin
         readln(f1,s[i]);
         st:= upcase(s[i]);
         for j:= 1 to length(st) do inc(A[Ord(St[j])]);
      end;
    max:= 0;
    for i:= 0 to 256 do
      if a[i] > max then max:= A[i];
    write(f2,max);
    close(f1); close(f2);
end.
