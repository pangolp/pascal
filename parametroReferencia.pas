program parametroCopia;
uses crt;
{Procedimientos y funciones}
function multiplica (var n:integer): integer;
begin
        n:=n+1;
        multiplica:=n*2;
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