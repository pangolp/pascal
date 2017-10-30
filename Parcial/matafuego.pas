program matafuegos;

uses crt;

const
        cantidad = 2;
        { SE PUEDE MODIFICAR LA CANTIDAD PARA EMULAR MENOS }

type { TIPOS ESTRUCTURADOS }

        pedido = record
                codM: integer;
                codP: integer;
                tipoF: string;
                cantidadR: integer;
                porcentajeDescuento: integer;
        end;

        planilla = record
                modelo: string;
                precio: real;
                cantidadR: integer;
                tipoF: string;
                porcentajeDescuento: integer;
                descuento: real;
                precioFinal: real;
        end;

        pedidos = array[1..cantidad] of pedido;
        informe = array[1..cantidad] of planilla;

        precios = array[1..cantidad] of real;
        modelos = array[1..cantidad] of string;

{ INICIO DE PROCEDIMIENTOS Y FUNCIONES }

procedure inicializarPedidos(var vectorPedidos: pedidos);
var
        i:integer;
begin
        clrscr;
        for i:=1 to cantidad do
                begin
                        vectorPedidos[i].codM:=0;
                        vectorPedidos[i].codP:=0;
                        vectorPedidos[i].tipoF:='';
                        vectorPedidos[i].cantidadR:=0;
                        vectorPedidos[i].porcentajeDescuento:=0;
        end; { CIERRA DEL FOR }
end; { CIERRA DEL PROCEDIMIENTO }

procedure cargarPedidos(var vectorPedidos: pedidos);
var
        i: integer;
begin
        for i:=1 to cantidad do
                begin
                        clrscr;
                        writeln('Ingrese el codigo del modelo: ');
                        readln(vectorPedidos[i].codM);
                        writeln('Ingrese el codigo del precio: ');
                        readln(vectorPedidos[i].codP);
                        writeln('Ingrese el tipo de fuego (A - B - C - D): ');
                        readln(vectorPedidos[i].tipoF);
                        writeln('Ingrese la cantidad de recargar: ');
                        readln(vectorPedidos[i].cantidadR);
                        writeln('Ingrese el porcentaje de descuento: ');
                        readln(vectorPedidos[i].porcentajeDescuento);
        end;
end;

procedure imprimirPedidos(vectorPedidos: pedidos);
var
        i: integer;
begin
        clrscr;
        for i:=1 to cantidad do
                begin
                        writeln('Pedido: ', i);
                        writeln('Codigo del modelo: ', vectorPedidos[i].codM);
                        writeln('Codigo del precio: ', vectorPedidos[i].codP);
                        writeln('Tipo de fuego: ', vectorPedidos[i].tipoF);
                        writeln('Cantidad de recargas: ', vectorPedidos[i].cantidadR);
                        writeln('Porcentaje de descuento: ', vectorPedidos[i].porcentajeDescuento);
                        writeln('');
                        readkey;
        end;
end;

procedure cargarPrecios(var vectorPrecios: precios);
var
        i:integer;
begin
        clrscr;
        for i:=1 to cantidad do
                begin
                        writeln('Ingrese el precio del codigo ', i, ' :');
                        readln(vectorPrecios[i]);
                        writeln('');
        end;
end;

procedure cargarModelos(var vectorModelos: modelos);
var
        i:integer;
begin
        clrscr;
        vectorModelos[1]:='Agua y espuma';
        vectorModelos[2]:='Dioxido de carbono';
end;

procedure imprimirPrecios(vectorPrecios: precios);
var
        i:integer;
begin
        clrscr;
        for i:=1 to cantidad do
                begin
                        writeln('Codigo de precio: ', i);
                        writeln('Precio: ', (vectorPrecios[i]):4:2);
                        writeln('');
                        readkey;
        end;
end;

procedure imprimirModelos(vectorModelos: modelos);
var
        i:integer;
begin
        clrscr;
        for i:=1 to cantidad do
                begin
                        writeln('Codigo del modelo: ', i);
                        writeln('Modelo: ', vectorModelos[i]);
                        writeln('');
                        readkey;
        end;
end;

function obtenerPrecio(vectorPrecios: precios; codigoPrecio: integer): real;
var
        i:integer;
begin
        for i:=1 to cantidad do
                if (codigoPrecio=i) then
                        obtenerPrecio:=vectorPrecios[i];
end;

function obtenerModelo(vectorModelos: modelos; codigoModelo: integer): string;
var
        i:integer;
begin
        for i:=1 to cantidad do
                if (codigoModelo=i) then
                        obtenerModelo:=vectorModelos[i];
end;

procedure generarInforme(var vectorInforme: informe; vectorModelos: modelos; vectorPrecios: precios; vectorPedidos: pedidos);
var
        i:integer;
begin
        clrscr;
        for i:=1 to cantidad do
                begin
                        vectorInforme[i].modelo:=obtenerModelo(vectorModelos, vectorPedidos[i].codM);
                        vectorInforme[i].precio:=obtenerPrecio(vectorPrecios, vectorPedidos[i].codP);
                        vectorInforme[i].cantidadR:=vectorPedidos[i].cantidadR;
                        vectorInforme[i].tipoF:=vectorPedidos[i].tipoF;
                        vectorInforme[i].porcentajeDescuento:=vectorPedidos[i].porcentajeDescuento;
                        vectorInforme[i].descuento:=((vectorPedidos[i].porcentajeDescuento*vectorInforme[i].precio))/100;
                        vectorInforme[i].precioFinal:=vectorInforme[i].precio - vectorInforme[i].descuento;
        end;
end;

procedure imprimirInforme(vectorInforme: informe);
var
        i:integer;
begin
        clrscr;
        for i:=1 to cantidad do
                begin
                        writeln('Modelo: ', vectorInforme[i].modelo);
                        writeln('Precio: ', (vectorInforme[i].precio):4:2);
                        writeln('Cantidad recarga: ', vectorInforme[i].cantidadR);
                        writeln('Tipo de fuego: ', vectorInforme[i].tipoF);
                        writeln('Porcentaje de descuento: ', vectorInforme[i].porcentajeDescuento);
                        writeln('Descuento: ', (vectorInforme[i].descuento):4:2);
                        writeln('Precio final: ', (vectorInforme[i].precioFinal):4:2);
                        writeln('');
                        readkey;
        end;
end;

{ FIN DE PROCEDIMIENTOS Y FUNCIONES }

var
        vector_pedidos: pedidos;
        vector_informe: informe;
        vector_precios: precios;
        vector_modelos: modelos;
        respuesta: integer;
begin
        repeat
                clrscr;
                writeln('*************************************');
                writeln('');
                writeln('1. Inicializar pedidos');
                writeln('2. Cargar pedidos');
                writeln('3. Imprimir pedidos');
                writeln('4. Cargar precios');
                writeln('5. Imprimir precios');
                writeln('6. Cargar modelos');
                writeln('7. Imprimir modelos');
                writeln('8. Generar informe');
                writeln('9. Imprimir informe');
                writeln('0. Salir');
                writeln('');
                writeln('*************************************');
                writeln('');
                writeln('ingrese una opcion: ');
                read(respuesta);
                case (respuesta) of
                        1: inicializarPedidos(vector_pedidos);
                        2: cargarPedidos(vector_pedidos);
                        3: imprimirPedidos(vector_pedidos);
                        4: cargarPrecios(vector_precios);
                        5: imprimirPrecios(vector_precios);
                        6: cargarModelos(vector_modelos);
                        7: imprimirModelos(vector_modelos);
                        8: generarInforme(vector_informe, vector_modelos, vector_precios, vector_pedidos);
                        9: imprimirInforme(vector_informe);
                end;
        until respuesta = 0;
end.