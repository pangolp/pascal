program parametroCopia;
uses crt;
{Procedimientos y funciones}
function multiplica (n:integer): integer;
begin
        multiplica:=n*2;
        n:=n+1;
end;
{Programa principal}
var
        numero:integer;
        x:integer;
begin
        clrscr;
        writeln('Ingrese un numero: ');
        readln(numero);
        writeln('El numero ingresado es: ', numero);
        x:=multiplica(numero);
        writeln('El numero: ', numero, ' multiplicado por 2 es: ', x);
        writeln('Presione una tecla para salir.');
        readkey;
end.
