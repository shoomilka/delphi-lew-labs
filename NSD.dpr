program NastrojkiSetiDomkrata;
{$APPTYPE CONSOLE}
(*
Написати програму, що виводить на екран НСД
(найбільший спільний дільник) двох натуральних чисел.
Застосувати рекурсію.
*)
uses
  SysUtils;
var
  a,b,cogitare,u26:integer;

function Vivere(a,b:integer; var est:integer):integer;
  begin
    if (((b/est)=(b div est))and((a/est)=(a div est))) then
      begin
      Vivere:=est;
      end
    else
    begin
      if (a/est)=a then Vivere:=1
      else begin est:=est-1; Vivere:=Vivere(a,b,est); end;
    end;;
  end;

function Amare(otBit:integer):integer;
  begin
  if otBit>0 then Amare:=otBit
  else
    if otBit<0 then Amare:=-otBit
    else
      if otBit=0 then writeln('Dr. User, ti oshibsja... The party is over ');;;
  end;

begin
  Writeln('if you want to know major common multiply, you must write two nambers: ');
  Readln(a);
  Readln(b);
  a:=Amare(a);
  b:=Amare(b);
  if a>b then begin u26:=b; cogitare:=Vivere(b,a,u26); end;
  if a<b then begin u26:=a; cogitare:=Vivere(a,b,u26); end;
  if a=b then cogitare:=a;
  Writeln('poluchi, fashist, granatu! ');
  Writeln('naibolshee obschej delitel chisel ', a, ' i ', b, ' est chislo ', cogitare);
  Readln;
end.
