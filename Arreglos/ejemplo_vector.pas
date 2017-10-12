program vectores;
uses crt;
const
        cantidad = 10;

type
        vector = array[1..cantidad] of integer;
        { VECTOR DE 1 POSICIONES DE TIPO ENTERO }

procedure inicializarVector(var v:vector);
var
        i:integer;
begin
        for i:=1 to cantidad do
                v[i]:=0;
end;

procedure cargarVector(var v:vector);
var
        i:integer; 
begin
        for i:=1 to cantidad do
                v[i]:=i;
end;

procedure imprimirVector(v:vector);
var
        i:integer;
begin
        clrscr;
        for i:=1 to cantidad do
                writeln('El valor es: ', v[i]);
        writeln('');
        for i:=1 to 10 do
                write(v[i]);
        writeln('');
        readkey;
end;

var
        opcion:integer;
        vec: vector;
begin
        repeat
                clrscr;
                writeln('***********************************');
                writeln('');
                writeln('1- Inicilizar vector');
                writeln('2- Cargar Vector');
                writeln('3- Imprimir contenido del vector');
                writeln('0- Salir');
                writeln('');
                writeln('***********************************');
                writeln('');
                writeln('Ingrese una opcion: ');
                read(opcion);
                case (opcion) of
                        1: inicializarVector(vec);
                        2: cargarVector(vec);
                        3: imprimirVector(vec);
                end;
        until (opcion=0);
end.