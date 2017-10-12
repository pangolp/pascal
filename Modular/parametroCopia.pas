program parametroCopia;
uses crt;

function multiplica (n:integer): integer;
begin
        multiplica:=n*2;
        n:=n+1;
end;

var
        numero:integer;
        x:integer;
begin
        clrscr;
        writeln('Ingrese un numero: ');
        readln(numero);
        x:=multiplica(numero);
        writeln('');
        writeln('El numero: ', numero, ' multiplicado por 2 es: ', x);
        writeln('');
        writeln('Presione una tecla para salir.');
        readkey;
end.
