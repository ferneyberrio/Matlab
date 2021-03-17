function [Modulo,Argumento,Potencia_Numero] = FormulaMoivre(Num_Complejo,Vpotencia)
% función para aplicar la formula de Moivre potencias en numeros complejos
%variable de salida[modulo,argumento ppl,resultado operacion] = nombreFuncion(parametros de entrad(numero complejo,potencia))

fprintf('\n' )
disp('************************potencia de un numero complejo****************************')
disp('potencia = (modulo^potencia) * ( cos(potencia*Argumento) + sen(potencia*Argumento)i ) ')
disp('**********************************************************************************')
fprintf('\n' )

Modulo = abs(Num_Complejo);                  %saca el modulo del numero complejo
Argumento = angle(Num_Complejo);              %saca el argumento del numero complejo
Preal = cos(Vpotencia*Argumento);             % realiza la operación cos(n*theta)
Pimag = sin(Vpotencia*Argumento);             % realiza la operacion seno(n*theta)
Potencia_Numero = (Modulo^Vpotencia)*(Preal+(1i*Pimag));      % operacion de Moivre

format rat                                             % expresar en formato fraccionario
ArgumentoRadianes = angle(Num_Complejo)/pi;
disp('***********************')
disp(' Argumento en Radianes ')
disp(ArgumentoRadianes)
disp('pi')
disp('***********************')
fprintf('\n' )

format short
fprintf(' %s %g %s %g\n ' ,'modulo = ',Modulo, '.....Agumento = ', Argumento')
fprintf(' %s %g %s %g %s %g %s %g %s %g %s %g  %s\n ' , 'Potencia = (', Modulo, '^', Vpotencia,') * ( cos(', Argumento, '*', Vpotencia, ') + sen(', Argumento, '*', Vpotencia, ') i )' )
fprintf(' %s %g %s %g %s %g %s\n ' , 'Potencia = (', (Modulo^Vpotencia),') * (', Preal, '+', Pimag, 'i )' )
disp('Potencia_Numero = ')
disp(Potencia_Numero)

if(abs(Pimag) < 1e-15)   
   disp(' parte imaginaria es cero')
else 
end
if(abs(Preal) < 1e-15)   
   disp(' parte real es cero')
else 
end
end