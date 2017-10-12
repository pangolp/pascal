program tabla;
uses crt;
var
        i, numero: integer;
begin
        clrscr;
        writeln('Ingrese un numero: ');
        readln(numero);
        clrscr;
        writeln('Tabla de multiplicar de: ', numero);
        writeln('');
        for i:=0 to 10 do
                writeln(numero, ' x ', i, ' = ', (numero*i));
        readkey;
end.
