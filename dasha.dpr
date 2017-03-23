program dasha;
{$APPTYPE CONSOLE}
uses
  SysUtils;

var k,s,tempe:string; m,i,j:integer;
begin
  write('vvedite predlojenie: ');
  readln(s);
  write('vvedite iskomuju bukvu: ');
  readln(k);
  m:=0;
  for i:=0 to length(s) do
  begin
    if (s[i]=' ')xor(i=0) then
      if s[i+1]=k then
        begin
          j:=i;
          tempe:='';
          repeat
          tempe:=tempe+s[j+1];
          j:=j+1;
          until((s[j]=' ')xor(j=length(s)+1));
          write(tempe, ' ');
          m:=m+1;
        end;;
  end;
  writeln;
  write('ix chislo ravno: ', m);
  readln;
end.
