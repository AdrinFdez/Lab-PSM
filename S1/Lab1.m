#Actividades
#
# a)Octave
#   - Entorno, paquetes necesarios
#   - Creaci�n de variables, matrices, acceso, indexaci�n
clc # Limpiar consola
clear a # Se borra la variable a de la consola
clear all # Se borran todas la variables de la consola
close all # Cierra toda las ventanas
; # Para que no se representen los resultados en la ventana de comandos

a = 1;
b = a; #b = 1
#"ans" respuesta sin asignara una variable
c = a + b + 1; #c = 3
c+1; # ans = 4

1:5; # ans = 1 2 3 4 5
1:2:20 # ans = 1 3 5 7 9 11 13 15 17 19
20:-2:1 # ans = 20 18 16 14 12 10 8 6 4 2

#Crear Matriz
A = [ 1 2 ; 3 4] #Matriz 2x2 con separaci�n de filas por ;
B = [ 1; 2; 3; 4] #Matriz 4x1
#Acceder al elemento (a11) de la matriz
A(1,1) # ans = 1
B(4) # ans = 4

A = randn(5,5) #Matriz 5x5 compuesta con n�meros aleatorios
A(end, end) #Devuelve el valor de la matriz situado en la �ltima fila y columna
size(A) # ans = 5 5
A(1:5,1) # Primera columna de la Matriz A
C = A(3:5, 3:4) #Subatriz 3x2 a ra�z de Matriz A
D = (:, 1:2) # Subatriz con todas las filas pero con 2 columnas
B = eye(5) # Matriz Identidad todo a 0 exceptuando la diagonal principal a 1

#   - Operaciones b�sicas
a+b
a*b
a/b
rem(a,b) #Divisi�n entera

A + 1 # Suma 1 a cada elemento de la matriz
A*4 # Multiplica por 4 todos los elementos de la matriz

A+B #Suma de matrices del mismo tama�o
A-B
A*B
A/B #Es igual que A*inv(B)
A.*B #Multiplicaci�n punto a punto de matrices
transpose(ans) #Es igual que ans' , intercambio de fila por columnas
A*A #A al cuadrado
A.^2 #Elevar cada uno de los puntos de A al cuadrado

#   - Funciones, Scripts, Sentencias de control
m = 2
m == 2 # ans = 1 True
m == 3 # ans = 0 False
m >= 3 # ans = 0 False
m <= 3 # ans = 1 True
m ~= 3 # ans = 1 True
m ~= 2 # ans = 0 False

n = -2:2 # n = -2 -1 0 1 2
n(1) # ans = -2
n(end) # ans = 2
n == 2 # ans = 0 0 0 0 1
n ~= 0 # ans = 1 1 0 1 1
n >= -2# ans = 0 1 1 1 1
n>-2 & n<2 # ans = 0 1 1 1 0
n<-1 | n>1 # ans = 1 0 0 0 1

funcion delta # en archivo
delta(0) # ans = 1
delta(n) # Formato columna ans = 0 0 1 0 0


#   - Representaci�n de datos
stem(n,delta(n)) #Gr�gico de los datos que representa en espiga.
                 #Dos argumento, n (eje x) y delta(n) (eje y)
xlabel('n') # Nombrado de eje x en gr�fica
ylabel('delta') #Nombrado de eje y en gr�fica
ylabel('\delta[n]') #Representaci�n con s�mbolo griego


# b) N�meros complejos
a = 1 + i;
b = 2 + 3j; #Octave lo interpreta como b = 2 + 3i
real(b) #ans = 2
imag(b) #ans = 3


#   - M�dulo, fase, representaci�n de complejos
abs(-2)
abs(a) #M�dulo del n�mero complejo en radianes
angle(a) #Fase del n�mero complejo en radianes
# para representar en grados
angle(a)*180/pi

compass(real(a),imag(a)) #representar n�meros complejos

z = r*e^j(teta) = r*cos(teta) + j*r*sen(teta)
z + z' = 2*r*cos(teta) #Se elimina la parte imaginaria

#   - Ejemplos:
#     1. Represente el m�dulo y fase de la secuencia z=rn, donde
#         r= 0.73 +0.53j y n=0..19
r = 0.73 + 0.53*j # r = 0.73 + 0.53*i
n = 0:19
z = r.^n
x = real(z)
y = imag(z)
compass(x, y)
#     2. Repita el apartado anterior para r = 1.05 e^(j*pi/10) y para r =cos (pi/4) + i sen(pi/4)
r1 = 1.05*e^(j*pi/10); #r1 = 1.05*e^(i*pi/10)
z1 = r1.^n;
compass(real(r1),imag(r1))

r2 = cos(pi/4) + i*sin(pi/4);
z2 = r2.^n;
compass(real(r2), imag(r2))


# c) Generaci�n de se�ales y operaciones sobre ellas

#funcion escalon en archivo
stem(n,escalon(n))
stemn(n, escalon(2-n)) # Se�al escalon con operaci�n combinada de inversi�n y desplazamiento temporal




#   - Ejemplos:
#     1. Crea una funci�n que permita implementar la secuencia pulso de longitud L =4
#     2. Repita el apartado anterior, usando L como par�metro de entrada a la funci�n
#     3. Crea una funci�n que permita generar la se�al
#         x = {-1, -1, -1, 1,0.8, 0.6, 0.4, 0.2, 0}
#     4. Representa las siguientes se�ales y determine el elemento y[3]
#         I. y= delta[n-4]
#         II. y=pulso[n-2]
#         III. y=x[3-n]
#         IV. y=x[n+2]
# d) Frecuencia discreta de se�ales senoidales
#   - Crear se�ales discretas de tipo senoidal e identificar frecuencias discretas
#      x[n]=cos (2 pi f n) n=0,1,2, ... N-1
#   - Frecuencia discreta m�xima y alias
#   - Relacionar la frecuencia discreta con la anal�gica y frecuencia de muestreo.
#      f = F
#      Fs
#   - Crear se�ales de audio
#   - Ejemplos:
#     1. Con N = 20, crea y representa se�ales coseno con las siguientes
#        frecuencias: f=0, 0.05, 0.1, 0.25, 0.5, 0.75, 0.9, 0.95, 1, 1.05, 1.1 e
#        identifique los alias
#     2. Repita el apartado anterior con
#        x[n]=cos (2 pi f n + pi/4 ) n=0,1,2, ... N-1 e identifique qu�
#        diferencias hay con respecto al caso apartado anterior
#     3. Se utilizar� un CAD, configurado a una Fs de 1kHz, para muestrear distintas
#        se�ales anal�gicas de entrada. Determina cu�l es la frecuencia discreta en
#        cada caso y cuando se produce aliasing. F= 0, 50Hz, 100Hz, 250Hz, 500Hz,
#        750Hz, 900Hz, 950Hz, 950Hz, 1kHz y 1100Hz.
#     4. Crea una se�al senoidal para audio con una frecuencia de 500Hz durante
#        1.5s. Cambie la frecuencia a 1kHz. Escuche el audio sabiendo que la
#        Fs=8kHz.
