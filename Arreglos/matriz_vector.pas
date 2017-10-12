program matriz_vector;
{
        PROGRAMADOR: Pagani, Walter
        FACULTAD: Utn Regional La Plata
        IDE: Free Pascal
        Objetivo: Manejo de indices. El ejercicio carga una matriz.
        Recorre la fila, suma sus elementos, y guarda dicha suma
        en el vector, utilizando el mismo indice para recorrer la matriz.
        Al finalizar muestra los resultados.

}

uses crt;
type
        matriz=array[1..2,1..2] of integer;
        vector=array[1..2] of integer;
var
        i,j:integer;
        m:matriz;
        v:vector;
        acu:integer;
begin
        clrscr;
        for i:=1 to 2 do
        begin
                for j:=1 to 2 do
                begin
                        writeln('Ingrese un numero: ');
                        readln(m[i,j]);
                end;
                writeln('');
        end;
        for i:=1 to 2 do
        begin
                acu:=0;
                for j:=1 to 2 do
                        acu:=acu+m[i,j];
                v[i]:=acu;
        end;
        writeln('');
        for i:=1 to 2 do
                writeln('El valor de la posicion ', i, 'es: ', v[i]);
        readkey;
end.
