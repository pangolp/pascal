program ejemplo_menu;
uses crt;

var
        respuesta: integer;

begin
        repeat
                clrscr;
                writeln('----------------------');
                writeln('1- Primera opcion del menu');
                writeln('2- Segunda opcion del memu');
                writeln('0- Salir del programa');
                writeln('----------------------');
                writeln('');
                write('Ingrese una opcion del menu: ');
                read(respuesta);
        until (respuesta=0);
        clrscr;
        writeln('Usted eligio salir del programa');
        writeln('Hasta luego.');
        readkey;
end.
