program ejemplo;
{
        PROGRAMADOR: Pagani, Walter
        FACULTAD: Utn Regional La Plata
        IDE: Free Pascal
        Objetivo: Diferencia entre un parametro por copia o referencia
        al realizar una modificion dentro de un procedimiento o funcion.

}
uses crt;

procedure suma (a:integer; var b:integer);
begin
        b:=a+1;
end;

function multiplica (b:integer): real;
begin
        multiplica:=b*2;
end;

var
        valor1:integer;
        valor2:integer;
        x:real;
begin
        clrscr;
        writeln('Ingrese un valor: ');
        readln(valor1);
        writeln('');
        suma(valor1,valor2);
        x:=multiplica(valor2);
        writeln('El valor de la suma es: ', valor2);
        writeln('El valor del producto es: ',(x):4:2);
        readkey;
end.
