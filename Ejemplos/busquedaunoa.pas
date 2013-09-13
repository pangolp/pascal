program busquedaunoa;
{
        PROGRAMADOR: Pagani, Walter
        FACULTAD: Utn Regional La Plata
        Enunciado: Realizar un algoritmos que permita buscar en un vector
        de 1500 posiciones (usaremos solamente 5) la ocurrencia de una clave
        de tipo caracter introducida por el usuario.

        El vector lo llego con un case, pero podria pedir al usuario.
        En el programa principal se cuenta con un bucle, con fines practicos.
        No es necesario el mismo, en realidad no es parte del enunciado.

}


uses crt;

type    // Tipos estructurados o tipos definidos por el usuario
        vector = array [1..5] of string;
        // vector = arreglo[5]: cadena de caracteres

// Procedimientos y funciones

procedure cargarvector(var v:vector);
var
        i:integer;
begin
        for i:=1 to 5 do
                begin
                        case i of
                                1: v[i]:='Casa';
                                2: v[i]:='Arbol';
                                3: v[i]:='Aula';
                                4: v[i]:='Facultad';
                                5: v[i]:='Utn';
                        end;
                        writeln(v[i]);
                end;
end;

function busquedaSecuencial(v:vector; dato:string): integer;
        // Retorna la posicion, si es cero, no lo encontro.
var
        j:integer;
        pos:integer;
begin
        pos:=0;
        for j:=1 to 5 do
                if (v[j]=dato) then
                        pos:=j;
        busquedaSecuencial:=pos;
end;

// Programa principal
var
    v:vector;
    palabra:string;
    resultado:integer;
    respuesta:string;
begin
        respuesta:='si';
        while (respuesta='si') do
                begin
                        clrscr; // Limpio la pantalla
                        cargarvector(v);
                        writeln('');
                        writeln('Ingrese palabra a buscar: ');
                        readln(palabra);
                        resultado:=busquedaSecuencial(v, palabra);
                        if (resultado<>0) then
                                writeln('La palabra fue encontrada')
                        else
                                writeln('La palabra no se encuentra');
                        readkey;
                        writeln('Desea continuar: si/no');
                        readln(respuesta);
        end;
end.
