#Actividades
# a) Señales discretas
#   - Representar señales discretas con diferentes valores de f.
#   - Ejemplos:
#     1. Dibuje con Octave las señales x [n]=cos (2p f n+? ) con f=0, f=0.1, f=0.25,
#        f=0.5 c/m con n=[0,19] y con ? = 0 y 90º
#     2. Repita el ejemplo anterior con f= 0.9, f=0.75, f=1.1, f=2 y f=-0.1c/m. ¿Existen
#        diferencias con las señales anteriores?
#     3. Calcule la transformada de Fourier de los ejemplos anteriores
#   - Relación de frecuencias discretas y analógicas. Teorema de muestreo
#   - Ejemplos:
#     1. Crea una señal senoidal para audio con una frecuencia de 500Hz durante 1.5s.
#        Cambie la frecuencia a 1kHz. Escuche el audio sabiendo que la Fs=8kHz.
#        Repita para 7kHz.
# b) Cuantización
#   - Diseñe una función que permita la cuantización de datos de entrada-salida
#        normalizados entre [0,1].
#   - Ejemplos:
#     1. Aplique la cuantización para diferentes niveles en las siguientes imÃ¡genes:
#        - beach.jpg
#        - hojas.jpg
#   - Obtenga una función de cuantización para datos de entrada-salida normalizados
#        entre [-1,1].
#   - Ejemplos
#     1. Aplique la cuantización a una señal de audio y observe el ruido de cuantización
#        para valores bajos y altos de cuantización
# c) Sistemas lineales
#   - Resolución numérica de sistemas discretos lineales e invariantes en el tiempo
#   - Ejemplos con filter() para x[n] = {1,2,-1} , L=4 y c=0.8:
#     1. y[n] = x[n] + c x[n-L]
#     2. y[n] = c y[n-L] + x[n]
#     3. Aplicación a eco y reverberación de 'BuenosDias.wav' y para un td= 1.5s
#   - Respuesta impulsiva h[n] de los sistemas anteriores
#   - Convolución 'conv()'
#   - Ejemplos:
#     1. Eco y reverberación
#     2. Acústica de una habitación
#   - Estudio del algoritmo de Karplus-Strong
#        y [n]=a2
#        y [n-L]+a2
#        y [n-(L+1)]+x [n]
