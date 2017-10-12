program parametroReferencia;
uses crt;

function multiplica (var n:integer): integer;
begin
        n:=n+1;
        multiplica:=n*2;
end;

var
        numero:integer;
        x:integer;
begin
        clrscr;
        writeln('Ingrese un numero: ');
        readln(numero);
        writeln('');
        x:=multiplica(numero);
        writeln('El numero: ', numero, ' multiplicado por 2 es: ', x);
        writeln('');
        writeln('Presione una tecla para salir.');
        readkey;
end.
