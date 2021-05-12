nombre = input('Ingrese su nombre:','s');
fechaInicial = input('Ingrese la fecha inicial para el chequeo de temperaturas: ', 'dd/mm/yyyy');
fechaFinal = input('Ingrese la fecha final de el chequeo de temperaturas: ', 'dd/mm/yyyy');
temperaturas = [];
cantidad = input('Ingrese la cantidad de temperaturas a graficar: ');
suma = 0;
for i = 1:cantidad
  fprintf('Ingrese la temperatura %d: ',i)
  temperaturas(i) = input('');
  suma = temperaturas(i) + suma;
end
promedio = suma/cantidad;
fprintf('El promedio de temperaturas es %2.2f\n',promedio);
x = 1:cantidad;
y = temperaturas;
z = [];
for i = 1:cantidad
  z(i) = promedio;
end
plot(x,y,x,z)
axis([1,cantidad,34,40])
fechastr = sprintf('Comportamiento de temperaturas de %s al %s', fechaInicial, fechaFinal);
title(fechastr)
xlabel('Dias')
ylabel('Temperaturas(C°)')
tempstr = sprintf('Temperaturas de %s ',nombre);
legend(tempstr,'Promedio')
