function[] = raices_complejas(Num_complej,VlrPotencia)
%funcion para hallar la n-iesima raiz de un número complejo
%sin parametros de salida = nombre de la función(numero a analizar, potencia)

fprintf('\n' )
disp('************************raices complejas*****************************')
disp('Wk = modulo ^ (1/VlrPotencia) * (cos(phi) + sen(phi)i )  ,  con phi = ( (Argumento+2kpi)/VlrPotencia )   ,   k= 1,2,3...VlrPotencia-1')
disp('*********************************************************************')
fprintf('\n' )

modulo = abs(Num_complej);                           % calcula el modulo del número complejo
argumento = angle(Num_complej);                      % calcula el argumento del numero complejo
format rat                                          % poner formato en fracciones
argumento_radianes = argumento/pi;                   % argumento en pi radianes
format short                                        %poner formato en decimal corto
raiz_modulo =(modulo)^(1/VlrPotencia);        % eleva al n-esima raiz la raiz cuadrada del modulo
fprintf(' %s %g %s %g %s %g %s\n ' ,'modulo = ',modulo, '.....Agumento = ', argumento', '.....Agumento en radianes = ', argumento_radianes, 'pi' )

%********* codigo para graficar el plno cartesiano *******%
a= [-modulo modulo];                        
b=a-a;
hold on
grid
plot(a,b,'b')
plot(b,a,'b')
xlabel( ' Eje Real ' );
ylabel( ' Eje Imaginario ' );
title( ' GRÁFICA POLOS ' );
%********* codigo para graficar el plno cartesiano *******%

for k = 0 : 1 : VlrPotencia-1                            % ciclo for desde de 1 en 1 hasta potencia
   
    fprintf('\n' )                                       %salto de linea
    fprintf(' %s %g\n ', 'Raiz W #', k )                 % imprime texto
    
    angulo_phi = (argumento + (2*k*pi))/VlrPotencia;
    Parte_real = cos(angulo_phi);                       % calcula la parte real      
    parte_imag = sin(angulo_phi);                       %calcula la parte imaginaria
    
    fprintf(' %s %g  %s %g  %s %g  %s %g\n ', 'phi =  (', argumento, '+ (', 2, '*', k, '*pi) ) /', VlrPotencia  )
    fprintf(' %s %g\n ', 'phi =', angulo_phi )
    fprintf(' %s %g %s %g %s %g %s %g %s\n ' , 'Raiz = (', modulo, '^ (1/', VlrPotencia,') * (cos', angulo_phi, ') + (sen', angulo_phi, ')i )' ) 
    fprintf(' %s %g %s %g %s %g %s\n ' , 'Raiz = ',raiz_modulo,' * ( ', Parte_real, ' + ', parte_imag, 'i )' ) 
  
    result_real = raiz_modulo * Parte_real;
    result_imag = raiz_modulo * parte_imag;
    raiz_modulo * (Parte_real + 1i * parte_imag)
    plot(result_real, result_imag,'k*')
end
   x=-raiz_modulo:0.01:raiz_modulo;                             % -radio;paso;radio
 R = raiz_modulo;                                      %radio de la circuferencia
 y_pos =  sqrt(R^2-x.^2);
 y_neg =  -sqrt(R^2-x.^2);

  plot(x,y_pos,'g')
   plot(x,y_neg,'g')
   axis 'square'
end% fin función
    

