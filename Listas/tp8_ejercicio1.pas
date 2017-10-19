program tp8_ejercicio1;
uses crt;

{
	PROGRAMADOR: Pagani, Walter
	FACULTAD: UTN Facultad Regional La Plata
	
	ENUNCIADO: Se lee una secuencia de números que se almacena en una lista
	encadenada. Además se lee otro número por teclado. Se desea:
	
	a. Determinar cuántas veces aparece ese número en la lista
	b. Eliminarlo si aparece una sola vez, si no existe imprimir un mensaje
	indicando este hecho.

}

type
	
	lista = ^nodo;
	
	nodo = record
		dato: real;
		ps: lista;
	end;

procedure crearLista(var l:lista);
begin
	l:=nil;
end;

procedure imprimirLista(l:lista);
var
	aux:lista;
begin
	clrscr;
	aux:=l;
	while (aux<>nil) do
		begin
			writeln((aux^.dato):4:2);
			aux:=aux^.ps;
	end;
	readkey;
end;

procedure insertarOrdenado(var l:lista; num: integer);
var
	anterior, actual, nuevo: lista;
begin
	anterior:=nil;
	actual:=l;
	new(nuevo);
	nuevo^.dato:=num;
	while((actual<>nil) and (actual^.dato<num)) do
		{ Si no llego al final, y el numero es menor al recibido }
		begin
			anterior:=actual;
			actual:=actual^.ps;
	end;
	if (anterior=nil) then
		{ Significa que el elemento es el primero }
		begin
			nuevo^.ps:=actual;
			l:=nuevo;
		end
	else
		begin
			anterior^.ps:=nuevo;
			nuevo^.ps:=actual;
	end;
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
		insertarOrdenado(l, numero);
		writeln('');
		writeln('Desea ingresar otro numero ( si / no ): ');
		readln(respuesta);
	until (respuesta='no')
end;

function cantidad(l:lista; numero: real): integer;
var
	aux:lista;
	contador: integer;
begin
	aux:=l;
	contador:=0;
	while (aux<>nil) do
		begin
			if (aux^.dato=numero) then
				contador:=contador+1;
		aux:=aux^.ps;
	end;
	cantidad:=contador;
end;

procedure eliminar(var l:lista; numero: integer);
var
	anterior, actual:lista;
begin
	anterior:=nil;
	actual:=l;
	while ((actual<>nil) and (actual^.dato<>numero)) do
		begin
			anterior:=actual;
			actual:=actual^.ps;
		end;
	if (actual<>nil) then
		if (anterior<>nil) then
			anterior^.ps:=actual^.ps
		else
			l:=l^.ps;
	dispose(actual);
end;

procedure contarOcurrencia(var l:lista);
var
	numero: integer;
	contador: integer;
begin
	clrscr;
	writeln('Ingrese el numero a buscar: ');
	readln(numero);
	contador:=cantidad(l, numero);
	writeln('');
	if (contador>0) then
		if (contador=1) then
			begin
				writeln('El numero: ', numero, ' fue encontrado: ', contador, ' veces');
				eliminar(l, numero);
			end
		else
			writeln('El numero: ', numero, ' fue encontrado: ', contador, ' veces')
	else
		writeln('El numero no fue encontrado');
	readkey;
end;

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
		writeln('4. Contar ocurrencia ');
		writeln('0. Salir');
		writeln('************************');
		writeln('');
		writeln('Ingrese una opcion');
		readln(opcion);
		case opcion of
			1: crearLista(p);
			2: cargarLista(p);
			3: imprimirLista(p);
			4: contarOcurrencia(p);
		end;
	until (opcion=0)
end.
