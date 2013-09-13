program imprimir_recursivo;
{
        PROGRAMADOR: Pagani, Walter
        FACULTAD: Utn Regional La Plata
        IDE: Free Pascal
        Objetivo: recibir una palabra e imprime la inversa recursivamente
}
uses crt;

function invertir (c:string; posicion:integer): string;
        begin
                if (posicion<>0) then
                        invertir:=c[posicion]+invertir(c,posicion-1);

end;

var
        palabra:string;
        longitud:integer;
        resultado:string;
begin
        clrscr;
        writeln('Ingrese una palabra, si tiene espacio " " ');
        readln(palabra);
        longitud:=Length(palabra);
        resultado:=invertir(palabra, longitud);
        writeln('La palabra inversa es: ', resultado);
        readkey;
end.
