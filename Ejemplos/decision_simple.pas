program decision_simple;
{
        PROGRAMADOR: Pagani, Walter
        FACULTAD: Utn Regional La Plata
        IDE: Free Pascal
        Objetivo: Ejemplo de decision simple.
        Solo puede ingresar a 1 de las opciones.
        Dependiendo del valor que ingrese el usuario.
}
uses crt;
var
        numero: integer;
begin
        clrscr; // limpia la pantalla, incluido en crt
        writeln('Ingrese un numero: '); // muestro el mensaje por pantalla
        readln(numero);  // Almaceno el valor en una variable
        if (numero >= 10) then  // Decision
                writeln('El numero es mayor que 10.')
        else
                writeln('El numero es menor.');
        readkey;
end.

