program arreglos;
{
        PROGRAMADOR: Pagani, Walter
        FACULTAD: Utn Regional La Plata
        IDE: Free Pascal
        Objetivo: Llenar un vector con los dias de la semana.
        Se utiliza un case, y luego imprimo dichos valores almacenados.
}
uses crt;

type
        semana = array[1..7] of string;
var
        a:semana;
        i:integer;
begin
        clrscr;
        // Con este for, lleno el vector
        for i:=1 to 7 do
        begin
        case i of
                1: a[i]:='Lunes';
                2: a[i]:='Martes';
                3: a[i]:='Miercoles';
                4: a[i]:='Jueves';
                5: a[i]:='Viernes';
                6: a[i]:='Sabado';
                7: a[i]:='Domingo';
        end;
        end;



        // dejo una linea en blanco

        writeln('');

        // con este for imprimo los valores almacenados
        for i:=1 to 7 do
                writeln(a[i]);

        readkey;
end.
