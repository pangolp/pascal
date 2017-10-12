program bucle_infinito;
{
        PROGRAMADOR: Pagani, Walter
        FACULTAD: Utn Regional La Plata
        IDE: Free Pascal
        Enunciado: Ejemplo de bucle infinito.

}

var
        i:integer;

begin
        i:=1;
        while (i=1) do
                writeln('Hola comision 47');
        // Al no incrementar i la condicion se cumple siempre
        // Lo que me produce no salir nunca del bucle de repeticion.
end.
