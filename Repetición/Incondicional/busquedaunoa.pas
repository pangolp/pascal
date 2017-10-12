program ejemplo1;
{
        PROGRAMADOR: Pagani, Walter
        FACULTAD: Utn Regional La Plata
        Enunciado: Realizar un algoritmos que permita buscar en un vector
        de 1500 posiciones (usaremos solamente 5) la ocurrencia de una clave
        de tipo caracter introducida por el usuario.
}
uses crt;
const
    cantidad = 5;
type
    vector = array [1..cantidad] of string;

procedure cargarVector(var v:vector);
var
    i:integer;
begin
    for i:=1 to cantidad do
        begin
            clrscr;
            writeln('Ingrese una palabra: ');
            readln(v[i]);
    end;
end;

function busquedaSecuencial(v:vector; dato:string): integer;
var
        j:integer;
        cant: integer;
begin
    cant:=0;
    for j:=1 to cantidad do
        if (v[j]=dato) then
            cant:=cant+1;
    busquedaSecuencial:=cant;
end;

var
    vec:vector;
    palabra:string;
    resultado:integer;
begin
        cargarVector(vec);
        clrscr;
        writeln('Ingrese una palabra: ');
        readln(palabra);
        writeln('');
        resultado:=busquedaSecuencial(vec, palabra);
        if (resultado>0) then
            writeln('La palabra: ', palabra, ' se encontro: ', resultado, ' veces')
        else
            writeln('La palabra no existe');
        readkey;
end.
