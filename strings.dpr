program stringi;
{$APPTYPE CONSOLE}
uses
  SysUtils;
var
  dRes,sChislo:string;

function mini(b:string):string;
begin
    case b[1] of
    '1':mini:='one ';
    '2':mini:='two ';
    '3':mini:='tree ';
    '4':mini:='four ';
    '5':mini:='five ';
    '6':mini:='six ';
    '7':mini:='seven ';
    '8':mini:='eight ';
    '9':mini:='nine ';
    end;
end;

function leo(a:string):string;
var tempe:string;
begin
    case a[2] of
    '1':case a[1] of
        '1':leo:='eleven ';
        '2':leo:='twelve ';
        '3':leo:='trirteen ';
        '4':leo:='fourteen ';
        '5':leo:='fifteen ';
        '6':leo:='sixteen ';
        '7':leo:='seventeen ';
        '8':leo:='eighteen ';
        '9':leo:='nineteen ';
        end;
    '2':begin leo:='twenty '+mini(a[1]); end;
    '3':begin leo:='thirty '+mini(a[1]); end;
    '4':begin leo:='forty '+mini(a[1]); end;
    '5':begin leo:='fifty '+mini(a[1]); end;
    '6':begin leo:='sixty '+mini(a[1]); end;
    '7':begin leo:='seventy '+mini(a[1]); end;
    '8':begin leo:='eighty '+mini(a[1]); end;
    '9':begin leo:='ninety '+mini(a[1]); end;
    end;
    case a[3] of
    '0'..'9':
    begin
      case a[3] of
      '1':
        begin
        leo:='one hundred '+Result;
        end;
      '2'..'9','0':
        begin
        tempe:='hundreds ';
        leo:=mini(a[3])+tempe+Result;
        end;
      end;
    end;
end;
end;

function fak(KriSS:string):string;
var con:integer; amaRes:Double;
const fi=26;
begin
  con:=StrToInt(Kriss);
  amaRes:=con*pi*exp(fi);
  amaRes:=ln(amaRes)-fi;
  con:=trunc(2*exp(amaRes)/pi);
  con:=(con+1) div 2;
  Result:=IntToStr(con);
  writeln(Result);
end;

function amantes(amentes:string):string;
var i,j:integer; sUnt:string;
begin
j:=length(amentes);
sUnt:=' ';
for i:=1 to (length(amentes) div 2) do
  begin
    sUnt[1]:=amentes[j+1-i];
    amentes[j+1-i]:=amentes[i];
    amentes[i]:=sUnt[1];
  end;
Result:=amentes;
end;

function wincit(amare:string):string;
var iamor:integer; somnia:string;
begin
  somnia:='';
  case amare[4] of
  '1': wincit:='toughen '+leo(amare);
  '2'..'9','0':
    begin
    if ((amare[4]='0')and(amare[5]='0')and(amare[6]='0')) then begin end
    else wincit:='toughens '+leo(amare);
    end;
  else wincit:=leo(amare);
  end;
  for iamor:=4 to length(amare) do
    begin
    somnia:=somnia+amare[iamor];
    end;
  wincit:=leo(somnia)+Result;
end;

function Divide(sChislo:string):string;
var impera:string;
    et:integer;
begin
  impera:='';
  case sChislo[7] of
  '1': Result:='million '+wincit(sChislo);
  '2'..'9','0':
    begin
      if ((sChislo[7]='0')and(sChislo[8]='0')and(sChislo[9]='0')) then begin end
      else Result:='millions '+wincit(sChislo);
    end;
  end;
  for et:=7 to length(sChislo)+1 do
    begin
    impera:=impera+sChislo[et];
    end;
  Result:=leo(impera)+Result;
end;

function mehanoi(caecuS:string):string;
var sAmor:string;
    i:integer;
begin
  case caecuS[10] of
  '1': Result:='milliard '+Divide(caecuS);
  '2'..'9','0':
    begin
      if ((caecuS[7]='0')and(caecuS[8]='0')and(caecuS[9]='0')) then begin end
      else Result:='milliards '+Divide(caecuS);
    end;
  end;
 for i:=10 to length(caecuS)+1 do
    begin
    Samor:=Samor+caecuS[i];
    end;
  Result:=leo(Samor)+Result;
end;

function dimicandum(uShu:string):string;
var i:integer; mouSe:string;
begin
  case uShu[13] of
  '1': Result:='trillion '+mehanoi(uShu);
  '2'..'9','0':
    begin
      if ((uShu[10]='0')and(uShu[11]='0')and(uShu[12]='0')) then begin end
      else Result:='trillions '+mehanoi(uShu);;
    end;
  end;
 for i:=13 to length(uShu)+1 do
    begin
    mouSe:=mouSe+uShu[i];
    end;
  Result:=leo(mouSe)+Result;
end;

begin
  Writeln('enter a number: ');
  read(dRes);
  dRes:=amantes(dRes);
  case length(dRes) of
  1: begin
    dRes:=fak(dRes);
    sChislo:=mini(dRes);
    end;
  2,3: begin
    dRes:=fak(dRes);
    sChislo:=leo(dRes);
    end;
  4..6: begin sChislo:=wincit(dRes); end;
  7..9: begin sChislo:=Divide(dRes); end;
  10..12: begin sChislo:=mehanoi(dRes); end;
  13..15: begin sChislo:=dimicandum(dRes); end;
  end;
  writeln(sChislo);
  readln;
  writeln('(c)');
  readln;
end.
