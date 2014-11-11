function is_simple(k:integer):boolean;
var i:integer;
begin
 Result:=TRUE;
 for i:=2 to round(sqrt(k)) do if k mod i = 0 then Result:=FALSE;
end;

var x,j,m,i:integer;
tbeg,tend:integer;
begin
read(x);
tbeg:=Milliseconds;
i:=2;
j:=0;
if (x>2) and (x mod 2=0) then 
  repeat 
    m:=x-i;
    if (is_simple(i)) then if (is_simple(m)) then writeln(i,' ',m);
    if i>2 then i:=i+2
           else i:=i+1;
    until i>x/2;
    tend:=Milliseconds;
    writeln('Run time: ', tend-tbeg,' msec');
  end.
  
  