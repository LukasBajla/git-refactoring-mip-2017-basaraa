program menu;
Uses crt;                                                                                     //crt pre prácu so súradnicami
Label 1;
var cislo_program:string;                                                                    //Zadefinovanie premenných
    koniec_programu:char;
    pocet_cisel,x,nahodne_cislo,cislo,minimum,maximum,stav_uctu,sucet,hmotnost_baliku
    ,platba_v_obchode,nedostatok,nosnost_vytahu,pretazenie:integer;

begin
1:Clrscr;                                                                                    //Vyresetovanie konzoli 
textcolor (lightred);                                                                        //Farba textu
GotoXy (4,2);                                                                                //Zmena súradníc kurzoru na konzoli
writeln ('1.Minimum');                                                                       //Výpis jednotlivých programov
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
cislo_program:=Readkey;                                                                     //Čítanie z klávesy číslo programu

if cislo_program='1' then                                                                   //Ak zadáš 1 vykoná sa tento program
begin
clrscr;
textcolor (lightred);
writeln ('Zadaj pocet cisel z ktorych chces minimum');                                      
readln (pocet_cisel);                                                                      //Načíta z koľko čísel bude minimum
minimum:=10000;                                                                             
x:=0;                                                                                       
while x<pocet_cisel do                                                                    //Cyklus pre načítavanie jednotlivých čísel
begin
  writeln ('Zadaj hodnotu cisla');
  readln (cislo);
if cislo<minimum then minimum:=cislo;                                                   //Ak je zadané čislo menšie ako pôvodne potom to je minimum 
x:=x+1;
end;
writeln ('Minimum je ',minimum,'');
end;

if cislo_program='2' then
begin
Clrscr;
textcolor (green);
writeln ('Zadaj pocet cisel z ktorych chces vediet maximum');
readln (pocet_cisel);
maximum:=0;
x:=0;
while x<pocet_cisel do
begin
writeln ('Zadaj hodnotu cisla');
  readln (cislo);
if cislo>maximum then maximum:=cislo;                                                  //Ak je zadané čislo väčšie ako pôvodne potom to je maximum
x:=x+1;
end;
writeln ('Maximum je ',maximum,'');
end;

if cislo_program='3' then
begin
Clrscr;
textcolor (yellow);
randomize;
nahodne_cislo:=random (20);                                                            //Načíta náhodné číslo od 0 po 19
while cislo<>nahodne_cislo do                                                          //Cyklus na zistenie náhodného čísla
begin
writeln ('Zadaj cislo');
readln (cislo);
if cislo>nahodne_cislo then writeln ('Menej');                                         //Následujúce 2 podmienky pre zistenie či je číslo väčšie alebo menšie ako to náhodné
if cislo<nahodne_cislo then writeln ('Viac');
end;
writeln ('Uhadol si cislo');
end;

if cislo_program='4' then
begin
Clrscr;
textcolor (lightgray);
writeln ('Kolko eur mas na ucte ?');
readln (stav_uctu);                                                                     //Načíta stav účtu
sucet:=0;
while sucet<stav_uctu do                                                                //Cyklus pre zistenie koľko ešte môžeš platiť v obchode
begin
writeln ('Kolko platis v obchode ?');
readln (platba_v_obchode);
sucet:=sucet+platba_v_obchode;
write ( );
if sucet<stav_uctu then
writeln ('Na ucte mas ',(stav_uctu-sucet),'eur');
end;
nedostatok:=sucet-stav_uctu;
writeln ('Nemas dost penazi na ucte');
if nedostatok>0 then writeln ('Musis v obchode vratit veci v hodnote ',nedostatok,'eur');   //Výpis koľko si v mínuse na účte
end;

if cislo_program='5' then
begin
clrscr;
textcolor (lightgreen);
writeln ('Zadaj nosnost vytahu');   
readln (nosnost_vytahu);                                                                //Načíta nosnosť výťahu
sucet:=0;
 while sucet<nosnost_vytahu do                                                          //Cyklus pre zistenie koľko vecí môžeš dať do výťahu bez preťaženia
  begin
  writeln ('Zadaj hmotnost baliku (v kg)');
  read (hmotnost_baliku);
  sucet:=sucet+hmotnost_baliku;
  end;
 pretazenie:=sucet-nosnost_vytahu;
 writeln ('Vytah je pretazeny o ',pretazenie,'kg');
 if pretazenie>0 then writeln ('Vyberte z vytahu baliky s hmotnostou aspon ',pretazenie,'kg');  //Výpis o koľko je výťah preťažený a teda hmotnosť vecí ktoré treba vybrať
end;

if cislo_program='6' then
begin
Clrscr;
textcolor (white);
write ('Chces vypnut program ? (a/n)');                                                 
koniec_programu:=Readkey;                                                               //Načítanie z klávesy či sa má program vypnúť alebo nie, a=áno, n=nie
if koniec_programu= 'a' then Halt;
if koniec_programu= 'n' then Goto 1;
end;

 write ('Stlac ENTER pre vratenie sa do menu');                                         
 Readkey;
Goto 1;                                                                                 //Návrat na úvodnú konzolu

readln;
end.
