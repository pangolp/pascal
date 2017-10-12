program iterativorecursivo;

// Programador: Pagani, Walter.
// Facultad: UTN FRLP
// Sumar un vector de forma iterativa
// Sumar un vector de forma recursiva

uses crt; // usamos esta libreria por el clrscr y el readkey

// Tipos estructurados
type
        vector = array [1..5] of integer; // vector = arreglo [5]: entero;

// Fin tipos estructurados

// Procedimientos y funciones

procedure cargarvector(var v1:vector); // var = referencia, es decir, modificacion
var
        h: integer; // elegir la letra que quieran, es un indice
begin
        for h:=1 to 5 do
                begin
                        case h of
                                1: v1[h]:=10;
                                2: v1[h]:=20;
                                3: v1[h]:=30;
                                4: v1[h]:=40;
                                5: v1[h]:=50;
                        end;
                end;
        for h:=1 to 5 do
                writeln('El valor en la posicion: ', h, ' es: ', v1[h]);
end;

function sumarvector(v1:vector): integer;
var
        j:integer; // Indice para recorrer el vector dentro del procedimiento
        acumulador:integer;
begin
        acumulador:=0; // Inicializo el acumulador
        for j:=1 to 5 do
                acumulador:=acumulador+v1[j];
        // Como solo tiene una instrucion, no se necesita un begin end;
        sumarvector:=acumulador;
end;

function vectorsumar(v1:vector; k:integer): integer;
begin
        if (k=0) then
                vectorsumar:=0 // Inicializo la variable, caso base
        else
                vectorsumar:=v1[k]+vectorsumar(v1,k-1);
end;


// Fin procedimientos y funciones

// Programa principal
var // Variables del programa principal
        i:integer; // Indice
        v:vector; // variable de tipo vector - Previamente declarada
        resultado:integer; // Lugar donde se retorna el valor de la funcion al llamarla.
begin // Hacer del programa principal
        clrscr;
        cargarvector(v);
        writeln(''); // Dejo una linea de espacio, no es necesario
        resultado:=sumarvector(v); // Este es el iterativo
        writeln('El valor por iteracion es: ', resultado);
        resultado:=0; // inicializamos para volver a utilizar la misma variable
        i:=5; // asigno el valor 5 a la variable i
        resultado:=vectorsumar(v, i); // Este es el recursivo
        writeln('El valor por recursion es: ', resultado);
        readkey;
end. // Finalizacion del programa
