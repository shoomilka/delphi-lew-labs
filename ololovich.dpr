program ololovich;
{$APPTYPE CONSOLE}
uses
  SysUtils;

var
  m: array of integer;
  tempe:integer; i,n,j:integer;
begin
write('vvedite kol-vo chisel: ');
readln(n);
Setlength(m,n);
tempe:=0;
for i:=0 to length(m)-1 do
  begin
  writeln ('vvedite znachenie ', i, ' elementa');
  readln (m[i]);
  end;
for i:=0 to length(m)-1 do
  begin
    if m[i]=0 then
    begin
      for j:=i to length(m)-1 do
      begin
      tempe:=m[j+1];
      m[j+1]:=m[j];
      m[j]:=tempe;
      end;
    end;
  end;
for i:=0 to length(m)-1 do
  begin
  write(m[i], ' ');
  end;
readln;
end.


