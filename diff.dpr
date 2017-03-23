program diff;
{$APPTYPE CONSOLE}
(*
4.	Задається одновимірний числовий масив.
Вивести на екран різні числа в масиві та підрахувати їх кількість.
Наприклад, в масиві (3,2,3) різних чисел два (2,3).
Мінімізувати обхід масиву
*)
uses
  SysUtils;

var amare,b1tl:array of integer;
  iMha,jLf:integer;
  bEar:boolean;
begin
  writeln('a napishi-ka mne kolichestvo chisel v massive...');
  readln(iMha);
  Setlength(amare,iMha);
  Setlength(b1tl,1);
  for iMha:=0 to length(amare)-1 do
    begin
      writeln('chto iz sebja predstavlyaet jachejka ', iMha+1, ' ?');
      readln(amare[iMha]);
    end;
  Writeln;
  for iMha:=0 to length(amare)-1 do
  begin
  bEar:=false;
    for jLf:=0 to iMha do
      begin
        if (amare[iMha]=b1tl[jLf])and(iMha<>jLf) then bEar:=true;
      end;
  if bEar=false then
    begin
      Setlength(b1tl,length(b1tl)+1);
      b1tl[length(b1tl)-1]:=amare[iMha];
    end;
  end;
writeln('poluchi-ka!');
  for iMha:=1 to length(b1tl)-1 do
    begin
      write(b1tl[iMha],', ');
    end;
readln;
end.
