program menu;
Uses crt;
Label 1;
var m:string;
    yn:char;
    x,y,z,min,max,ucet,sucet,hm:integer;

begin
1:Clrscr;
textcolor (lightred);
GotoXy (4,2);
writeln ('1.Minimum');
textcolor (green);
GotoXy (4,3);
writeln ('2.Maximum');
textcolor (yellow);
GotoXy (4,4);
writeln ('3.Random');
textcolor (lightgray);
GotoXy (4,5);
writeln ('4.Stav uctu');
textcolor (lightgreen);
GotoXy (4,6);
writeln ('5.Nosnost vytahu');
textcolor (white);
GotoXy (4,7);
writeln ('6.Koniec programu');
GotoXy (4,9);
Write ('Vyber si ktory program chces zapnut cislom:');
m:=Readkey;
if m='1' then
begin
clrscr;
textcolor (lightred);
writeln ('Zadaj pocet cisel z ktorych chces minimum');
readln (x);
min:=10000;
y:=0;
repeat
  writeln ('Zadaj hodnotu cisla');
  readln (z);
if z<min then min:=z;
y:=y+1;
until y=x;
writeln ('Minimum je ',min,'');
write ('Stlac ENTER pre vratenie sa do menu');
Readkey;
Goto 1;
end;
if m='2' then
begin
Clrscr;
textcolor (green);
writeln ('Zadaj pocet cisel z ktorych chces vediet maximum');
readln (x);
max:=0;
y:=0;
while y<x do
begin
writeln ('Zadaj hodnotu cisla');
  readln (z);
if z>max then max:=z;
y:=y+1;
end;
writeln ('Maximum je ',max,'');
write ('Stlac ENTER pre vratenie sa do menu');
Readkey;
Goto 1; 
end;
if m='3' then
begin
Clrscr;
textcolor (yellow);
randomize;
x:=random (20);
repeat
writeln ('Zadaj cislo');
readln (y);
if y>x then writeln ('Menej');
if y<x then writeln ('Viac');
until y=x;
writeln ('Uhadol si cislo');
write ('Stlac ENTER pre vratenie sa do menu');
Readkey;
Goto 1;
end;
if m='4' then
begin
Clrscr;
textcolor (lightgray);
writeln ('Kolko eur mas na ucte ?');
readln (ucet);
sucet:=0;
while sucet<ucet do
begin
writeln ('Kolko platis v obchode ?');
readln (x);
sucet:=sucet+x;
write ( );
if sucet<ucet then
writeln ('Na ucte mas ',(ucet-sucet),'eur');
end;
y:=sucet-ucet;
writeln ('Nemas dost penazi na ucte');
if y>0 then writeln ('Musis v obchode vratit veci v hodnote ',y,'eur');
write ('Stlac ENTER pre vratenie sa do menu');
Readkey;
Goto 1;
end;
if m='5' then
begin
clrscr;
textcolor (lightgreen);
writeln ('Zadaj nosnost vytahu');
readln (x);
sucet:=0;
 while sucet<x do
  begin
  writeln ('Zadaj hmotnost baliku (kilogramy)');
  read (hm);
  sucet:=sucet+hm;
  end;
 y:=sucet-x;
 writeln ('Vytah je pretazeny o ',y,'kg');
 if y>0 then writeln ('Vyberte z vytahu baliky s hmotnostou aspon ',y,'kg');
 write ('Stlac ENTER pre vratenie sa do menu');
 Readkey;
Goto 1;
end;
if m='6' then
begin
Clrscr;
textcolor (white);
write ('Chces vypnut program ? (a/n)');
yn:=Readkey;
if yn= 'a' then Halt;
if yn= 'n' then Goto 1;
end;
readln;
end.
