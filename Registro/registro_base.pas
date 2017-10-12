program registro_basico;
{
        PROGRAMADOR: Pagani, Walter
        FACULTAD: Utn Regional La Plata
        IDE: Free Pascal
        Objetivo: Manejo basico de un registro.
        Lectura de datos y almacenamiento de los mismos.
        Tambien asignacion.
}
uses crt;
type
        persona=record
            nombre:string;
            edad:integer;
            sueldo:real;
            trabaja:boolean;
        end;
var
        p:persona;
        respuesta: string;
begin
        clrscr;
        writeln('Ingrese el nombre de la persona: ');
        readln(p.nombre);
        writeln('Ingrese edad: ');
        readln(p.edad);
        writeln('Ingrese el sueldo: ');
        readln(p.sueldo);
        writeln('¨Trabaja? (si/no): ');
        readln(respuesta);
        if (respuesta='si') then
                p.trabaja:=true
        else
                p.trabaja:=false;
        writeln('');
        writeln('----------------');
        writeln('El nombre es: ', p.nombre);
        writeln('El sueldo es: ', (p.sueldo):4:2);
        writeln('La edad es: ', p.edad);
        writeln('Trabaja?: ', p.trabaja);
        readkey;
end.
