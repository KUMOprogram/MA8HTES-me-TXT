program ekato_kila;
uses wincrt;
type stoixeia=record
     code:string;
     onoma:string;
     eponymo:string;
     thl:string;
     age:string;
     address:string;
   end;

type ma8hmata=record
     gym:integer;
     math:integer;
     pc:integer;
     latin:integer;
     MO:real;
   end;

var student:stoixeia;
    elenxos:ma8hmata;
    sum,n,k:integer;
    logic:char;
    u:text;
    filename:string;



BEGIN
k:=1;
repeat
ClrScr;
 writeln('-------------------------------------------------------------------------------');
 writeln('-------- Pathste 1 ---------------------- kataxwrhsh NEOU ma8hth --------------');
 writeln('-------- Pathste 2 ---------------------- kataxwrhsh BA8MWN ma8hth ------------');
 writeln('-------- Pathste 3 ---------------------- emfanhsh stoixeiwn ma8hth -----------');
 writeln('-------- Pathste 4 ---------------------- emfanhsh ba8mwn ma8hth --------------');
 writeln('-------- Pathste 5 ---------------------- allagh stoixeiwn ma8hth -------------');
 writeln('-------- Pathste 6 ---------------------- allagh ba8mou ma8hth ----------------');
 writeln('-------- Pathste 7 ---------------------- diagrafh ma8hth ---------------------');
 writeln('-------- Pathste 8 ---------------------- epainos ma8hth ----------------------');
 writeln('-------------------------------------------------------------------------------');
 write('                        Epilogh: ');
 read(n);
 writeln('-------------------------------------------------------------------------------');
 readln;

 if n=1 then
 begin
  write('         kwdikos ma8hth: ');
  read(student.code);
  readln;
  
  write('         onoma ma8hth: ');
  read(student.onoma);
  readln;

  write('         eponymo ma8hth: ');
  read(student.eponymo);
  readln;

  write('         thlefwno ma8hth: ');
  read(student.thl);
  readln;

  write('         hlikia: ');
  read(student.age);
  readln;

  write('         dieu8unsh: ');
  read(student.address);
  readln;

  filename:='C:\'+student.code+'.txt';
  assign(u,filename);
  rewrite(u);
   writeln(u,'kwdikos: ',student.code);
   writeln(u,'onoma: ',student.onoma);
   writeln(u,'eponymo: ',student.eponymo);
   writeln(u,'thlefwno: ',student.thl);
   writeln(u,'hlikia: ',student.age);
   writeln(u,'dieu8unsh: ',student.address);
  close(u);

  writeln('         Exei apo8hkeutei sto ',filename);
 end; 

 if n=2 then
 begin
  write('         kwdiko ma8hth: ');
  read(student.code);
  readln;

  write('         ba8mos gymnastikhs: ');
  repeat
   read(elenxos.gym);
   if (elenxos.gym<0) and (elenxos.gym>10) then
   begin
    write('         3anadwse bathmo apo 0 ws 10');
   end;
  until (elenxos.gym<11) or (elenxos.gym>-1);
  readln;

  write('         ba8mos ma8hmatikwn: ');
  repeat
   read(elenxos.math);
   if (elenxos.math<0) and (elenxos.math>10) then
   begin
    write('         3anadwse bathmo apo 0 ws 10');
   end;
  until (elenxos.math<11) or (elenxos.math>-1);
  readln;

  write('         ba8mos upologistwn: ');
  repeat
   read(elenxos.pc);
   if (elenxos.pc<0) and (elenxos.pc>10) then
   begin
    write('         3anadwse bathmo apo 0 ws 10');
   end;
  until (elenxos.pc<11) or (elenxos.pc>-1);
  readln;

  write('         ba8mos latinikwn: ');
  repeat
   read(elenxos.latin);
   if (elenxos.latin<0) and (elenxos.latin>10) then
   begin
    write('         3anadwse bathmo apo 0 ws 10');
   end;
  until (elenxos.latin<11) or (elenxos.latin>-1);
  readln;

  elenxos.MO:=(elenxos.gym+elenxos.math+elenxos.pc+elenxos.latin)/4;

  filename:='C:\='+student.code+'.txt';
  assign(u,filename);
  rewrite(u);
   writeln(u,elenxos.gym);
   writeln(u,elenxos.math);
   writeln(u,elenxos.pc);
   writeln(u,elenxos.latin);
   writeln(u,elenxos.MO);
  close(u);

  writeln('         Exei apo8hkeutei sto ',filename);
 end;

 if n=3 then
 begin
  write('         kwdikos ma8hth: ');
  read(student.code);
  readln;

  filename:='C:\'+student.code+'.txt';
  assign(u,filename);
  reset(u);
   readln(u,student.code);
   readln(u,student.onoma);
   readln(u,student.eponymo);
   readln(u,student.thl);
   readln(u,student.age);
   readln(u,student.address);
  close(u);
                     
   writeln('         ',student.onoma);
   writeln('         ',student.eponymo);
   writeln('         ',student.thl);
   writeln('         ',student.age);
   writeln('         ',student.address);
 end;

 if n=4 then
 begin
  write('         kwdiko ma8hth: ');
  read(student.code);
  readln;

  filename:='C:\='+student.code+'.txt';
  assign(u,filename);
  reset(u);
   readln(u,elenxos.gym);
   readln(u,elenxos.math);
   readln(u,elenxos.pc);
   readln(u,elenxos.latin);
   readln(u,elenxos.MO);
  close(u);

  writeln('            gymnastikh: ',elenxos.gym);
  writeln('            ma8hmatika: ',elenxos.math);
  writeln('           upologistes: ',elenxos.pc);
  writeln('              latinika: ',elenxos.latin);
  writeln('            Mesos Oros: ',elenxos.MO:0:2);
 end;

 if n=5 then
 begin
  write('         kwdikos ma8hth: ');
  read(student.code);
  readln;

  filename:='C:\'+student.code+'.txt';
  assign(u,filename);
  reset(u);
   readln(u,student.code);
   readln(u,student.onoma);
   readln(u,student.eponymo);
   readln(u,student.thl);
   readln(u,student.age);
   readln(u,student.address);
  close(u);

 write('         8es na alla3eis onoma? y/n: ');
 read(logic);
 readln;
 if logic='y' then
 begin
  write('         onoma ma8hth: ');
  read(student.onoma);
  readln;
 end;

 write('         8es na alla3eis eponymo? y/n: ');
 read(logic);
 readln;
 if logic='y' then
 begin
  write('         eponymo ma8hth: ');
  read(student.eponymo);
  readln;
 end;

 write('         8es na alla3eis thlefwno? y/n: ');
 read(logic);
 readln;
 if logic='y' then
 begin
  write('         thlefwno ma8hth: ');
  read(student.thl);
  readln;
 end;

 write('         8es na alla3eis hlikia? y/n: ');
 read(logic);
 readln;
 if logic='y' then
 begin
  write('         hlikia: ');
  read(student.age);
  readln;
 end;

 write('         8es na alla3eis dieu8unsh? y/n: ');
 read(logic);
 readln;
 if logic='y' then
 begin
  write('         dieu8unsh: ');
  read(student.address);
  readln;
 end;

  assign(u,filename);
  rewrite(u);
   writeln(u,'kwdikos: ',student.code);
   writeln(u,'onoma: ',student.onoma);
   writeln(u,'eponymo: ',student.eponymo);
   writeln(u,'thlefwno: ',student.thl);
   writeln(u,'hlikia: ',student.age);
   writeln(u,'dieu8unsh: ',student.address);
  close(u);

  writeln('         Exei apo8hkeutei sto ',filename);
 end; 

 if n=6 then
 begin
  write('         kwdiko ma8hth: ');
  read(student.code);
  readln;

  filename:='C:\='+student.code+'.txt';
  assign(u,filename);
  reset(u);
   readln(u,elenxos.gym);
   readln(u,elenxos.math);
   readln(u,elenxos.pc);
   readln(u,elenxos.latin);
   readln(u,elenxos.MO);
  close(u);

 write('         8es na alla3eis ba8mo gymnastikh? y/n: ');
 read(logic);
 readln;
 if logic='y' then
 begin
  write('         ba8mos gymnastikhs: ');
  repeat
   read(elenxos.gym);
   readln;
   if (elenxos.gym<0) or (elenxos.gym>10) then
   begin
    write('         3anadwse bathmo apo 0 ws 10: ');
   end;
  until (elenxos.gym<11) and (elenxos.gym>-1);
 end;

 write('         8es na alla3eis ba8mo ma8hmatikwn? y/n: ');
 read(logic);
 readln;
 if logic='y' then
 begin
  write('         ba8mos ma8hmatikwn: ');
  repeat
   read(elenxos.math);
   readln;
   if (elenxos.math<0) or (elenxos.math>10) then
   begin
    write('         3anadwse bathmo apo 0 ws 10: ');
   end;
  until (elenxos.math<11) and (elenxos.math>-1);
 end;

 write('         8es na alla3eis ba8mo upologistwn? y/n: ');
 read(logic);
 readln;
 if logic='y' then
 begin
  write('         ba8mos upologistwn: ');
  repeat
   read(elenxos.pc);
   readln;
   if (elenxos.pc<0) or (elenxos.pc>10) then
   begin
    write('         3anadwse bathmo apo 0 ws 10: ');
   end;
  until (elenxos.pc<11) and (elenxos.pc>-1);
 end;

 write('         8es na alla3eis ba8mo latinikwn? y/n: ');
 read(logic);
 readln;
 if logic='y' then
 begin
  write('         ba8mos latinikwn: ');
  repeat
   read(elenxos.latin);
   readln;
   if (elenxos.latin<0) or (elenxos.latin>10) then
   begin
    write('         3anadwse bathmo apo 0 ws 10: ');
   end;
  until (elenxos.latin<11) and (elenxos.latin>-1);
 end;

 elenxos.MO:=(elenxos.gym+elenxos.math+elenxos.pc+elenxos.latin)/4;

  assign(u,filename);
  rewrite(u);
   writeln(u,elenxos.gym);
   writeln(u,elenxos.math);
   writeln(u,elenxos.pc);
   writeln(u,elenxos.latin);
   writeln(u,elenxos.MO);
  close(u);

  writeln('         Exei apo8hkeutei sto ',filename);
 end;

 if n=7 then
 begin
  write('         kwdiko ma8hth: ');
  read(student.code);
  readln;

  filename:='C:\'+student.code+'.txt';
  assign(u,filename);
  erase(u);

  filename:='C:\='+student.code+'.txt';
  assign(u,filename);
  erase(u);
 end;

 if n=8 then
 begin
  write('         kwdiko ma8hth: ');
  read(student.code);
  readln;

  filename:='C:\='+student.code+'.txt';
  assign(u,filename);
  reset(u);
   readln(u,elenxos.gym);
   readln(u,elenxos.math);
   readln(u,elenxos.pc);
   readln(u,elenxos.latin);
   readln(u,elenxos.MO);
  close(u);

  if elenxos.MO>8 then
  begin
   writeln('         !!! ARISTEUEI !!!   MO: ',elenxos.MO:0:2);
  end
  else
  begin
   writeln('         @@@ DEN ARISTEUEI @@@   MO: ',elenxos.MO:0:2);
  end;
 end;

 writeln('-------------------------------------------------------------------------------');
 write('         ama 8es na stamathseis pata 0 alliws pata allo ari8mo: ');
 read(k);
 readln;
until k=0;
END.
