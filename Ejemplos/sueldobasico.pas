program recibo;
uses crt;
const
        dias_ausentes = 30;
var
        nombreyapellido: string;
        sueldobasico, premio, comida, viaticos, sueldo, ausentes: real;
        sueldo_final: real;
        ley, jubilacion, os: real;
        cantidad: integer;
begin
        writeln('Ingrese nombre y apellido: ');
        readln(nombreyapellido);
        writeln('Ingrese sueldo basico: ');
        readln(sueldobasico);
        writeln('Ingrese premio: ');
        readln(premio);
        writeln('Ingrese comida: ');
        readln(comida);
        writeln('Ingrese viaticos: ');
        readln(viaticos);
        writeln('Ingrese cantidad de dias ausentes: ');
        readln(cantidad);
        ausentes:=(dias_ausentes*cantidad);
        jubilacion:=(sueldobasico*0.11);
        ley:=(sueldobasico*0.03);
        os:=(sueldobasico*0.03);
        sueldo:=(sueldobasico-ausentes-ley-os-jubilacion);
        sueldo_final:=(sueldo+(comida+viaticos+premio));
        clrscr;
        writeln('Nombre y apellido: ', nombreyapellido);
        writeln('Sueldo basico: ', (sueldobasico):4:2);
        writeln('Premios: ', (premio):4:2);
        writeln('Comida: ', (comida):4:2);
        writeln('Viaticos: ', (viaticos):4:2);
        writeln('Ley: ', (ley):4:2);
        writeln('Obra social: ', (os):4:2);
        writeln('Jubilacion: ', (jubilacion):4:2);
        writeln('Sueldo: ', (sueldo):4:2);
        writeln('Sueldo final: ', (sueldo_final):4:2);
        readkey;
end.