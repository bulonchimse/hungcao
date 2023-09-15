var f1,f2:text;
     i,j,max:longint;
     S,t:string;
     vtd,vtc: longint;
{-------------------------------------------------}
function kt(s:string):boolean;
var k:longint;
begin
     kt:=true;
     for k:=1 to length(s) div 2 do
           if S[k]<>S[length(s)+1-k] then kt:=false;
end;
{------------------------------------------------}

begin
     assign(f1,'chuoidx.inp'); reset(f1);
     assign(f2,'bai1.out'); rewrite(f2);
     read(f1,S);
     max:=1;
     for i:=1 to length(s)-1 do
     for j:=i+1 to length(s) do
           if kt(copy(s,i,j-i+1)) = true then
           if max < length(copy(s,i,j-i+1)) then
           begin
                max:=length(copy(s,i,j-i+1));
                t:=copy(s,i,j-i+1);
           end;
           writeln(f2,t);
           vtd:= pos(t,s);
           vtc:= length(s)-length(t);
           write(f2,length(t),' ',vtd,' ',vtc);
     close(f1);  close(f2);
end.
