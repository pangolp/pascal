program pareimpar;
uses crt;
type
        vector=array[1..5] of integer;
var
        i,j: integer;
        vp:vector;
        vi:vector;
        contador_ceros, numero, contador_par, contador_impar: integer;
begin
        // inicializo los contadores:
        contador_ceros:=0;
        contador_par:=0;
        contador_impar:=0;
        while ((contador_par<5) and (contador_impar<5)) do
                begin

                        writeln('Ingrese un numero: ');
                        readln(numero);
                        if (numero=0) then
                                contador_ceros:=contador_ceros+1
                        else
                                if ((numero mod 2)=0) then
                                        begin
                                                contador_par:=contador_par+1;
                                                vp[contador_par]:=numero;
                                        end
                                else
                                        begin
                                                contador_impar:=contador_impar+1;
                                                vi[contador_impar]:=numero;
                                        end;
        end;
        clrscr;
        if (contador_par>contador_impar) then
                writeln('El vector de pares se lleno antes')
        else
                writeln('El vector de impares se lleno antes');
        writeln('Cantidad de ceros: ', contador_ceros);
        for i:=1 to 5 do
                writeln(vp[i]);
        for j:=1 to 5 do
                writeln(vi[j]);
        readkey;
end.