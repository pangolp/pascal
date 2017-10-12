program tabla;
uses crt;
var
        i, numero: integer;
begin
        clrscr;
        writeln('Ingrese un numero: ');
        readln(numero);
        writeln('Tabla de multiplicar de: ', numero);
        for i:=0 to 10 do
                writeln(numero, ' x ', i, ' = ', (numero*i));
        readkey;
end.
