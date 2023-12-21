#Actividades
# a) Se�ales discretas
#   - Representar se�ales discretas con diferentes valores de f.
#   - Ejemplos:
#     1. Dibuje con Octave las se�ales x [n]=cos (2p f n+? ) con f=0, f=0.1, f=0.25,
#        f=0.5 c/m con n=[0,19] y con ? = 0 y 90�
#     2. Repita el ejemplo anterior con f= 0.9, f=0.75, f=1.1, f=2 y f=-0.1c/m. �Existen
#        diferencias con las se�ales anteriores?
#     3. Calcule la transformada de Fourier de los ejemplos anteriores
#   - Relaci�n de frecuencias discretas y anal�gicas. Teorema de muestreo
#   - Ejemplos:
#     1. Crea una se�al senoidal para audio con una frecuencia de 500Hz durante 1.5s.
#        Cambie la frecuencia a 1kHz. Escuche el audio sabiendo que la Fs=8kHz.
#        Repita para 7kHz.
# b) Cuantizaci�n
#   - Dise�e una funci�n que permita la cuantizaci�n de datos de entrada-salida
#        normalizados entre [0,1].
#   - Ejemplos:
#     1. Aplique la cuantizaci�n para diferentes niveles en las siguientes imágenes:
#        - beach.jpg
#        - hojas.jpg
#   - Obtenga una funci�n de cuantizaci�n para datos de entrada-salida normalizados
#        entre [-1,1].
#   - Ejemplos
#     1. Aplique la cuantizaci�n a una se�al de audio y observe el ruido de cuantizaci�n
#        para valores bajos y altos de cuantizaci�n
# c) Sistemas lineales
#   - Resoluci�n num�rica de sistemas discretos lineales e invariantes en el tiempo
#   - Ejemplos con filter() para x[n] = {1,2,-1} , L=4 y c=0.8:
#     1. y[n] = x[n] + c x[n-L]
#     2. y[n] = c y[n-L] + x[n]
#     3. Aplicaci�n a eco y reverberaci�n de 'BuenosDias.wav' y para un td= 1.5s
#   - Respuesta impulsiva h[n] de los sistemas anteriores
#   - Convoluci�n 'conv()'
#   - Ejemplos:
#     1. Eco y reverberaci�n
#     2. Ac�stica de una habitaci�n
#   - Estudio del algoritmo de Karplus-Strong
#        y [n]=a2
#        y [n-L]+a2
#        y [n-(L+1)]+x [n]
