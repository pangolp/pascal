program ejemplo1;
uses crt;

type
	lista = ^nodo;
		nodo = record
			dato: integer;
			ps: lista;
		end;

procedure crearLista(var l:lista);
begin
	l:=nil;
end;

procedure insertarPrincipio(var l:lista; num:integer);
var
	nuevo:lista;
begin
	{ Crear el nodo con el procedimiento crearLista }
	new(nuevo);
	{ Le asignamos el elemento pasado como parametro en dato }
	nuevo^.dato:=num;
	{ El siguiente de nuevo, debe ser el primer elemento hasta ese momento }
	nuevo^.ps:=l;
	{ Luego, debemos decirle a la lista, que su primero elemento es el ingresado }
	l:=nuevo;
end;

procedure cargarLista(var l:lista);
var
	numero: integer;
	respuesta: string;
begin
	repeat
		clrscr;
		writeln('Ingrese un numero: ');
		readln(numero);
		insertarPrincipio(l, numero);
		writeln('');
		writeln('Desea ingresar otro numero ( si / no ): ');
		readln(respuesta);
	until (respuesta='no')
end;

procedure imprimirLista(l:lista);
var
	aux:lista;
begin
	clrscr;
	aux:=l;
	while (aux<>nil) do
		begin
			writeln(aux^.dato);
			aux:=aux^.ps;
	end;
	readkey;
end;

{ Programa principal }
var
	p:lista;
    opcion: integer;
begin
	repeat
        clrscr;
		writeln('************************');
		writeln('1. Crear lista (vacia) ');
		writeln('2. Cargar valores');
		writeln('3. Imprimir valores');
		writeln('0. Salir');
		writeln('************************');
		writeln('');
		writeln('Ingrese una opcion');
		readln(opcion);
		case opcion of
			1: crearLista(p);
			2: cargarLista(p);
			3: imprimirLista(p);
		end;
	until (opcion=0)
end.