program asteriscos;
{
        PROGRAMADOR: Pagani, Walter
        FACULTAD: Utn Facultad Regional La Plata
        IDE: Free Pascal

        EJERCICIO 4 - Sugeridos para trabajar en clase
        . Realizar un programa que visualice por pantalla el siguiente dibujo:

        *
        **
        ***
        ****
        *****
}
uses crt;
const
        cantidad = 5;
var
    i,j:integer;
begin
        clrscr;  // Limpia la pantalla, incluida en crt
        for i:=1 to cantidad do // repetir para i:=1,cantidad,1
        begin
                for j:=1 to i do // repetir para j:=1,i,1
                begin
                        write('*'); // Imprimo asteriscos, depediendo del valor de i.
                end;
                writeln(''); // Dejo una linea en blanco, se puede omitir.
        end;
        readkey;  // Espera que el usuario presione una tecla, incluida en crt
end.

{

PSEUDOCODIGO:

programa asteriscos
constantes
        cantidad = 5
variables

        i,j:entero(2)

hacer

        repetir para i:=1,cantidad,1

                repetir para j:=1,i,1

                        imprimir:'*'

                fin repetir para j

        fin repetir para i

fin hacer

fin programa

}