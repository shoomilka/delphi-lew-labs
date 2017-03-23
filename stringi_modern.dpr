program stringi_modern;

{$APPTYPE CONSOLE}
uses
  SysUtils;

var
  Res,sChislo:string;
  i:integer;

function mono(a:string):string;
begin
Result:='';
    case a[1] of
    '1':Result:='one ';
    '2':Result:='two ';
    '3':Result:='tree ';
    '4':Result:='four ';
    '5':Result:='five ';
    '6':Result:='six ';
    '7':Result:='seven ';
    '8':Result:='eight ';
    '9':Result:='nine ';
    end;
end;

function decade(a:string):string;
var tempe:string;
begin
Result:='';
    case a[2] of
    '1':begin
        case a[1] of
        '1':Result:='eleven ';
        '2':Result:='twelve ';
        '3':Result:='trirteen ';
        '4':Result:='fourteen ';
        '5':Result:='fifteen ';
        '6':Result:='sixteen ';
        '7':Result:='seventeen ';
        '8':Result:='eighteen ';
        '9':Result:='nineteen ';
        end;
        end;
    '2':Result:='twenty '+mono(a[1]);
    '3':begin Result:='thirty '+mono(a[1]) end;
    '4':begin Result:='forty '+mono(a[1]) end;
    '5':begin Result:='fifty '+mono(a[1]) end;
    '6':begin Result:='sixty '+mono(a[1]) end;
    '7':begin Result:='seventy '+mono(a[1]) end;
    '8':begin Result:='eighty '+mono(a[1]) end;
    '9':begin Result:='ninety '+mono(a[1]) end;
    else Result:=mono(a[1]);
    end;
    if a[3]<>'0' then
    begin
      case a[3] of
      '1':
        begin
        tempe:='one hundred ';
        Result:=tempe+Result;
        end;
      '2'..'9','0':
        begin
        tempe:='hundreds ';
        Result:=mono(a[3])+tempe+Result;
        end;
      else Result:=mono(a);
        end;
    end;
end;

function oboroten(sLovo:string):string;
var i,j:integer; tempe:string;
begin
j:=length(sLovo);
tempe:=' ';
for i:=1 to (length(sLovo) div 2) do
  begin
    tempe[1]:=sLovo[j+1-i];
    sLovo[j+1-i]:=sLovo[i];
    sLovo[i]:=tempe[1];
  end;
Result:=sLovo;
end;

function universal(sChislo:string):string;
var i,j:integer; tempe:string;
begin
  Result:='';
  tempe:='';
  j:=1;
repeat
  case sChislo[j] of
  '1':
    begin
      if j=4 then
        begin
            for i:=j to length(sChislo) do
            begin
             tempe:=tempe+sChislo[i];
            end;
          Result:=tempe+'toughen '+decade(sChislo);
        end;
      if j=7 then Result:='million '+universal(sChislo);
    end
  '2'..'9','0':
    begin
      if ((sChislo[j]='0')and(sChislo[j+1]='0')and(sChislo[j+2]='0')) then begin end
      else
       begin
       if j=4 then Result:='toughens '+decade(sChislo);
        if j=7 then
        end;
     end;
  else Result:=decade(sChislo);
  end;




  Result:=decade(tempe)+Result;
  j:=j+1;
until (j=length(sChislo));
end;

begin
  Writeln('enter a number: ');
  read(Res);
  Res:=oboroten(Res);
  writeln(universal(sChislo));
  readln(i);
  writeln('shoomilka_tm_(c) ');
  readln;
  readln;
end.
end.
 