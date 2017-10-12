{
        PROGRAMADOR: Pagani Walter
        TEMA: Realizar un menu
        El menu limpia la pantalla, lee la opcion del usuario y repite hasta,
        que la opcion ingresa es la 0.
}

program ejemplo_menu;
uses crt;
var
        respuesta: integer;
begin
        repeat
                clrscr;
                writeln('*******************************');
                writeln('');
                writeln('1 - Primera opcion del menu');
                writeln('2 - Segunda opcion del memu');
                writeln('0 - Salir del programa');
                writeln('');
                writeln('*******************************');
                writeln('');
                write('Ingrese una opcion del menu: ');
                read(respuesta);
        until (respuesta=0);
        clrscr;
        writeln('Usted eligio salir del programa');
        writeln('Hasta luego.');
        readkey;
end.
