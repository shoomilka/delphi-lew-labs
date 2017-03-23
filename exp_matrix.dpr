program exp_matrix;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  a:array of array of integer;
  expo:array of array of real;
  tempe:array of array of real;
  i,j,k,m,n,p,fak:integer;
begin
	// THIS PROGRAM CALCULATES EXHIBITOR OF THE MATRIX
  writeln('Enter number of columns');
  Readln(i);
  writeln('Enter number of rows');
  Readln(j);
  Setlength(a,i);
  Setlength(expo,i);
  Setlength(tempe,i);
  for i:=0 to length(a)-1 do
    begin
      Setlength(a[i],j);
      Setlength(expo[i],j);
      Setlength(tempe[i],j);
      for k:=0 to length(a[i])-1 do
        begin
          writeln('Enter value of cell in ', i, ' row ', k, ' column');
          readln(a[i][k]);
          expo[i][k]:=1+a[i][k];
          tempe[i][k]:=a[i][k];
        end;
      writeln;
    end;
  if length(a)>length(a[1]) then
    begin
      Setlength(a,length(a[1]));
      Setlength(expo,length(a[1]));
      Setlength(tempe,length(a[1]))
    end
  else
    if length(a)<length(a[1]) then
      begin
        for i:=0 to length(a)-1 do
          begin
            Setlength(a[i],length(a));
            Setlength(expo[i],length(a));
            Setlength(tempe[i],length(a));
          end;
      end;
  //It is necessary to raise and divide into a factorial
  writeln('Enter calculation precision');
  readln(m);
  for k:=2 to m do
  begin
    p:=1;
    for fak:=1 to k do
      begin
        p:=p*fak;
      end;
    for i:=0 to length(a)-1 do
      begin
        for j:=0 to length(a[i])-1 do
          begin
            for n:=0 to length(a)-1 do
                begin
                  tempe[i][j]:=tempe[i][n]*a[n][j]/p;
                  expo[i][j]:=expo[i][j]+tempe[i][j];
                end;
            end;
        end;
    end;
  for i:=0 to length(a)-1 do
    begin
      for j:=0 to length(a[i])-1 do
        begin
          write(' ', a[i][j]);
        end;
    writeln;
    end;
writeln('Get your matrix!');
  for i:=0 to length(a)-1 do
    begin
      for j:=0 to length(a[i])-1 do
        begin
          write(' ', expo[i][j]:10:2);
        end;
    writeln;
    end;
readln;
end.
