program ejemplosi;
{
        PROGRAMADOR: Pagani, Walter
        FACULTAD: Utn Regional La Plata
        IDE: Free Pascal
        Objetivo: Almacenar la edad del usuario en una variable,
        y luego imprimir un mensaje dependiendo de que rama se cumpla.
        Si la verdadera o la falsa.
}
uses crt;
var // Variables
        edad:integer;
begin
        clrscr; {Limpia la pantalla}
        writeln('Ingrese su edad: ');
        readln(edad);
        writeln('');
        if (edad>=13) then
                writeln('Bienvenido')
        else
                writeln('Usted no puede ingresar');
        writeln('Presione una tecla para salir.');
        readkey; {Espera que el usuario presione una tecla para seguir}
end.
