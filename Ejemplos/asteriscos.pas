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
var
    i,j:integer;
begin
        clrscr;  // Limpia la pantalla, incluida en crt
        for i:=1 to 5 do // repetir para i:=1,5,1
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

variables

        i,j:entero(2)

hacer

        repetir para i:=1,5,1

                repetir para j:=1,i,1

                        imprimir:'*'

                fin repetir para j

        fin repetir para i

fin hacer

fin programa

}