program vectores;

uses crt; { LIBRERIA CON FUNCIONES PREDEFINIDAS clrscr y readkey }

type
        vector = array[1..10] of integer;
        { VECTOR DE 1 POSICIONES DE TIPO ENTERO }

{ PROCEDIMIENTOS Y FUNCIONES }

{
        EL PROCEDIMIENTO INICIALIZAR, RECORRE EL VECTOR EN SU TOTALIDAD
        E INICIALIZA EL MISMO CON 0, DADO QUE ES UN VECTOR DE ENTEROS.
        TENGAN EN CUENTA QUE EL VECTOR, DEBE SER PASADO COMO REFERENCIA,
        SIEMPRE QUE SE DESEE OBTENER UNA MODIFICACION DEL MISMO.
}

procedure inicializarVector(var v:vector);
var
        indice:integer;
begin
        for indice:=1 to 10 do
                v[indice]:=0;
end;

{
        RECORRO EL VECTOR Y LO CARGO CON LOS VALORES DEL 1 AL 10,
        DICHOS VALORES LOS SACO DEL INDICE QUE USO PARA RECORRER EL MISMO.
}

procedure cargarVector(var v:vector);
var
        indice:integer; { INDICE PARA RECORRER EL VECTOR }
begin
        for indice:=1 to 10 do
                v[indice]:=indice;
end;

{
        EL PROCEDIMIENTO IMPRIMIR, MUESTRA DE 2 MANERAS DIFERENTES,
        EL CONTENIDO DEL VECTOR QUE ES RECIBIDO EN EL PROCEDIMIENTO
        COMO COPIA, A DIFERENCIA DE cargarVector QUE NECESITA RECIBIRLO
        POR REFERENCIA.
}

procedure imprimirVector(v:vector);
var
        indice:integer;
begin
        clrscr;
        for indice:=1 to 10 do
                writeln('El valor es: ', v[indice]);

        for indice:=1 to 10 do
                write(v[indice]);
        writeln('');
        writeln('Presione una tecla para seguir ..');
        readkey;
end;

{ FIN DE PROCEDIMIENTOS Y FUNCIONES }
var
        opcion:integer;
        vec: vector;
begin
        repeat
                clrscr;
                writeln('***********************************');
                writeln('1- Inicilizar vector');
                writeln('2- Cargar Vector');
                writeln('3- Imprimir contenido del vector');
                writeln('0- Salir');
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