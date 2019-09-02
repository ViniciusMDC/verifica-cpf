program cpf;
uses crt;
var i,n: integer;
     vet: array [1..11] of integer; {vetor �nico para todas as opera��es / single vector for all operations}

procedure primeirodigito; {primeiro procedimento para o primeiro d�gito / first procedure for the first digit}
var soma,d,i,x,digito1: integer;
begin
     soma:=0; {vari�vel soma realiza a soma dos novos numeros / variable soma performs the sum of the new numbers}
     d:=10; {vari�vel d aplica pesos �s posi��es / variable d applies weight to the positions}
     for i:=1 to 9 do
     begin
          x:= vet[i];
          soma:=soma+(d*x);
          d:=d-1;
     end;
     writeln;
     if (soma mod 11)< 2 then {compara��o do resultado da divis�o da soma por 11 / comparison of the result of dividing the sum by 11}
        digito1:= 0 {caso menor que 2 assume-se o zero como digito / if less than 2 assumes zero as digit}
     else
         digito1:= 11- (soma mod 11); {caso contr�rio subtrai-se a soma de 11 e obt�m o digito / otherwise subtract the sum of 11 and get the digit}
     writeln;
     writeln('Primeiro Digito: ',digito1);
     vet[10]:= digito1;

     writeln;
     for i:=1 to 9 do
     begin
          write(vet[i],'.');
     end;
     write(vet[10]);
     writeln;
end;

procedure segundodigito; {procedimento para o segundo d�gito / procedure for the second digit}
var soma,d,i,x,digito2: integer;
begin
     soma:=0; {igual o do primeiro, mas com o peso iniciando em 11 / same as the first but with the weight starting at 11}
     d:=11;
     for i:=1 to 10 do
     begin
          x:= vet[i];
          soma:= soma+(d*x);
          d:= d-1;
     end;
     writeln;

     if (soma mod 11)< 2 then
        digito2:= 0
     else
         digito2:= 11 - (soma mod 11);
     writeln('Segundo Digito: ',digito2);
     vet[11]:= digito2;
     end;

begin
     textbackground(white);
     textcolor(blue);
     writeln('Digite os nove primeiros numeros do C.P.F. [digite um numero e aperte Espaco, ao terminar aperte Enter]');
     for i:=1 to 9 do {programa pedindo para voc� digitar os n�meros / program asking you to enter the numbers}
     begin {n�meros sendo escritos e formatados / numbers being written and formatted}
            read(n);
            vet[i]:= n;
     end;
     writeln;
     for i:=1 to 3 do
     begin
          write(vet[i]);
     end;
     write('.');
     for i:=4 to 6 do
     begin
          write(vet[i]);
     end;
     write('.');
     for i:=7 to 9 do
     begin
          write(vet[i]);
     end;

     primeirodigito; {chamando os dois procedimentos / calling both procedures}

     segundodigito;

     writeln;
     writeln('Digitos Verificadores: ',vet[10],' e ',vet[11]);
     writeln;
     for i:=1 to 10 do {o C.P.F. aparece com os d�gitos / C.P.F. appears with the digits}
     begin
     write(vet[i],'.');
     end;
     write(vet[11]);
     writeln;
     writeln;
     writeln('O C.P.F. valido e: ');
     writeln;

     for i:=1 to 3 do {Agora o C.P.F. escrito em seu padr�o / Now C.P.F. written in your standard form}
     begin
          write(vet[i]);
     end;
     write('.');
     for i:=4 to 6 do
     begin
          write(vet[i]);
     end;
     write('.');
     for i:=7 to 9 do
     begin
          write(vet[i]);
     end;
     write('-');
     write(vet[10],vet[11]);

     readkey;
end.


