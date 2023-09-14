var f1,f2: text;
    a: array[1..100000] of longint;
    f:array[0..100000] of longint;
    n,i,j,t,k,u,v,d:longint;
begin
        assign(f1,'daylt.inp');  reset(f1);
        assign(f2,'daylt.out');  rewrite(f2);
        readln(f1,n);
        f[0]:=0;
        for i:=1 to n do
        read(f1,a[i]);
        for i:=1 to n do
                f[i]:=f[i-1]+A[i];
        readln(f1,t);
        for k:=1 to t do
                begin
                        d:=0;
                         readln(f1,u,v);
                         d:=f[v]-f[u-1];
                         writeln(f2,d);
                end;
        close(f1);   close(f2);
end.
