program integral_for;
{$APPTYPE CONSOLE}
(*
Написати програму, яка розраховує значення заданого інтегралу;
*)
uses
  SysUtils;
const
  a=4;
  b=9;

function Vitviavi(x:real):real;
  begin
    Vitviavi:=exp(0.5*ln(x));
    Vitviavi:=(x+1)/Result;
  end;

var {a,b,}n,i:integer;
    Dum,deltax,tempora,spiro:real;
begin
   // writeln('vvedite levuju granizzu');
  //  readln(a);
   // writeln('vvedite pravuju granizzu');
  //  readln(b);
    writeln('vvedite znachenie tochnosti');
    readln(n);
    deltax:=(b-a)/n;
    Dum:=0;
    tempora:=a+(deltax/2);
    for i:=1 to n do
        begin
        Dum:=Dum+Vitviavi(tempora);
        tempora:=tempora+deltax;
        end;
    Spiro:=Dum*deltax;
    writeln('Znachenie integrala = ', Spiro:10:10);
    readln;
end.