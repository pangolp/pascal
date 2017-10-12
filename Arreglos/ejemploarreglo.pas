program arreglos;
{
        PROGRAMADOR: Pagani, Walter
        FACULTAD: Utn Regional La Plata
        IDE: Free Pascal
        Objetivo: Llenar un vector con los dias de la semana.
}
uses crt;

type
        semana = array[1..7] of string;
var
        a:semana;
        i:integer;
begin
        clrscr;
        a[1]:='Lunes';
        a[2]:='Martes';
        a[3]:='Miercoles';
        a[4]:='Jueves';
        a[5]:='Viernes';
        a[6]:='Sabado';
        a[7]:='Domingo';
        writeln('');

        for i:=1 to 7 do
                writeln(a[i]);
        readkey;
end.
