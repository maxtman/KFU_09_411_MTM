uses PABCSystem;

var x,i,j,y1,y2,m,q:integer;
before, after: longint;
tbeg,tend:integer;
begin
read(x);
tbeg:=Milliseconds;
i:=1;
j:=0;
if (x>2) and (x mod 2=0) then 
  repeat 
    q:=i;
    m:=x-i;
    y1:=1;
    y2:=1;
    for j:=2 to round(sqrt(q)) do
      if q mod j=0 then y1:=0;
    if(y1=1) then for j:=2 to round(sqrt(m)) do
      if m mod j=0 then y2:=0; 
    if (y1=1) and (y2=1) then writeln(q,' ',m);
    if(i=2) then i:=i+1 //ускорение х 2 (за счет пропуска четных)
            else i:=i+2;
    until i>x/2; //ускорение х 2 (за счет отброса обратных пар чисел 3,5=5,3)
tend:=Milliseconds;
    writeln('Действие выполнялось ', tend-tbeg,' m секунды');
  end.